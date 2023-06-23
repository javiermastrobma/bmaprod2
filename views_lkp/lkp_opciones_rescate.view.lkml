view: lkp_opciones_rescate {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_opciones_rescate`
    ;;

dimension: opcion_rescate_codigo {
  type: string
  sql: ${TABLE}.opcion_rescate_codigo ;;
}

dimension: opcion_rescate_descripcion {
  type: string
  sql: ${TABLE}.opcion_rescate_descripcion ;;
}

dimension: opcion_rescate_key {
  hidden: yes
  type: number
  sql: ${TABLE}.opcion_rescate_key ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
