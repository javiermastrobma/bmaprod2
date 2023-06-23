view: lkp_estados_presupuesto {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_estados_presupuesto`
    ;;
  view_label: "Datos PRESUPUESTO"

  dimension: estado_presupuesto {
    group_label: "Estados Presupuesto"
    type: string
    sql: ${TABLE}.estado_presupuesto ;;
  }

  dimension: estado_presupuesto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_presupuesto_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
