view: lkp_versiones_presupuesto {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_versiones_presupuesto`
    ;;
  view_label: "Datos PRESUPUESTO"

  dimension: version_presupuesto {
    group_label: "Versiones Presupuesto"
    type: number
    sql: ${TABLE}.version_presupuesto ;;
  }

  dimension: version_presupuesto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.version_presupuesto_key ;;
  }

  dimension: version_vigente {
    group_label: "Versiones Presupuesto"
    type: string
    sql: ${TABLE}.version_vigente ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
