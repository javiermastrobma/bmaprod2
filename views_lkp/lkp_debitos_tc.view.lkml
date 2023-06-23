view: lkp_debitos_tc {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_debitos_tc`
    ;;

dimension: debitos_tc_key {
  hidden: yes
  type: number
  sql: ${TABLE}.debitos_tc_key ;;
}

dimension: debitos_tc_source {
  view_label: "Datos CUENTA TARJETA CRÉDITO"
  group_label: "Débitos TC"
  type: string
  sql: ${TABLE}.debitos_tc_source ;;
}

dimension: forma_pago {
  view_label: "Datos CUENTA TARJETA CRÉDITO"
  group_label: "Débitos TC"
  type: string
  sql: ${TABLE}.forma_pago ;;
}

dimension: tipo_debito {
  view_label: "Datos CUENTA TARJETA CRÉDITO"
  group_label: "Débitos TC"
  type: string
  sql: ${TABLE}.tipo_debito ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
