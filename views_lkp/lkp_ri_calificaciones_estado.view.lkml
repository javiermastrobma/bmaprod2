view: lkp_ri_calificaciones_estado {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_ri_calificaciones_estado`
    ;;
  view_label: "Datos CALIFICACIONES DE RIESGO"

  dimension: calificacion_estado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.calificacion_estado_key ;;
  }

  dimension: codigo_source {
    group_label: "Estado"
    type: string
    sql: ${TABLE}.codigo_source ;;
  }

  dimension: descripcion {
    group_label: "Estado"
    type: string
    sql: ${TABLE}.descripcion ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
