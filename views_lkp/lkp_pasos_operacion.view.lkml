view: lkp_pasos_operacion {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_pasos_operacion`
    ;;
  view_label: "Datos DIGITAL"

  dimension: codigo_paso_source {
    group_label: "Pasos Operación"
    type: number
    sql: ${TABLE}.codigo_paso_source ;;
  }

  dimension: descripcion_paso_operacion {
    group_label: "Pasos Operación"
    type: string
    sql: ${TABLE}.descripcion_paso_operacion ;;
  }

  dimension: numero_paso_operacion {
    group_label: "Pasos Operación"
    type: number
    sql: ${TABLE}.numero_paso_operacion ;;
  }

  dimension: paso_operacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.paso_operacion_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
