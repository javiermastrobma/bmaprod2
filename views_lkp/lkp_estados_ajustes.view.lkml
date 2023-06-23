view: lkp_estados_ajustes {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_estados_ajustes`
    ;;
  view_label: "Datos RECLAMO"

  dimension: descripcion_estado_ajuste {
    group_label: "Ajustes - Estados"
    type: string
    sql: ${TABLE}.descripcion_estado_ajuste ;;
  }

  dimension: estado_ajuste_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_ajuste_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
