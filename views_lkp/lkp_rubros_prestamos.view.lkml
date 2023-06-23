view: lkp_rubros_prestamos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_rubros_prestamos`
    ;;
    view_label: "Datos PRESTAMO"

  dimension: rubro_prestamo_codigo {
    group_label: "Rubros Préstamos"
    type: string
    sql: ${TABLE}.rubro_prestamo_codigo ;;
  }

  dimension: rubro_prestamo_descripcion {
    group_label: "Rubros Préstamos"
    type: string
    sql: ${TABLE}.rubro_prestamo_descripcion ;;
  }

  dimension: rubro_prestamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.rubro_prestamo_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
