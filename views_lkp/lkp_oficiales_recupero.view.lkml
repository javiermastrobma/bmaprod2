view: lkp_oficiales_recupero {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_oficiales_recupero`
    ;;

dimension: banco_key {
  hidden: yes
  type: number
  sql: ${TABLE}.banco_key ;;
}

dimension: oficial_recupero {
  view_label: "Otras Dimensiones"
  group_label: "Oficial Recupero"
  type: string
  sql: ${TABLE}.oficial_recupero ;;
}

dimension: oficial_recupero_key {
  hidden: yes
  type: number
  sql: ${TABLE}.oficial_recupero_key ;;
}

dimension: oficial_recupero_nombre {
  view_label: "Otras Dimensiones"
  group_label: "Oficial Recupero"
  type: string
  sql: ${TABLE}.oficial_recupero_nombre ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
