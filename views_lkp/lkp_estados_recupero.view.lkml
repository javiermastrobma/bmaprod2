view: lkp_estados_recupero {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_estados_recupero`
    ;;

dimension: estado_recupero {
  view_label: "Otras Dimensiones"
  group_label: "Estados"
  type: string
  sql: ${TABLE}.estado_recupero ;;
}

dimension: estado_recupero_key {
  hidden: yes
  type: number
  sql: ${TABLE}.estado_recupero_key ;;
}

dimension: estado_recupero_nombre {
  view_label: "Otras Dimensiones"
  group_label: "Estados"
  type: string
  sql: ${TABLE}.estado_recupero_nombre ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
