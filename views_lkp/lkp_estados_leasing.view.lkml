view: lkp_estados_leasing {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_estados_leasing`
    ;;
  view_label: "Otras Dimensiones"

  dimension: estado_leasing {
    group_label: "Estados Leasing"
    type: string
    sql: ${TABLE}.estado_leasing ;;
  }

  dimension: estado_leasing_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_leasing_key ;;
  }

  dimension: estado_source {
    group_label: "Estados Leasing"
    type: string
    sql: ${TABLE}.estado_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
