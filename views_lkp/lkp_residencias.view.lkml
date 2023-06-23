view: lkp_residencias {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_residencias`
    ;;

dimension: residencia {
  view_label: "Otras Dimensiones"
  group_label: "Residencia"
  type: string
  sql: ${TABLE}.residencia ;;
}

dimension: residencia_key {
  hidden: yes
  type: number
  sql: ${TABLE}.residencia_key ;;
}

dimension: residencia_source {
  view_label: "Otras Dimensiones"
  group_label: "Residencia"
  type: string
  sql: ${TABLE}.residencia_source ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
