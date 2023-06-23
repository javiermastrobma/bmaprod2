view: lkp_carteras_tc {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_carteras_tc`
    ;;

dimension: cartera_tc {
  view_label: "Datos CUENTA TARJETA CRÉDITO"
  group_label: "Carteras TC"
  type: string
  sql: ${TABLE}.cartera_tc ;;
}

dimension: cartera_tc_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cartera_tc_key ;;
}

dimension: cartera_tc_source {
  view_label: "Datos CUENTA TARJETA CRÉDITO"
  group_label: "Carteras TC"
  type: string
  sql: ${TABLE}.cartera_tc_source ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
