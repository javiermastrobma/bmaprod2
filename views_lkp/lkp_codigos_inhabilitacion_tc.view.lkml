view: lkp_codigos_inhabilitacion_tc {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_codigos_inhabilitacion_tc`
    ;;
  view_label: "Otras Dimensiones"

dimension: banco_key {
  hidden: yes
  type: number
  sql: ${TABLE}.banco_key ;;
}

dimension: codigo_inhabilitacion_tc {
  group_label: "Códigos Inhabilitación TC"
  type: string
  sql: ${TABLE}.codigo_inhabilitacion_tc ;;
}

dimension: codigo_inhabilitacion_tc_key {
  hidden: yes
  type: number
  sql: ${TABLE}.codigo_inhabilitacion_tc_key ;;
}

dimension: codigo_inhabilitacion_tc_source {
  group_label: "Códigos Inhabilitación TC"
  type: string
  sql: ${TABLE}.codigo_inhabilitacion_tc_source ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
