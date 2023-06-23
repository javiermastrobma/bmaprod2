view: lkp_mercados {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_mercados`
    ;;
  view_label: "Otras Dimensiones"

  dimension: mercado {
    group_label: "Mercados"
    type: string
    sql: ${TABLE}.mercado ;;
  }

  dimension: mercado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.mercado_key ;;
  }

  dimension: mercado_source {
    hidden: yes
    type: number
    sql: ${TABLE}.mercado_source ;;
  }

  dimension: submercado {
    group_label: "Mercados"
    type: string
    sql: ${TABLE}.submercado ;;
  }

  dimension: submercado_source {
    hidden: yes
    type: number
    sql: ${TABLE}.submercado_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
