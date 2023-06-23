view: lkp_causales_ajustes {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_causales_ajustes`
    ;;
  view_label: "Datos RECLAMO"

  dimension: causal_ajuste_key {
    hidden: yes
    type: number
    sql: ${TABLE}.causal_ajuste_key ;;
  }

  dimension: codigo_causal_ajuste {
    group_label: "Ajustes - Causales"
    type: string
    sql: ${TABLE}.codigo_causal_ajuste ;;
  }

  dimension: descripcion_causal_ajuste {
    group_label: "Ajustes - Causales"
    type: string
    sql: ${TABLE}.descripcion_causal_ajuste ;;
  }

  dimension: tipo_causal_ajuste {
    group_label: "Ajustes - Causales"
    type: string
    sql: ${TABLE}.tipo_causal_ajuste ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
