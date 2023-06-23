view: lkp_otros_codigos_comex {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_otros_codigos_comex`
    ;;
  view_label: "Otras Dimensiones"

  dimension: indicador_devengamiento {
    group_label: "Otros Códigos Comex"
    type: string
    sql: ${TABLE}.indicador_devengamiento ;;
  }

  dimension: indicador_devengamiento_source {
    group_label: "Otros Códigos Comex"
    type: string
    sql: ${TABLE}.indicador_devengamiento_source ;;
  }

  dimension: otros_codigos_comex_key {
    hidden: yes
    type: number
    sql: ${TABLE}.otros_codigos_comex_key ;;
  }

  dimension: tasa_adelantada {
    group_label: "Otros Códigos Comex"
    type: string
    sql: ${TABLE}.tasa_adelantada ;;
  }

  dimension: tipo_devengamiento_source {
    group_label: "Otros Códigos Comex"
    type: string
    sql: ${TABLE}.tipo_devengamiento_source ;;
  }

  dimension: tipo_deventamiento {
    group_label: "Otros Códigos Comex"
    type: string
    sql: ${TABLE}.tipo_deventamiento ;;
  }

  dimension: tipo_tasa_interes {
    group_label: "Otros Códigos Comex"
    type: string
    sql: ${TABLE}.tipo_tasa_interes ;;
  }

  dimension: tipo_tasa_interes_source {
    group_label: "Otros Códigos Comex"
    type: string
    sql: ${TABLE}.tipo_tasa_interes_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
