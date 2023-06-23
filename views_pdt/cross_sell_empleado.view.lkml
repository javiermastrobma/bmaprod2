view: cross_sell_empleado {
  derived_table: {
    sql: SELECT
      distinct A.periodo,
      A.codigo_cliente,
      A.codigo_cliente_empleador,
      A.fecha_key,
      A.nombre,
      A.tipo_ps,
      A.oficial_cuenta,
      A.banca,
      A.segmento,
      A.division,
      A.region,
      A.sucursal_source,
      A.sucursal,
      A.div_oficial_capita,
      A.reg_oficial_capita,
      A.cod_suc_oficial_capita,
      A.suc_oficial_capita,
      A.oficial_capita,
      B.ca_monoproducto,
      B.plazo_fijo,
      B.prestamos_personales,
      B.macrocuenta,
      B.acuerdo,
      B.macroadelanto,
      B.seguros,
      B.tc_visa,
      B.tc_master,
      B.tc_amex,
      B.tc_makro,
      B.cuenta_corriente,
      B.caja_seguridad,
      B.otros_prestamos,
      B.tc,
      B.indice_cross_sell,
      B.cross_sell_manual,
      B.cross_sell_basico,
      SUM(A.acreditacion_total_mes) acreditacion_total_mes,
      SUM(A.cantidad_empleadores) cantidad_empleadores
      FROM
            (SELECT
            distinct g.periodo,
            a.fecha_key,
            c.cliente_capita_key cliente_key,
            cc2.codigo_cliente,
            cc2.nombre,
            ban2.segmento segmento_capita,
            ban2.banca banca_capita,
            cc.codigo_cliente codigo_cliente_empleador,
            cc.nombre nombre_empleador,
            ban.segmento,
            ban.banca,
            sr.division,
            sr.region,
            sr.sucursal_source,
            sr.sucursal,
            oc.oficial_cuenta,
            src.division div_oficial_capita,
            src.region reg_oficial_capita,
            src.sucursal_source cod_suc_oficial_capita,
            src.sucursal suc_oficial_capita,
            occ.oficial_cuenta oficial_capita,
            CASE WHEN ban.segmento like "%Estado%" THEN "PÚBLICO" ELSE "PRIVADO" END as tipo_ps,
            CAST(SUM(a.cantidad_capitas) as INT) as cantidad_empleadores,
            SUM(a.acreditacion_total_mes) as acreditacion_total_mes
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
            LEFT JOIN lkp_oficiales_cuenta occ ON cc2.oficial_cuenta_key = occ.oficial_cuenta_key
            WHERE g.periodo >= "2021-01" AND b.estado_monitor_ps in ("Activa", "Activacion_Mes")
            GROUP BY
            g.periodo,
            a.fecha_key,
            c.cliente_capita_key,
            cc2.codigo_cliente,
            cc2.nombre,
            ban2.segmento,
            ban2.banca,
            cc.codigo_cliente,
            cc.nombre,
            ban.segmento,
            ban.banca,
            sr.division,
            sr.region,
            sr.sucursal_source,
            sr.sucursal,
            oc.oficial_cuenta,
            src.division,
            src.region,
            src.sucursal_source,
            src.sucursal,
            occ.oficial_cuenta,
            tipo_ps) A
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
            CASE WHEN (mp.tc_visa = 1 or mp.tc_master = 1 or mp.tc_amex = 1 or mp.tc_makro = 1) THEN 1 ELSE 0 END as tc,
            spf.indice_cross_sell,
            (CASE WHEN (mp.tc_visa = 1 or mp.tc_master = 1 or mp.tc_amex = 1 or mp.tc_makro = 1) THEN 1 ELSE 0 END + mp.macrocuenta + mp.prestamos_personales) as Cross_Sell_Basico,
            (mp.tc_visa + mp.tc_master + mp.tc_amex + mp.tc_makro + mp.caja_ahorro +mp.cuenta_corriente+ mp.caja_seguridad + mp.plazo_fijo + mp.prestamos_personales + mp.macrocuenta + mp.acuerdo + mp.Seguros+ mp.Macroadelanto+ mp.Otros_Prestamos) as Cross_Sell_Manual
            FROM fct_situaciones_personas_fisicas spf
            INNER JOIN lkp_fechas f ON spf.fecha_key = f.fecha_key
            INNER JOIN lkp_mezcla_productos mp ON spf.mezcla_productos_key = mp.mezcla_productos_key
            INNER JOIN lkp_clientes_completa cc ON spf.cliente_key = cc.cliente_key
            WHERE f.periodo >= "2021-01") B ON A.cliente_key = B.cliente_key AND A.fecha_key = B.fecha_key
      GROUP BY
      A.periodo,
      A.codigo_cliente,
      A.codigo_cliente_empleador,
      A.fecha_key,
      A.nombre,
      A.tipo_ps,
      A.oficial_cuenta,
      A.banca,
      A.segmento,
      A.division,
      A.region,
      A.sucursal_source,
      A.sucursal,
      A.div_oficial_capita,
      A.reg_oficial_capita,
      A.cod_suc_oficial_capita,
      A.suc_oficial_capita,
      A.oficial_capita,
      B.ca_monoproducto,
      B.plazo_fijo,
      B.prestamos_personales,
      B.macrocuenta,
      B.acuerdo,
      B.macroadelanto,
      B.seguros,
      B.tc_visa,
      B.tc_master,
      B.tc_amex,
      B.tc_makro,
      B.cuenta_corriente,
      B.caja_seguridad,
      B.otros_prestamos,
      B.tc,
      B.indice_cross_sell,
      B.cross_sell_manual,
      B.cross_sell_basico
       ;;
  }

  # filter: fecha_maxima {
  #  sql: ${fecha_key} = (SELECT MAX(f.fecha_key) FROM cross_sell_empleado cse
  #      LEFT JOIN lkp_fechas f ON cse.fecha_key = f.fecha_key) ;;}

  dimension: periodo {
    type: string
    sql: ${TABLE}.periodo ;;
  }

  dimension: codigo_cliente {
    type: number
    sql: ${TABLE}.codigo_cliente ;;
  }

  dimension: codigo_cliente_empleador {
    type: number
    sql: ${TABLE}.codigo_cliente_empleador ;;
  }

  dimension: fecha_key {
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
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

  dimension: div_oficial_capita {
    type: string
    sql: ${TABLE}.div_oficial_capita ;;
  }

  dimension: reg_oficial_capita {
    type: string
    sql: ${TABLE}.reg_oficial_capita ;;
  }

  dimension: cod_suc_oficial_capita {
    type: number
    sql: ${TABLE}.cod_suc_oficial_capita ;;
  }

  dimension: suc_oficial_capita {
    type: string
    sql: ${TABLE}.suc_oficial_capita ;;
  }

  dimension: oficial_capita {
    type: string
    sql: ${TABLE}.oficial_capita ;;
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

  dimension: acreditacion_total_mes {
    type: number
    sql: ${TABLE}.acreditacion_total_mes ;;
  }

  dimension: cantidad_empleadores {
    type: number
    sql: ${TABLE}.cantidad_empleadores ;;
  }

  measure: count {
    type: count
  }

  measure: sum_cross_sell_basico {
    type: sum
    sql: ${cross_sell_basico} ;;
    value_format_name: decimal_2
  }

  measure: sum_cross_sell_manual {
    type: sum
    sql: ${cross_sell_manual} ;;
    value_format_name: decimal_2
  }

  measure: sum_indice_cross_sell {
    type: sum
    sql: ${indice_cross_sell} ;;
  }

}
