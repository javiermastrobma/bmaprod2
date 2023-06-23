view: lkp_estados_ps {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_estados_ps`
    ;;

dimension: estado_monitor_ps {
  view_label: "Otras Dimensiones"
  type: string
  sql: ${TABLE}.estado_monitor_ps ;;
}

dimension: estado_monitor_ps_key {
  hidden: yes
  primary_key: yes
  type: number
  sql: ${TABLE}.estado_monitor_ps_key ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
