view: lkp_estados_tarjetas {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_estados_tarjetas`
    ;;
  view_label: "Otras Dimensiones"

  dimension: estado_tarjeta {
    group_label: "Estados Tarjetas"
    type: string
    sql: ${TABLE}.estado_tarjeta ;;
  }

  dimension: estado_tarjeta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_tarjeta_key ;;
  }

  dimension: estado_tarjeta_source {
    group_label: "Estados Tarjetas"
    type: string
    sql: ${TABLE}.estado_tarjeta_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
