view: lkp_conceptos_valoracion_embebed {
  sql_table_name: `bm-gcp-p1-dw.looker_embebed.lkp_conceptos_valoracion`
    ;;
  view_label: "Datos VALORACIÓN"

  dimension: concepto_valoracion_descripcion {
    group_label: "Conceptos Valoración"
    type: string
    sql: ${TABLE}.concepto_valoracion_descripcion ;;
  }

  dimension_group: concepto_valoracion_fecha_alta {
    group_label: "Conceptos Valoración"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.concepto_valoracion_fecha_alta ;;
  }

  dimension: concepto_valoracion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.concepto_valoracion_key ;;
  }

  dimension: concepto_valoracion_marca_ing_egr {
    group_label: "Conceptos Valoración"
    type: string
    sql: ${TABLE}.concepto_valoracion_marca_ing_egr ;;
  }

  dimension: concepto_valoracion_source {
    group_label: "Conceptos Valoración"
    type: string
    sql: ${TABLE}.concepto_valoracion_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
