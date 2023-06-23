view: lkp_unidades_recupero {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_unidades_recupero`
    ;;

dimension: unidad_recupero {
  view_label: "Otras Dimensiones"
  type: string
  sql: ${TABLE}.unidad_recupero ;;
}

dimension: unidad_recupero_key {
  hidden: yes
  type: number
  sql: ${TABLE}.unidad_recupero_key ;;
}

dimension: unidad_recupero_nombre {
  view_label: "Otras Dimensiones"
  type: string
  sql: ${TABLE}.unidad_recupero_nombre ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
