view: lkp_estados_bonificacion {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_estados_bonificacion`
    ;;
  view_label: "Datos BONIFICACIÓN"

  dimension: estado_bonificacion {
    group_label: "Estados Bonificación"
    type: string
    sql: ${TABLE}.estado_bonificacion ;;
  }

  dimension: estado_bonificacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_bonificacion_key ;;
  }

  dimension: estado_bonificacion_source {
    group_label: "Estados Bonificación"
    type: string
    sql: ${TABLE}.estado_bonificacion_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
