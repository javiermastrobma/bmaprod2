view: lkp_bloqueos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_bloqueos`
    ;;

dimension: bloqueo_key {
  hidden: yes
  type: number
  sql: ${TABLE}.bloqueo_key ;;
}

dimension: bloqueo_source {
  view_label: "Otras Dimensiones"
  group_label: "Bloqueo"
  type: number
  sql: ${TABLE}.bloqueo_source ;;
}

dimension: tipo_bloqueo {
  view_label: "Otras Dimensiones"
  group_label: "Bloqueo"
  type: string
  sql: ${TABLE}.tipo_bloqueo ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
