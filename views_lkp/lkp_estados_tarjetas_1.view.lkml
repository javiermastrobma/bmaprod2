view: lkp_estados_tarjetas_1 {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_estados_tarjetas_1`
    ;;

  dimension: autorizaciones_inhibidas {
    type: string
    sql: ${TABLE}.autorizaciones_inhibidas ;;
  }

  dimension: boletin {
    type: string
    sql: ${TABLE}.boletin ;;
  }

  dimension: estado_tarjeta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_tarjeta_key ;;
  }

  dimension: estado_tarjeta_source {
    type: string
    sql: ${TABLE}.estado_tarjeta_source ;;
  }

  dimension: habilitada_para_uso {
    type: string
    sql: ${TABLE}.habilitada_para_uso ;;
  }

  dimension: inhabilitada {
    type: string
    sql: ${TABLE}.inhabilitada ;;
  }

  dimension: preembozo {
    type: string
    sql: ${TABLE}.preembozo ;;
  }

  dimension: renovacion_habilitada {
    type: string
    sql: ${TABLE}.renovacion_habilitada ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
