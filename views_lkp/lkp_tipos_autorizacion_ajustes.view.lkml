view: lkp_tipos_autorizacion_ajustes {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_tipos_autorizacion_ajustes`
    ;;
  view_label: "Datos RECLAMO"

  dimension: descripcion_tipo_autorizacion_ajuste {
    group_label: "Ajustes - Tipos Autorización"
    type: string
    sql: ${TABLE}.descripcion_tipo_autorizacion_ajuste ;;
  }

  dimension: tipo_autorizacion_ajuste_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_autorizacion_ajuste_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
