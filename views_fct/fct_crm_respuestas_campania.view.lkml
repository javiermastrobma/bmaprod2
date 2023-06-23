view: fct_crm_respuestas_campania {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_crm_respuestas_campania`
    ;;
    view_label: " Fct CRM Respuestas Campaña"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_crm_respuestas_campania s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: campania_key {
    hidden: yes
    type: number
    sql: ${TABLE}.campania_key ;;
  }

  dimension: descripcion_respuesta {
    type: string
    sql: ${TABLE}.descripcion_respuesta ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }

  dimension_group: fecha_actualizacion {
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
    sql: ${TABLE}.fecha_actualizacion ;;
  }

  dimension_group: fecha_creacion {
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
    sql: ${TABLE}.fecha_creacion ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: metodo_respuesta {
    type: string
    sql: ${TABLE}.metodo_respuesta ;;
  }

  dimension: objetivo_campania_key {
    hidden: yes
    type: number
    sql: ${TABLE}.objetivo_campania_key ;;
  }

  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }

  dimension: oficina_generadora_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficina_generadora_key ;;
  }

  dimension: resultado_campania_key {
    hidden: yes
    type: number
    sql: ${TABLE}.resultado_campania_key ;;
  }

  dimension: score_1 {
    type: string
    sql: ${TABLE}.score_1 ;;
  }

  dimension: score_2 {
    type: string
    sql: ${TABLE}.score_2 ;;
  }

  dimension: segmento_crm {
    type: string
    sql: ${TABLE}.segmento_crm ;;
  }

  dimension: subsegmento_crm {
    type: string
    sql: ${TABLE}.subsegmento_crm ;;
  }

  dimension: tratamiento_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tratamiento_key ;;
  }

  dimension: usuario_creador {
    type: string
    sql: ${TABLE}.usuario_creador ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
