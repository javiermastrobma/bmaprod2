view: lkp_valores {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_valores`
    ;;
  view_label: "Datos CHEQUES"

  dimension: banca_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banca_key ;;
  }

  dimension: banco_corresponsal_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_corresponsal_key ;;
  }

  dimension: banco_girado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_girado_key ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension_group: confirma_baja {
    group_label: "Valores"
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
    sql: ${TABLE}.confirma_baja ;;
  }

  dimension: cuenta_desembolso_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_desembolso_key ;;
  }

  dimension: cuenta_valor {
    group_label: "Valores"
    type: string
    sql: ${TABLE}.cuenta_valor ;;
  }

  dimension: especie_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_key ;;
  }

  dimension: estado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_key ;;
  }

  dimension: estado_operacion {
    group_label: "Valores"
    type: string
    sql: ${TABLE}.estado_operacion ;;
  }

  dimension_group: fecha_acreditacion {
    group_label: "Valores"
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
    sql: ${TABLE}.fecha_acreditacion ;;
  }

  dimension_group: fecha_acreditacion_estimada {
    group_label: "Valores"
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
    sql: ${TABLE}.fecha_acreditacion_estimada ;;
  }

  dimension_group: fecha_cierre {
    group_label: "Valores"
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
    sql: ${TABLE}.fecha_cierre ;;
  }

  dimension_group: fecha_cobro_rechazo {
    group_label: "Valores"
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
    sql: ${TABLE}.fecha_cobro_rechazo ;;
  }

  dimension_group: fecha_del_valor {
    group_label: "Valores"
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
    sql: ${TABLE}.fecha_del_valor ;;
  }

  dimension_group: fecha_deposito {
    group_label: "Valores"
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
    sql: ${TABLE}.fecha_deposito ;;
  }

  dimension_group: fecha_estado {
    group_label: "Valores"
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
    sql: ${TABLE}.fecha_estado ;;
  }

  dimension_group: fecha_liquidacion {
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
    sql: ${TABLE}.fecha_liquidacion ;;
  }

  dimension_group: fecha_rechazo {
    group_label: "Valores"
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
    sql: ${TABLE}.fecha_rechazo ;;
  }

  dimension_group: fecha_reliquidacion {
    group_label: "Valores"
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
    sql: ${TABLE}.fecha_reliquidacion ;;
  }

  dimension_group: fecha_rescate {
    group_label: "Valores"
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
    sql: ${TABLE}.fecha_rescate ;;
  }

  dimension: firmante_key {
    hidden: yes
    type: number
    sql: ${TABLE}.firmante_key ;;
  }

  dimension: importe_aforo {
    group_label: "Valores"
    type: number
    sql: ${TABLE}.importe_aforo ;;
  }

  dimension: importe_comision {
    group_label: "Valores"
    type: number
    sql: ${TABLE}.importe_comision ;;
  }

  dimension: importe_comision_rechazo {
    group_label: "Valores"
    type: number
    sql: ${TABLE}.importe_comision_rechazo ;;
  }

  dimension: importe_comision_rescate {
    group_label: "Valores"
    type: number
    sql: ${TABLE}.importe_comision_rescate ;;
  }

  dimension: importe_gastos {
    group_label: "Valores"
    type: number
    sql: ${TABLE}.importe_gastos ;;
  }

  dimension: importe_gastos_prorrateados {
    group_label: "Valores"
    type: number
    sql: ${TABLE}.importe_gastos_prorrateados ;;
  }

  dimension: importe_negociado {
    group_label: "Valores"
    type: number
    sql: ${TABLE}.importe_negociado ;;
  }

  dimension: importe_nominal {
    group_label: "Valores"
    type: number
    sql: ${TABLE}.importe_nominal ;;
  }

  dimension: interes_liquidado {
    group_label: "Valores"
    type: number
    sql: ${TABLE}.interes_liquidado ;;
  }

  dimension: interes_reliquidacion {
    group_label: "Valores"
    type: number
    sql: ${TABLE}.interes_reliquidacion ;;
  }

  dimension: marca_echeq {
    group_label: "Valores"
    type: string
    sql: ${TABLE}.marca_echeq ;;
  }

  dimension: mercado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.mercado_key ;;
  }

  dimension: motivo_rechazo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.motivo_rechazo_key ;;
  }

  dimension: motivo_rescate_key {
    hidden: yes
    type: number
    sql: ${TABLE}.motivo_rescate_key ;;
  }

  dimension: numero_operacion {
    group_label: "Valores"
    type: number
    sql: ${TABLE}.numero_operacion ;;
  }

  dimension: numero_operacion_banco {
    group_label: "Valores"
    type: string
    sql: ${TABLE}.numero_operacion_banco ;;
  }

  dimension: numero_valor {
    group_label: "Valores"
    type: string
    sql: ${TABLE}.numero_valor ;;
  }

  dimension: oficial_cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_cliente_key ;;
  }

  dimension: orden_valor {
    group_label: "Valores"
    type: string
    sql: ${TABLE}.orden_valor ;;
  }

  dimension: plazo {
    group_label: "Valores"
    type: number
    sql: ${TABLE}.plazo ;;
  }

  dimension: producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_key ;;
  }

  dimension: recurso {
    group_label: "Valores"
    type: string
    sql: ${TABLE}.recurso ;;
  }

  dimension: sector_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sector_key ;;
  }

  dimension: sucursal_desembolso_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_desembolso_key ;;
  }

  dimension: sucursal_destino_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_destino_key ;;
  }

  dimension: sucursal_ingreso_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_ingreso_key ;;
  }

  dimension: sucursal_valor {
    group_label: "Valores"
    type: number
    sql: ${TABLE}.sucursal_valor ;;
  }

  dimension: tipo_comprobante_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_comprobante_key ;;
  }

  dimension: tna {
    group_label: "Valores"
    type: number
    sql: ${TABLE}.tna ;;
  }

  dimension: tna_reliquidacion {
    group_label: "Valores"
    type: number
    sql: ${TABLE}.tna_reliquidacion ;;
  }

  dimension: valor_key {
    hidden: yes
    type: number
    sql: ${TABLE}.valor_key ;;
  }

  dimension: vigente {
    group_label: "Valores"
    type: string
    sql: ${TABLE}.vigente ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
