view: acreditaciones_convenio {
  derived_table: {
    sql: select
      distinct
      division,
      region,
      CONCAT(sucursal_source, ' - ', sucursal) sucursal,
      CONCAT(oficial_source, '-', oficial_cuenta) oficial_cuenta,
      cliente_convenio_key,
      cli.codigo_cliente cod_empleador,
      cli.nombre empleador,
      ban.banca banca,
      case when segmento like '%Estado%' then 'PS Publico' else 'PS Privado' end tipo_ps,
      cli.centralizado,
      cliente_capita_key,
      cli2.codigo_cliente cod_capita,
      cli2.nombre capita,
      trxs.concepto_transaccion,
      trxs.fecha,
      trxs.periodo,
      sum(monto_total_acreditaciones) monto_total_acreditaciones,
      sum(q_acreditaciones) q_Acreditaciones
      from    fct_situaciones_indicadores_plan_sueldos sit
          INNER JOIN    fct_situaciones_estados_capita_ps cps ON sit.capita_key = cps.capita_key AND sit.fecha_key = cps.fecha_key
          INNER JOIN    lkp_estados_ps est     on cps.estado_monitor_ps_key = est.estado_monitor_ps_key
          INNER JOIN    lkp_capitas_plan_sueldo cap     on sit.capita_key = cap.capita_key
          INNER JOIN    lkp_clientes_completa cli    on cap.cliente_convenio_key = cli.cliente_key
          INNER JOIN    lkp_fechas f        on sit.fecha_key = f.fecha_key
          INNER JOIN    lkp_clientes_completa cli2    on cap.cliente_capita_key = cli2.cliente_key
          INNER JOIN    lkp_bancas ban   on cli.banca_comite_key = ban.banca_key
          INNER JOIN    lkp_oficiales_cuenta ofi    on cli.oficial_cuenta_key = ofi.oficial_cuenta_key
          INNER JOIN    lkp_sucursales_cuenta suc ON sit.sucursal_oficial_key = suc.sucursal_cuenta_key
          INNER JOIN
      (select    a13.cliente_key, concepto_transaccion, fecha,periodo, sum(a11.importe_transaccion_mn)  monto_total_acreditaciones,
      sum(a11.cantidad_transacciones)  q_acreditaciones
      from    fct_transacciones    a11
          join    lkp_causales   a12      on     (a11.causal_key = a12.causal_key)
          join    lkp_cuentas    a13      on     (a11.cuenta_key = a13.cuenta_key)
          join    lkp_tipos_transferencia    a14      on     (a11.tipo_transferencia_key = a14.tipo_transferencia_key)
          join    lkp_fechas    a15      on     (a11.fecha_key = a15.fecha_key)
      where    (a11.debito_credito = 'C'
       and a11.flag_reversa <> "9"
       and (a12.causal in (303, 1001, 1004, 1304, 1501, 1780, 1783, 1935, 2028)
       or (a12.causal = 1444
       and a14.tipo_transferencia in ('Sueldos')))
       and a15.fecha >= '2021-06-01')
      group by    a13.cliente_Key, concepto_Transaccion, fecha, periodo
      ) trxs on trxs.cliente_key = cap.cliente_capita_key
      where    (estado_Monitor_ps in ('Activa', 'Activacion_Mes')
       and sit.fecha_key = (select max(fecha_key) from fct_situaciones_indicadores_plan_sueldos))
      group by
      cliente_convenio_key,
      division,
      region,
      sucursal_source,
      sucursal,
      oficial_source,
      oficial_cuenta,
      cli.codigo_cliente,
      cli.nombre,
      cli.centralizado,
      banca,
      tipo_ps,
      cliente_capita_key,
      cli2.codigo_cliente,
      cli2.nombre,
      trxs.concepto_transaccion,
      trxs.fecha,
      trxs.periodo
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: cliente_convenio_key {
    type: number
    sql: ${TABLE}.cliente_convenio_key ;;
  }

  dimension: division {
    type: string
    sql: ${TABLE}.division ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: sucursal {
    type: string
    sql: ${TABLE}.sucursal ;;
  }

  dimension: oficial_cuenta {
    type: string
    sql: ${TABLE}.oficial_cuenta ;;
  }

  dimension: cod_empleador {
    type: number
    sql: ${TABLE}.cod_empleador ;;
  }

  dimension: empleador {
    type: string
    sql: ${TABLE}.empleador ;;
  }

  dimension: codigo_empleador_nombre {
    type: string
    sql: CONCAT(${cod_empleador}, " - ", ${empleador}) ;;
    html: <p style="color:#ffffff; background-color: #003057; font-size:100%; text-align:center">{{value}}</p> ;;
  }

  dimension: centralizado {
    type: string
    sql: ${TABLE}.centralizado ;;
  }

  dimension: banca {
    type: string
    sql: ${TABLE}.banca ;;
  }

  dimension: tipo_ps {
    type: string
    sql: ${TABLE}.tipo_ps ;;
  }

  dimension: cod_capita {
    type: number
    sql: ${TABLE}.cod_capita ;;
  }

  dimension: capita {
    type: string
    sql: ${TABLE}.capita ;;
  }

  dimension: concepto_transaccion {
    type: string
    sql: ${TABLE}.concepto_transaccion ;;
  }

  dimension_group: fecha {
    type: time
    datatype: datetime
    sql: ${TABLE}.fecha ;;
  }

  dimension: periodo {
    type: string
    sql: ${TABLE}.periodo ;;
  }

  dimension: monto_total_acreditaciones {
    type: number
    sql: ${TABLE}.monto_total_acreditaciones ;;
  }

  dimension: q_acreditaciones {
    type: number
    sql: ${TABLE}.q_acreditaciones ;;
  }

  measure: sum_monto_total_acreditaciones {
    type: sum
    sql: ${monto_total_acreditaciones} ;;
  }

  measure: sum_q_acreditaciones {
    type: sum
    sql: ${q_acreditaciones} ;;
  }

  set: detail {
    fields: [
      division,
      region,
      sucursal,
      oficial_cuenta,
      cod_empleador,
      empleador,
      centralizado,
      banca,
      tipo_ps,
      cod_capita,
      capita,
      concepto_transaccion,
      fecha_time,
      periodo,
      monto_total_acreditaciones,
      q_acreditaciones
    ]
  }
}
