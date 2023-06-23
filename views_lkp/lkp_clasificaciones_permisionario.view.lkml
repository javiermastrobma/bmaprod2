view: lkp_clasificaciones_permisionario {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_clasificaciones_permisionario`
    ;;
  view_label: "Otras Dimensiones"

  dimension: clasificacion_permisionario_key {
    hidden: yes
    type: number
    sql: ${TABLE}.clasificacion_permisionario_key ;;
  }

  dimension: codigo_clasificacion {
    group_label: "Permisionario"
    type: number
    sql: ${TABLE}.codigo_clasificacion ;;
  }

  dimension: descripcion_clasificacion {
    group_label: "Permisionario"
    type: string
    sql: ${TABLE}.descripcion_clasificacion ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
