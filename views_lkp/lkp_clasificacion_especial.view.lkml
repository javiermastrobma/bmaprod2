view: lkp_clasificacion_especial {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_clasificacion_especial`
    ;;
  view_label: "Otras Dimensiones"

  dimension: clasificacion_especial {
    group_label: "Clasificación Especial"
    type: string
    sql: ${TABLE}.clasificacion_especial ;;
  }

  dimension: clasificacion_especial_key {
    hidden: yes
    type: number
    sql: ${TABLE}.clasificacion_especial_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
