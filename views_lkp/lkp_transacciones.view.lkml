view: lkp_transacciones {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_transacciones`
    ;;

dimension: transaccion_codigo {
  type: string
  sql: ${TABLE}.transaccion_codigo ;;
}

dimension: transaccion_descripcion {
  type: string
  sql: ${TABLE}.transaccion_descripcion ;;
}

dimension: transaccion_key {
  hidden: yes
  type: number
  sql: ${TABLE}.transaccion_key ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
