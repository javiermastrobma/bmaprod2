view: lkp_rubros_bonificacion {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_rubros_bonificacion`
    ;;
  view_label: "Datos BONIFICACIÓN"

  dimension: rubro {
    group_label: "Rubros Bonificación"
    type: string
    sql: ${TABLE}.rubro ;;
  }

  dimension: rubro_source {
    group_label: "Rubros Bonificación"
    type: string
    sql: ${TABLE}.rubro_source ;;
  }

  dimension: rubros_bonificacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.rubros_bonificacion_key ;;
  }

  dimension: servicio {
    group_label: "Rubros Bonificación"
    type: string
    sql: ${TABLE}.servicio ;;
  }

  dimension: servicio_source {
    group_label: "Rubros Bonificación"
    type: number
    sql: ${TABLE}.servicio_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
