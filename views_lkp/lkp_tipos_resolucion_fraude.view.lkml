view: lkp_tipos_resolucion_fraude {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_tipos_resolucion_fraude`
    ;;
  view_label: "Otras Dimensiones"

  dimension: descripcion_tipo_resolucion {
    group_label: "Tipo Resolución Fraude"
    type: string
    sql: ${TABLE}.descripcion_tipo_resolucion ;;
  }

  dimension: tipo_resolucion_fraude_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_resolucion_fraude_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
