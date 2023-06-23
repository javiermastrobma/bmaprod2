view: lkp_tipos_operacion_titulos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_tipos_operacion_titulos`
    ;;
  view_label: "Otras Dimensiones"

  dimension: tipo_operacion_titulos {
    group_label: "Tipos Operación Títulos"
    type: string
    sql: ${TABLE}.tipo_operacion_titulos ;;
  }

  dimension: tipo_operacion_titulos_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_operacion_titulos_key ;;
  }

  dimension: tipo_operacion_titulos_source {
    group_label: "Tipos Operación Títulos"
    type: string
    sql: ${TABLE}.tipo_operacion_titulos_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
