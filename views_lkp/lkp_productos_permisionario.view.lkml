view: lkp_productos_permisionario {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_productos_permisionario`
    ;;
  view_label: "Otras Dimensiones"

  dimension: codigo_producto {
    group_label: "Permisionario"
    type: number
    sql: ${TABLE}.codigo_producto ;;
  }

  dimension: descripcion_producto {
    group_label: "Permisionario"
    type: string
    sql: ${TABLE}.descripcion_producto ;;
  }

  dimension: producto_permisionario_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_permisionario_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
