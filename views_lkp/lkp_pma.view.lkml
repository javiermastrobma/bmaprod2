view: lkp_pma {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_pma`
    ;;
  view_label: "Otras Dimensiones"

  dimension: descripcion {
    group_label: "PMA"
    type: string
    sql: ${TABLE}.descripcion ;;
  }

  dimension: pma_key {
    hidden: yes
    type: number
    sql: ${TABLE}.pma_key ;;
  }

  dimension: pma_source {
    group_label: "PMA"
    type: string
    sql: ${TABLE}.pma_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
