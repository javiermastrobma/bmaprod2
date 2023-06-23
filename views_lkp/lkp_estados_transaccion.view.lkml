view: lkp_estados_transaccion {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_estados_transaccion`
    ;;
    view_label: "Otras Dimensiones"

  dimension: estado_transaccion {
    group_label: "Estados Transacción"
    type: string
    sql: ${TABLE}.estado_transaccion ;;
  }

  dimension: estado_transaccion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_transaccion_key ;;
  }

  dimension: estado_transaccion_source {
    group_label: "Estados Transacción"
    type: string
    sql: ${TABLE}.estado_transaccion_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
