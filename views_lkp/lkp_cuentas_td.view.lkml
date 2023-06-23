view: lkp_cuentas_td {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_cuentas_td`
    ;;
    view_label: "Datos CUENTA TARJETA DÉBITO"

dimension: banca_key {
  hidden: yes
  type: number
  sql: ${TABLE}.banca_key ;;
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

dimension: cuenta_comisiones_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cuenta_comisiones_key ;;
}

dimension: cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cuenta_key ;;
}

dimension: cuenta_tarjeta {
  group_label: "Cuentas Tarjeta Débito"
  type: string
  sql: ${TABLE}.cuenta_tarjeta ;;
}

dimension: estado_tarjeta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.estado_tarjeta_key ;;
}

dimension_group: fecha_alta {
  group_label: "Cuentas Tarjeta Débito"
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
  sql: ${TABLE}.fecha_alta ;;
}

dimension_group: fecha_baja {
  group_label: "Cuentas Tarjeta Débito"
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
  sql: ${TABLE}.fecha_baja ;;
}

dimension_group: fecha_primera_compra {
  group_label: "Cuentas Tarjeta Débito"
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
  sql: ${TABLE}.fecha_primera_compra ;;
}

dimension_group: fecha_vencimiento {
  group_label: "Cuentas Tarjeta Débito"
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
  sql: ${TABLE}.fecha_vencimiento ;;
}

dimension: flag_titular {
  group_label: "Cuentas Tarjeta Débito"
  type: string
  sql: ${TABLE}.flag_titular ;;
}

dimension: limite_compra {
  group_label: "Cuentas Tarjeta Débito"
  type: number
  sql: ${TABLE}.limite_compra ;;
}

dimension: numero_tarjeta {
  group_label: "Cuentas Tarjeta Débito"
  type: string
  sql: ${TABLE}.numero_tarjeta ;;
}

dimension: paquete_id {
  group_label: "Cuentas Tarjeta Débito"
  type: number
  sql: ${TABLE}.paquete_id ;;
}

dimension: producto_key {
  hidden: yes
  type: number
  sql: ${TABLE}.producto_key ;;
}

dimension: sucursal_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_cuenta_key ;;
}

dimension: tipo_entrega {
  group_label: "Cuentas Tarjeta Débito"
  type: string
  sql: ${TABLE}.tipo_entrega ;;
}

dimension: tipo_solicitud {
  group_label: "Cuentas Tarjeta Débito"
  type: string
  sql: ${TABLE}.tipo_solicitud ;;
}

dimension: tipo_tarjeta {
  group_label: "Cuentas Tarjeta Débito"
  type: string
  sql: ${TABLE}.tipo_tarjeta ;;
}

dimension: tipo_tarjeta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.tipo_tarjeta_key ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
