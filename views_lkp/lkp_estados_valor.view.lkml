view: lkp_estados_valor {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_estados_valor`
    ;;
    view_label: "Otras Dimensiones"

  dimension: estado {
    group_label: "Estados Valor"
    type: string
    sql: ${TABLE}.estado ;;
  }

  dimension: estado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_key ;;
  }

  dimension: estado_source {
    group_label: "Estados Valor"
    type: string
    sql: ${TABLE}.estado_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
