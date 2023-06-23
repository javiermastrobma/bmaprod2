view: lkp_estados_operacion_canal_digital {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_estados_operacion_canal_digital`
    ;;
  view_label: "Datos DIGITAL"

  dimension: descripcion_estado {
    group_label: "Estados Operación Canal Digital"
    type: string
    sql: ${TABLE}.descripcion_estado ;;
  }

  dimension: estado_operacion_canal_digital_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_operacion_canal_digital_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
