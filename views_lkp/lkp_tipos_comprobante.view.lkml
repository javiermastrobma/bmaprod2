view: lkp_tipos_comprobante {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_tipos_comprobante`
    ;;
  view_label: "Otras Dimensiones"

  dimension: tipo_comprobante {
    group_label: "Tipos Comprobante"
    type: string
    sql: ${TABLE}.tipo_comprobante ;;
  }

  dimension: tipo_comprobante_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_comprobante_key ;;
  }

  dimension: tipo_comprobante_source {
    group_label: "Tipos Comprobante"
    type: number
    sql: ${TABLE}.tipo_comprobante_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
