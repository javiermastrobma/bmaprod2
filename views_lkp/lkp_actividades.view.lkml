view: lkp_actividades {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_actividades`
    ;;

dimension: actividad {
  view_label: "Otras Dimensiones"
  group_label: "Actividad"
  type: string
  sql: ${TABLE}.actividad ;;
}

dimension: actividad_key {
  hidden: yes
  type: number
  sql: ${TABLE}.actividad_key ;;
}

dimension: actividad_source {
  view_label: "Otras Dimensiones"
  group_label: "Actividad"
  type: number
  sql: ${TABLE}.actividad_source ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
