view: lkp_transacciones_prestamos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_transacciones_prestamos`
    ;;
    view_label: "Datos PRESTAMO"

  dimension: transaccion_prestamo_codigo {
    group_label: "Transacciones Préstamos"
    type: string
    sql: ${TABLE}.transaccion_prestamo_codigo ;;
  }

  dimension: transaccion_prestamo_descripcion {
    group_label: "Transacciones Préstamos"
    type: string
    sql: ${TABLE}.transaccion_prestamo_descripcion ;;
  }

  dimension: transaccion_prestamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.transaccion_prestamo_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
