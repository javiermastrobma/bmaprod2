view: lkp_actividad_proveedor {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_actividad_proveedor`
    ;;
    view_label: "Otras Dimensiones"

  dimension: actividad_proveedor {
    group_label: "Actividad Proveedor"
    type: string
    sql: ${TABLE}.actividad_proveedor ;;
  }

  dimension: actividad_proveedor_key {
    hidden: yes
    type: number
    sql: ${TABLE}.actividad_proveedor_key ;;
  }

  dimension: codigo_iva_source {
    group_label: "Actividad Proveedor"
    type: string
    sql: ${TABLE}.codigo_iva_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
