view: lkp_puestos_rrhh {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_puestos_rrhh`
    ;;
  view_label: "Datos RRHH"

  dimension: familia_puesto {
    group_label: "Puestos"
    type: string
    sql: ${TABLE}.familia_puesto ;;
  }

  dimension: grado_puesto {
    group_label: "Puestos"
    type: number
    sql: ${TABLE}.grado_puesto ;;
  }

  dimension: modelo_sucursal_puesto {
    group_label: "Puestos"
    type: string
    sql: ${TABLE}.modelo_sucursal_puesto ;;
  }

  dimension: puesto {
    group_label: "Puestos"
    type: string
    sql: ${TABLE}.puesto ;;
  }

  dimension: puesto_rrhh_key {
    hidden: yes
    type: number
    sql: ${TABLE}.puesto_rrhh_key ;;
  }

  dimension: puesto_source {
    group_label: "Puestos"
    type: string
    sql: ${TABLE}.puesto_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
