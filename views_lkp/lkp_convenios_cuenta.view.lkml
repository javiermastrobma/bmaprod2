view: lkp_convenios_cuenta {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_convenios_cuenta`
    ;;
    view_label: "Datos CONVENIO CUENTA"

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

dimension: capita_key {
  hidden: yes
  type: number
  sql: ${TABLE}.capita_key ;;
}

dimension: cliente_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cliente_key ;;
}

dimension: convenio_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.convenio_cuenta_key ;;
}

dimension: convenio_key {
  hidden: yes
  type: number
  sql: ${TABLE}.convenio_key ;;
}

dimension: cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cuenta_key ;;
}

dimension: estado_convenio {
  group_label: "Convenios Cuenta"
  type: string
  sql: ${TABLE}.estado_convenio ;;
}

dimension: estado_convenio_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.estado_convenio_cuenta_key ;;
}

dimension_group: fecha_alta {
  group_label: "Convenios Cuenta"
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

dimension_group: fecha_ultima_modificacion {
  group_label: "Convenios Cuenta"
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
  sql: ${TABLE}.fecha_ultima_modificacion ;;
}

dimension: fecha_ultimo_estado_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_ultimo_estado_key ;;
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

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
