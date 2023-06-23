view: lkp_escenarios_presupuesto {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_escenarios_presupuesto`
    ;;
    view_label: "Datos PRESUPUESTO"

  dimension: escenario_presupuesto {
    group_label: "Escenarios Presupuesto"
    type: string
    sql: ${TABLE}.escenario_presupuesto ;;
  }

  dimension: escenario_presupuesto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.escenario_presupuesto_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
