view: lkp_estados_fraude {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_estados_fraude`
    ;;
  view_label: "Otras Dimensiones"

  dimension: descripcion_estado_fraude {
    group_label: "Estados Fraude"
    type: string
    sql: ${TABLE}.descripcion_estado_fraude ;;
  }

  dimension: estado_fraude_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_fraude_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
