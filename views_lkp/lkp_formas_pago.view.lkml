view: lkp_formas_pago {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_formas_pago`
    ;;
    view_label: "Otras Dimensiones"

  dimension: forma_pago {
    group_label: "Formas de Pago"
    type: string
    sql: ${TABLE}.forma_pago ;;
  }

  dimension: forma_pago_key {
    hidden: yes
    type: number
    sql: ${TABLE}.forma_pago_key ;;
  }

  dimension: forma_pago_source {
    group_label: "Formas de Pago"
    type: string
    sql: ${TABLE}.forma_pago_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
