view: lkp_tipos_puntaje {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_tipos_puntaje`
    ;;
    view_label: "Otras Dimensiones"

  dimension: tipo_puntaje_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_puntaje_key ;;
  }

  dimension: tipos_puntaje_agrupamiento {
    group_label: "Tipos Puntaje"
    type: string
    sql: ${TABLE}.tipos_puntaje_agrupamiento ;;
  }

  dimension: tipos_puntaje_descripcion {
    group_label: "Tipos Puntaje"
    type: string
    sql: ${TABLE}.tipos_puntaje_descripcion ;;
  }

  dimension: tipos_puntaje_source {
    group_label: "Tipos Puntaje"
    type: string
    sql: ${TABLE}.tipos_puntaje_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
