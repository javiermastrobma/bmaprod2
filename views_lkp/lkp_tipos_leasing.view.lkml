view: lkp_tipos_leasing {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_tipos_leasing`
    ;;
  view_label: "Otras Dimensiones"

  dimension: tipo_leasing {
    group_label: "Tipos Leasing"
    type: string
    sql: ${TABLE}.tipo_leasing ;;
  }

  dimension: tipo_leasing_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_leasing_key ;;
  }

  dimension: tipo_leasing_source {
    group_label: "Tipos Leasing"
    type: string
    sql: ${TABLE}.tipo_leasing_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
