view: lkp_canales {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_canales`
    ;;
  view_label: "Otras Dimensiones"

dimension: canal {
  group_label: "Canal"
  type: string
  sql: ${TABLE}.canal ;;
}

dimension: canal_key {
  hidden: yes
  type: number
  sql: ${TABLE}.canal_key ;;
}

dimension: canal_source {
  group_label: "Canal"
  type: string
  sql: ${TABLE}.canal_source ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
