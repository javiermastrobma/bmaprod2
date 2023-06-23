view: lkp_tipos_transaccion {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_tipos_transaccion`
    ;;
    view_label: "Otras Dimensiones"

dimension: tipo_transaccion {
  group_label: "Tipos Transacción"
  type: string
  sql: ${TABLE}.tipo_transaccion ;;
}

dimension: tipo_transaccion_key {
  hidden: yes
  type: number
  sql: ${TABLE}.tipo_transaccion_key ;;
}

dimension: tipo_transaccion_source {
  group_label: "Tipos Transacción"
  type: string
  sql: ${TABLE}.tipo_transaccion_source ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
