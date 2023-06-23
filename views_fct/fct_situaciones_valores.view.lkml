view: fct_situaciones_valores {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_situaciones_valores`
    ;;
    view_label: " Fct Situaciones Valores"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_situaciones_valores s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

  dimension: banca_key {
    type: number
    sql: ${TABLE}.banca_key ;;
  }

  dimension: banco_girado_key {
    type: number
    sql: ${TABLE}.banco_girado_key ;;
  }

  dimension: banco_key {
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: cliente_key {
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: dias_atraso {
    type: number
    sql: ${TABLE}.dias_atraso ;;
  }

  dimension: especie_key {
    type: number
    sql: ${TABLE}.especie_key ;;
  }

  dimension: estado_key {
    type: number
    sql: ${TABLE}.estado_key ;;
  }

  dimension: estado_operacion {
    type: string
    sql: ${TABLE}.estado_operacion ;;
  }

  dimension: fecha_key {
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension_group: fecha_ult_actual {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.fecha_ult_actual ;;
  }

  dimension: firmante_key {
    type: number
    sql: ${TABLE}.firmante_key ;;
  }

  dimension: importe_aforo {
    type: number
    sql: ${TABLE}.importe_aforo ;;
  }

  dimension: importe_comision_rechazo {
    type: number
    sql: ${TABLE}.importe_comision_rechazo ;;
  }

  dimension: importe_gastos {
    type: number
    sql: ${TABLE}.importe_gastos ;;
  }

  dimension: importe_gastos_prorrateados {
    type: number
    sql: ${TABLE}.importe_gastos_prorrateados ;;
  }

  dimension: importe_negociado {
    type: number
    sql: ${TABLE}.importe_negociado ;;
  }

  dimension: importe_nominal {
    type: number
    sql: ${TABLE}.importe_nominal ;;
  }

  dimension: interes_devengado_mes {
    type: number
    sql: ${TABLE}.interes_devengado_mes ;;
  }

  dimension: interes_liquidado {
    type: number
    sql: ${TABLE}.interes_liquidado ;;
  }

  dimension: interes_promedios_documentados {
    type: number
    sql: ${TABLE}.interes_promedios_documentados ;;
  }

  dimension: interes_reliquidacion {
    type: number
    sql: ${TABLE}.interes_reliquidacion ;;
  }

  dimension: mercado_key {
    type: number
    sql: ${TABLE}.mercado_key ;;
  }

  dimension: numero_operacion {
    type: number
    sql: ${TABLE}.numero_operacion ;;
  }

  dimension: numero_operacion_banco {
    type: string
    sql: ${TABLE}.numero_operacion_banco ;;
  }

  dimension: plazo {
    type: number
    sql: ${TABLE}.plazo ;;
  }

  dimension: producto_key {
    type: number
    sql: ${TABLE}.producto_key ;;
  }

  dimension: saldo_contable_capital_por_vencer {
    type: number
    sql: ${TABLE}.saldo_contable_capital_por_vencer ;;
  }

  dimension: saldo_contable_capital_vencido {
    type: number
    sql: ${TABLE}.saldo_contable_capital_vencido ;;
  }

  dimension: saldo_contable_int_por_vencer {
    type: number
    sql: ${TABLE}.saldo_contable_int_por_vencer ;;
  }

  dimension: saldo_operativo_por_vencer {
    type: number
    sql: ${TABLE}.saldo_operativo_por_vencer ;;
  }

  dimension: saldo_operativo_vencido {
    type: number
    sql: ${TABLE}.saldo_operativo_vencido ;;
  }

  dimension: saldo_promedio {
    type: number
    sql: ${TABLE}.saldo_promedio ;;
  }

  dimension: sector_key {
    type: number
    sql: ${TABLE}.sector_key ;;
  }

  dimension: sucursal_destino_key {
    type: number
    sql: ${TABLE}.sucursal_destino_key ;;
  }

  dimension: sucursal_ingreso_key {
    type: number
    sql: ${TABLE}.sucursal_ingreso_key ;;
  }

  dimension: tasa_interes_tem {
    type: number
    sql: ${TABLE}.tasa_interes_tem ;;
  }

  dimension: tipo_comprobante_key {
    type: number
    sql: ${TABLE}.tipo_comprobante_key ;;
  }

  dimension: tna {
    type: number
    sql: ${TABLE}.tna ;;
  }

  dimension: tna_reliq {
    type: number
    sql: ${TABLE}.tna_reliq ;;
  }

  dimension: valor_key {
    type: number
    sql: ${TABLE}.valor_key ;;
  }

  dimension: vigente {
    type: string
    sql: ${TABLE}.vigente ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
