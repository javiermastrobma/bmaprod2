view: lkp_causa_fecha_valor {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_causa_fecha_valor`
    ;;

  dimension: causa_fecha_valor {
    type: string
    sql: ${TABLE}.causa_fecha_valor ;;
  }

  dimension: causa_fecha_valor_key {
    hidden: yes
    type: number
    sql: ${TABLE}.causa_fecha_valor_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
