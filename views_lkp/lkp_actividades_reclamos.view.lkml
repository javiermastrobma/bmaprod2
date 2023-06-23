view: lkp_actividades_reclamos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_actividades_reclamos`
    ;;
  view_label: "Datos RECLAMO"

  dimension: actividad_reclamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.actividad_reclamo_key ;;
  }

  dimension: descripcion_actividad_reclamo {
    group_label: "Actividades Reclamo"
    type: string
    sql: ${TABLE}.descripcion_actividad_reclamo ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
