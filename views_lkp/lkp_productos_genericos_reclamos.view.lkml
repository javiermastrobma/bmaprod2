view: lkp_productos_genericos_reclamos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_productos_genericos_reclamos`
    ;;
  view_label: "Datos RECLAMO"

  dimension: familia_producto {
    group_label: "Productos Genéricos Reclamo"
    type: string
    sql: ${TABLE}.familia_producto ;;
  }

  dimension: producto_generico_crm {
    group_label: "Productos Genéricos Reclamo"
    type: string
    sql: ${TABLE}.producto_generico_crm ;;
  }

  dimension: producto_generico_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_generico_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
