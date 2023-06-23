view: fct_ordenes_pago_proveedores {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_ordenes_pago_proveedores`
    ;;
  view_label: " Fct Ordenes Pago Proveedores"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_ultima_actualizacion_key} = (SELECT MAX(f.fecha_ultima_actualizacion_key) FROM fct_ordenes_pago_proveedores s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

dimension: banco_acreditacion_key {
  hidden: yes
  type: number
  sql: ${TABLE}.banco_acreditacion_key ;;
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

dimension: convenio_key {
  hidden: yes
  type: number
  sql: ${TABLE}.convenio_key ;;
}

dimension: cuenta_acreditacion_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cuenta_acreditacion_key ;;
}

dimension: cuenta_acreditacion_source {
  type: string
  sql: ${TABLE}.cuenta_acreditacion_source ;;
}

dimension: cuenta_debito_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cuenta_debito_key ;;
}

dimension: estado_orden_pago_key {
  hidden: yes
  type: number
  sql: ${TABLE}.estado_orden_pago_key ;;
}

dimension_group: fecha_autorizacion {
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
  sql: ${TABLE}.fecha_autorizacion ;;
}

dimension_group: fecha_baja_banco {
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
  sql: ${TABLE}.fecha_baja_banco ;;
}

dimension_group: fecha_efectivizacion {
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
  sql: ${TABLE}.fecha_efectivizacion ;;
}

dimension_group: fecha_emision_cheque {
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
  sql: ${TABLE}.fecha_emision_cheque ;;
}

dimension_group: fecha_entrega_cheque {
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
  sql: ${TABLE}.fecha_entrega_cheque ;;
}

dimension_group: fecha_pago {
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
  sql: ${TABLE}.fecha_pago ;;
}

dimension_group: fecha_pago_diferido {
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
  sql: ${TABLE}.fecha_pago_diferido ;;
}

dimension_group: fecha_rechazo {
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

dimension: fecha_ultima_actualizacion_key {
  type: number
  sql: ${TABLE}.fecha_ultima_actualizacion_key ;;
}

dimension_group: fecha_vencimiento_cheque {
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
  sql: ${TABLE}.fecha_vencimiento_cheque ;;
}

dimension: flag_autorizacion {
  type: number
  sql: ${TABLE}.flag_autorizacion ;;
}

dimension: flag_baja_banco {
  type: number
  sql: ${TABLE}.flag_baja_banco ;;
}

dimension: flag_efectivizacion {
  type: number
  sql: ${TABLE}.flag_efectivizacion ;;
}

dimension: flag_emision_cheque {
  type: number
  sql: ${TABLE}.flag_emision_cheque ;;
}

dimension: flag_entrega_cheque {
  type: number
  sql: ${TABLE}.flag_entrega_cheque ;;
}

dimension: flag_rechazo {
  type: number
  sql: ${TABLE}.flag_rechazo ;;
}

dimension: flag_vencimiento_cheque {
  type: number
  sql: ${TABLE}.flag_vencimiento_cheque ;;
}

dimension: marca_emision_comprobante {
  type: string
  sql: ${TABLE}.marca_emision_comprobante ;;
}

dimension: modalidad_pago_key {
  hidden: yes
  type: number
  sql: ${TABLE}.modalidad_pago_key ;;
}

dimension: monto_pagado {
  type: number
  sql: ${TABLE}.monto_pagado ;;
}

dimension: numero_cheque {
  type: number
  sql: ${TABLE}.numero_cheque ;;
}

dimension: oficial_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.oficial_cuenta_key ;;
}

dimension: orden_pago_numero {
  type: number
  sql: ${TABLE}.orden_pago_numero ;;
}

dimension: producto_key {
  hidden: yes
  type: number
  sql: ${TABLE}.producto_key ;;
}

dimension: sucursal_cuenta_acreditacion_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_cuenta_acreditacion_key ;;
}

dimension: sucursal_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_cuenta_key ;;
}

dimension: sucursal_entrega_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_entrega_key ;;
}

measure: count {
  type: count
  drill_fields: []
}
}
