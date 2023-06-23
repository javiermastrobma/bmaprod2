view: lkp_resultados_campania {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_resultados_campania`
    ;;
  view_label: "Datos CAMPAÑA"

  dimension: clasificacion {
    group_label: "Resultados Campaña"
    type: string
    sql: ${TABLE}.clasificacion ;;
  }

  dimension: resultado_campania {
    group_label: "Resultados Campaña"
    type: string
    sql: ${TABLE}.resultado_campania ;;
  }

  dimension: resultado_campania_key {
    hidden: yes
    type: number
    sql: ${TABLE}.resultado_campania_key ;;
  }

  dimension: tipo_resultado {
    group_label: "Resultados Campaña"
    type: string
    sql: ${TABLE}.tipo_resultado ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
