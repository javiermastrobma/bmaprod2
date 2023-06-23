view: lkp_conceptos_ajustes {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_conceptos_ajustes`
    ;;
  view_label: "Datos RECLAMO"

  dimension: concepto_ajuste_key {
    hidden: yes
    type: number
    sql: ${TABLE}.concepto_ajuste_key ;;
  }

  dimension: tipo_concepto {
    group_label: "Ajustes - Conceptos"
    type: string
    sql: ${TABLE}.tipo_concepto ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
