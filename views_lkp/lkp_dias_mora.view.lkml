view: lkp_dias_mora {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_dias_mora`
    ;;
    view_label: "Otras Dimensiones"

  dimension: dias {
    group_label: "Días Mora"
    type: string
    sql: ${TABLE}.dias ;;
  }

  dimension: dias_mora {
    group_label: "Días Mora"
    type: string
    sql: ${TABLE}.dias_mora ;;
  }

  dimension: dias_mora_key {
    hidden: yes
    type: number
    sql: ${TABLE}.dias_mora_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
