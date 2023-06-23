view: lkp_horas {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_horas`
    ;;

dimension: decena_minutos {
  view_label: "Datos TIEMPO"
  type: number
  sql: ${TABLE}.decena_minutos ;;
}

dimension: hora {
  view_label: "Datos TIEMPO"
  type: number
  sql: ${TABLE}.hora ;;
}

dimension: hora_key {
  hidden: yes
  type: number
  sql: ${TABLE}.hora_key ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
