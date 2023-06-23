view: lkp_destinos_prestamo {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_destinos_prestamo`
    ;;
  view_label: "Otras Dimensiones"

  dimension: destino_prestamo_codigo {
    group_label: "Destinos Préstamo"
    type: string
    sql: ${TABLE}.destino_prestamo_codigo ;;
  }

  dimension: destino_prestamo_descripcion {
    group_label: "Destinos Préstamo"
    type: string
    sql: ${TABLE}.destino_prestamo_descripcion ;;
  }

  dimension: destino_prestamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.destino_prestamo_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
