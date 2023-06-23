view: lkp_tipos_fraude_reclamos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_tipos_fraude_reclamos`
    ;;
  view_label: "Datos RECLAMO"

  dimension: descripcion_tipo_fraude {
    group_label: "Tipos Fraude Reclamo"
    type: string
    sql: ${TABLE}.descripcion_tipo_fraude ;;
  }

  dimension: tipo_fraude_reclamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_fraude_reclamo_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
