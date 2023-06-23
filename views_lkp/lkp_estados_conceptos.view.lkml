view: lkp_estados_conceptos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_estados_conceptos`
    ;;
  view_label: "Datos RECLAMO"

  dimension: descripcion_estado_concepto {
    group_label: "Estados Conceptos"
    type: string
    sql: ${TABLE}.descripcion_estado_concepto ;;
  }

  dimension: estado_concepto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_concepto_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
