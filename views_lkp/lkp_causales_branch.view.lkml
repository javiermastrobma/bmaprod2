view: lkp_causales_branch {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_causales_branch`
    ;;
    view_label: "Datos BRANCH"

  dimension: causal_branch_key {
    hidden: yes
    type: number
    sql: ${TABLE}.causal_branch_key ;;
  }

  dimension: causal_source {
    group_label: "Causales Branch"
    type: string
    sql: ${TABLE}.causal_source ;;
  }

  dimension: descripcion_causal {
    group_label: "Causales Branch"
    type: string
    sql: ${TABLE}.descripcion_causal ;;
  }

  dimension: transaccion_source {
    group_label: "Causales Branch"
    type: string
    sql: ${TABLE}.transaccion_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
