view: lkp_estados_garantia {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_estados_garantia`
    ;;
    view_label: "Datos GARANTÍA"

  dimension: estado_garantia {
    group_label: "Estados Garantía"
    type: string
    sql: ${TABLE}.estado_garantia ;;
  }

  dimension: estado_garantia_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_garantia_key ;;
  }

  dimension: estado_garantia_source {
    group_label: "Estados Garantía"
    type: string
    sql: ${TABLE}.estado_garantia_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
