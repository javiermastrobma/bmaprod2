view: lkp_estados_actividades {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_estados_actividades`
    ;;
  view_label: "Datos ACTIVIDADES RECLAMO"

  dimension: descripcion_estado_actividad {
    group_label: "Estado Actividades"
    type: string
    sql: ${TABLE}.descripcion_estado_actividad ;;
  }

  dimension: estado_actividad_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_actividad_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
