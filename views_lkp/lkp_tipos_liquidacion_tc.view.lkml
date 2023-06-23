view: lkp_tipos_liquidacion_tc {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_tipos_liquidacion_tc`
    ;;
    view_label: "Datos CUENTA TARJETA CRÉDITO"

dimension: tipo_liquidacion_tc {
  group_label: "Tipos Liquidación Tarjeta Crédito"
  type: string
  sql: ${TABLE}.tipo_liquidacion_tc ;;
}

dimension: tipo_liquidacion_tc_key {
  hidden: yes
  type: number
  sql: ${TABLE}.tipo_liquidacion_tc_key ;;
}

dimension: tipo_liquidacion_tc_source {
  group_label: "Tipos Liquidación Tarjeta Crédito"
  type: string
  sql: ${TABLE}.tipo_liquidacion_tc_source ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
