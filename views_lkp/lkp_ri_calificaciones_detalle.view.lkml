view: lkp_ri_calificaciones_detalle {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_ri_calificaciones_detalle`
    ;;
    view_label: "Datos CALIFICACIONES DE RIESGO"

  dimension: calificacion_garantia_key {
    hidden: yes
    type: number
    sql: ${TABLE}.calificacion_garantia_key ;;
  }

  dimension: calificacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.calificacion_key ;;
  }

  dimension: calificacion_linea_sl_key {
    hidden: yes
    type: number
    sql: ${TABLE}.calificacion_linea_sl_key ;;
  }

  dimension: calificacion_operacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.calificacion_operacion_key ;;
  }

  dimension: comentario_sublinea {
    group_label: "Detalle"
    type: string
    sql: ${TABLE}.comentario_sublinea ;;
  }

  dimension: dias_plazo_sublinea {
    group_label: "Detalle"
    type: number
    sql: ${TABLE}.dias_plazo_sublinea ;;
  }

  dimension: dias_prorroga_sublinea {
    group_label: "Detalle"
    type: number
    sql: ${TABLE}.dias_prorroga_sublinea ;;
  }

  dimension: especie_linea_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_linea_key ;;
  }

  dimension: especie_sublinea_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_sublinea_key ;;
  }

  dimension: extincion_linea {
    group_label: "Detalle"
    type: string
    sql: ${TABLE}.extincion_linea ;;
  }

  dimension: extincion_sublinea {
    group_label: "Detalle"
    type: string
    sql: ${TABLE}.extincion_sublinea ;;
  }

  dimension_group: fecha_etl_insercion {
    group_label: "Detalle"
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
    sql: ${TABLE}.fecha_etl_insercion ;;
  }

  dimension_group: fecha_etl_ultima_actualizacion {
    group_label: "Detalle"
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
    sql: ${TABLE}.fecha_etl_ultima_actualizacion ;;
  }

  dimension_group: fecha_vencimiento_sublinea {
    group_label: "Detalle"
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
    sql: ${TABLE}.fecha_vencimiento_sublinea ;;
  }

  dimension: monto_linea_mo {
    group_label: "Detalle"
    type: number
    sql: ${TABLE}.monto_linea_mo ;;
  }

  dimension: monto_sublinea_mo {
    group_label: "Detalle"
    type: number
    sql: ${TABLE}.monto_sublinea_mo ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
