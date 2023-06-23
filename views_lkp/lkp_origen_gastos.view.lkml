view: lkp_origen_gastos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_origen_gastos`
    ;;
    view_label: "Otras Dimensiones"

  dimension: origen_gasto {
    group_label: "Origen Gasto"
    type: string
    sql: ${TABLE}.origen_gasto ;;
  }

  dimension: origen_gasto_key {
    hidden: yes
    type: string
    sql: ${TABLE}.origen_gasto_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
