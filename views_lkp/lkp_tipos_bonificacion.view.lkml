view: lkp_tipos_bonificacion {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_tipos_bonificacion`
    ;;
  view_label: "Datos BONIFICACIÓN"

  dimension: descripcion {
    group_label: "Tipos Bonificación"
    type: string
    sql: ${TABLE}.descripcion ;;
  }

  dimension: tipo_bonificacion {
    group_label: "Tipos Bonificación"
    type: string
    sql: ${TABLE}.tipo_bonificacion ;;
  }

  dimension: tipo_bonificacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_bonificacion_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
