view: lkp_tipos_actividades {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_tipos_actividades`
    ;;
  view_label: "Datos ACTIVIDADES RECLAMO"

  dimension: descripcion_tipo_actividad {
    group_label: "Tipos Actividades"
    type: string
    sql: ${TABLE}.descripcion_tipo_actividad ;;
  }

  dimension: tipo_actividad_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_actividad_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
