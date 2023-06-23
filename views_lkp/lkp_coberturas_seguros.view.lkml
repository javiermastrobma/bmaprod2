view: lkp_coberturas_seguros {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_coberturas_seguros`
    ;;
    view_label: "Datos SEGUROS"

  dimension: cobertura {
    group_label: "Coberturas Seguros"
    type: string
    sql: ${TABLE}.cobertura ;;
  }

  dimension: cobertura_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cobertura_key ;;
  }

  dimension: cobertura_source {
    group_label: "Coberturas Seguros"
    type: number
    sql: ${TABLE}.cobertura_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
