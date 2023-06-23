view: cross_sell_empleador {
  derived_table: {
    sql: SELECT
      a.periodo,
      a.fecha_key,
      a.codigo_cliente,
      a.nombre,
      a.codigo_cliente_empleador,
      a.nombre_empleador,
      a.tipo_ps,
      a.oficial_cuenta,
      a.banca,
      a.segmento,
      a.division,
      a.region,
      a.sucursal_source,
      a.sucursal,
      a.cantidad_empleadores,
      a.acreditacion_total_mes,
      CASE   WHEN a.acreditacion_total_mes >=700 and a.acreditacion_total_mes <2000 then '1) 700-1.999'
        WHEN a.acreditacion_total_mes >=2000 and a.acreditacion_total_mes <20000 then '2) 2.000-19.999'
        WHEN a.acreditacion_total_mes >=20000 and a.acreditacion_total_mes <30000 then '3) 20.001-29.999'
        WHEN a.acreditacion_total_mes >=30000 and a.acreditacion_total_mes <50000 then '4) 30.001-49.999'
        WHEN a.acreditacion_total_mes >=50000 and a.acreditacion_total_mes <80000 then '5) 50.001-79.999'
        else '6) 80.000 o más' end as rango_salarial,
      b.ca_monoproducto,
      b.plazo_fijo,
      b.prestamos_personales,
      b.macrocuenta,
      b.acuerdo,
      b.macroadelanto,
      b.seguros,
      b.tc_visa,
      b.tc_master,
      b.tc_amex,
      b.tc_makro,
      b.cuenta_corriente,
      b.caja_seguridad,
      b.otros_prestamos,
      b.tc,
      b.indice_cross_sell,
      b.cross_sell_manual,
      b.cross_sell_basico,

      CONCAT(CAST(a.codigo_cliente_empleador as STRING), ' - ', a.nombre_empleador) as Cliente_Empleador
      FROM

      (SELECT distinct
      g.periodo,
      a.fecha_key,
      c.cliente_capita_key as cliente_key,
      cc2.codigo_cliente,
      cc2.nombre,
      ban2.segmento as segmento_capita,
      ban2.banca as banca_capita,
      cc.codigo_cliente as codigo_cliente_empleador,
      cc.nombre as nombre_empleador,
      ban.segmento,
      ban.banca,
      sr.division,
      sr.region,
      sr.sucursal_source,
      sr.sucursal,
      oc.oficial_cuenta,
      CASE WHEN ban.segmento like '%Estado%' then 'PÚBLICO' else 'PRIVADO' end as tipo_ps,
      cast(sum(a.cantidad_capitas) as INT) as cantidad_empleadores,
      sum(a.acreditacion_total_mes) as acreditacion_total_mes
      FROM fct_situaciones_indicadores_plan_sueldos a
      INNER JOIN fct_situaciones_estados_capita_ps cps ON a.capita_key = cps.capita_key AND a.fecha_key = cps.fecha_key
      INNER JOIN lkp_estados_ps b ON cps.estado_monitor_ps_key = b.estado_monitor_ps_key
      INNER JOIN lkp_capitas_plan_sueldo c ON a.capita_key = c.capita_key
      INNER JOIN lkp_fechas g ON a.fecha_key = g.fecha_key
      INNER JOIN lkp_clientes_completa cc ON c.cliente_convenio_key = cc.cliente_key
      INNER JOIN lkp_clientes_completa cc2 ON c.cliente_capita_key = cc2.cliente_key
      INNER JOIN lkp_bancas ban ON cc.banca_comite_key = ban.banca_key
      INNER JOIN lkp_bancas ban2 ON cc2.banca_comite_key = ban2.banca_key
      INNER JOIN lkp_sucursales_cuenta sr ON cc.sucursal_radicacion_key = sr.sucursal_cuenta_key
      INNER JOIN lkp_sucursales_cuenta src ON cc2.sucursal_radicacion_key = src.sucursal_cuenta_key
      LEFT JOIN lkp_oficiales_cuenta oc ON cc.oficial_cuenta_key = oc.oficial_cuenta_key
      WHERE g.periodo >= "2021-01" and b.estado_monitor_ps in ('Activa','Activacion_Mes')
      GROUP BY
      g.periodo,
      a.fecha_key,
      c.cliente_capita_key,
      cc2.codigo_cliente,
      cc2.nombre,
      ban2.segmento,
      ban2.banca,
      ban.segmento,
      cc.codigo_cliente,
      cc.nombre,
      ban.banca,
      sr.division,
      sr.region,
      sr.sucursal_source,
      sr.sucursal,
      oc.oficial_cuenta,
      tipo_ps
      ) a

      LEFT JOIN

      (SELECT
      f.periodo,
      spf.fecha_key,
      spf.cliente_key,
      mp.caja_ahorro as ca_monoproducto,
      mp.plazo_fijo,
      mp.prestamos_personales,
      mp.macrocuenta,
      mp.acuerdo,
      mp.macroadelanto,
      mp.seguros,
      mp.tc_visa,
      mp.tc_master,
      mp.tc_amex,
      mp.tc_makro,
      mp.cuenta_corriente,
      mp.caja_seguridad,
      mp.otros_prestamos,
      CASE WHEN (mp.tc_visa = 1 or mp.tc_master = 1 or mp.tc_amex = 1 or mp.tc_makro = 1) then 1 else 0 end as tc,
      spf.indice_cross_sell,
      (CASE WHEN (mp.tc_visa = 1 or mp.tc_master = 1 or mp.tc_amex = 1 or mp.tc_makro = 1) THEN 1 ELSE 0 END + mp.macrocuenta + mp.prestamos_personales) as Cross_Sell_Basico,
      (mp.tc_visa + mp.tc_master + mp.tc_amex + mp.tc_makro + mp.caja_ahorro +mp.cuenta_corriente+ mp.caja_seguridad + mp.plazo_fijo + mp.prestamos_personales + mp.macrocuenta + mp.acuerdo + mp.seguros+ mp.macroadelanto+ mp.otros_prestamos) as Cross_Sell_Manual
      FROM fct_situaciones_personas_fisicas spf
      INNER JOIN lkp_fechas f ON spf.fecha_key=f.fecha_key
      INNER JOIN lkp_mezcla_productos mp ON spf.mezcla_productos_key=mp.mezcla_productos_key
      INNER JOIN lkp_clientes_completa cc ON spf.cliente_key=cc.cliente_key
      WHERE f.periodo >= "2021-01") b  ON a.cliente_key=b.cliente_key and a.fecha_key = b.fecha_key
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  filter: fecha_maxima {
    sql: ${fecha_key} = (SELECT MAX(f.fecha_key) FROM cross_sell_empleador cse
      LEFT JOIN lkp_fechas f ON cse.fecha_key = f.fecha_key) ;;
  }

  dimension: periodo {
    type: string
    sql: ${TABLE}.periodo ;;
  }
  dimension: fecha_key {
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: codigo_cliente {
    type: number
    sql: ${TABLE}.codigo_cliente ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }

  dimension: codigo_cliente_empleador {
    type: number
    sql: ${TABLE}.codigo_cliente_empleador ;;
  }

  dimension: nombre_empleador {
    type: string
    sql: ${TABLE}.nombre_empleador ;;
  }

  dimension: tipo_ps {
    type: string
    sql: ${TABLE}.tipo_ps ;;
  }

  dimension: oficial_cuenta {
    type: string
    sql: ${TABLE}.oficial_cuenta ;;
  }

  dimension: banca {
    type: string
    sql: ${TABLE}.banca ;;
  }

  dimension: segmento {
    type: string
    sql: ${TABLE}.segmento ;;
  }

  dimension: division {
    type: string
    sql: ${TABLE}.division ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: sucursal_source {
    type: number
    sql: ${TABLE}.sucursal_source ;;
  }

  dimension: sucursal {
    type: string
    sql: ${TABLE}.sucursal ;;
  }

  dimension: cantidad_empleadores {
    type: number
    sql: ${TABLE}.cantidad_empleadores ;;
  }

  dimension: acreditacion_total_mes {
    type: number
    sql: ${TABLE}.acreditacion_total_mes ;;
  }

  dimension: rango_salarial {
    type: string
    sql: ${TABLE}.rango_salarial ;;
  }

  dimension: ca_monoproducto {
    type: number
    sql: ${TABLE}.ca_monoproducto ;;
  }

  dimension: plazo_fijo {
    type: number
    sql: ${TABLE}.plazo_fijo ;;
  }

  dimension: prestamos_personales {
    type: number
    sql: ${TABLE}.prestamos_personales ;;
  }

  dimension: macrocuenta {
    type: number
    sql: ${TABLE}.macrocuenta ;;
  }

  dimension: acuerdo {
    type: number
    sql: ${TABLE}.acuerdo ;;
  }

  dimension: macroadelanto {
    type: number
    sql: ${TABLE}.macroadelanto ;;
  }

  dimension: seguros {
    type: number
    sql: ${TABLE}.seguros ;;
  }

  dimension: tc_visa {
    type: number
    sql: ${TABLE}.tc_visa ;;
  }

  dimension: tc_master {
    type: number
    sql: ${TABLE}.tc_master ;;
  }

  dimension: tc_amex {
    type: number
    sql: ${TABLE}.tc_amex ;;
  }

  dimension: tc_makro {
    type: number
    sql: ${TABLE}.tc_makro ;;
  }

  dimension: cuenta_corriente {
    type: number
    sql: ${TABLE}.cuenta_corriente ;;
  }

  dimension: caja_seguridad {
    type: number
    sql: ${TABLE}.caja_seguridad ;;
  }

  dimension: otros_prestamos {
    type: number
    sql: ${TABLE}.otros_prestamos ;;
  }

  dimension: tc {
    type: number
    sql: ${TABLE}.tc ;;
  }

  dimension: indice_cross_sell {
    type: number
    sql: ${TABLE}.indice_cross_sell ;;
  }

  dimension: cross_sell_manual {
    type: number
    sql: ${TABLE}.cross_sell_manual ;;
  }

  dimension: cross_sell_basico {
    type: number
    sql: ${TABLE}.cross_sell_basico ;;
  }

  dimension: cliente_empleador {
    type: string
    sql: ${TABLE}.Cliente_Empleador ;;
  }

  set: detail {
    fields: [
      periodo,
      codigo_cliente,
      nombre,
      codigo_cliente_empleador,
      nombre_empleador,
      tipo_ps,
      oficial_cuenta,
      banca,
      segmento,
      division,
      region,
      sucursal_source,
      sucursal,
      cantidad_empleadores,
      acreditacion_total_mes,
      rango_salarial,
      ca_monoproducto,
      plazo_fijo,
      prestamos_personales,
      macrocuenta,
      acuerdo,
      macroadelanto,
      seguros,
      tc_visa,
      tc_master,
      tc_amex,
      tc_makro,
      cuenta_corriente,
      caja_seguridad,
      otros_prestamos,
      tc,
      indice_cross_sell,
      cross_sell_manual,
      cross_sell_basico,
      cliente_empleador
    ]
  }
}
