view: lkp_otros_atributos_transacciones_canales {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_otros_atributos_transacciones_canales`
    ;;
  view_label: "Otras Dimensiones"

  dimension: estado_transaccion {
    group_label: "Otros Atributos Transacciones"
    type: string
    sql: ${TABLE}.estado_transaccion ;;
  }

  dimension: estado_transaccion_source {
    group_label: "Otros Atributos Transacciones"
    type: string
    sql: ${TABLE}.estado_transaccion_source ;;
  }

  dimension: otros_atributos_transacciones_canales_key {
    hidden: yes
    type: number
    sql: ${TABLE}.otros_atributos_transacciones_canales_key ;;
  }

  dimension: tipo_ejecucion {
    group_label: "Otros Atributos Transacciones"
    type: string
    sql: ${TABLE}.tipo_ejecucion ;;
  }

  dimension: tipo_ejecucion_source {
    group_label: "Otros Atributos Transacciones"
    type: string
    sql: ${TABLE}.tipo_ejecucion_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
