view: lkp_inactividad {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_inactividad`
    ;;

dimension: inactiva {
  view_label: "Otras Dimensiones"
  group_label: "Inactividad"
  type: string
  sql: ${TABLE}.inactiva ;;
}

dimension: inactividad_key {
  hidden: yes
  type: number
  sql: ${TABLE}.inactividad_key ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
