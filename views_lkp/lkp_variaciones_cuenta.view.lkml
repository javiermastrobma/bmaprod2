view: lkp_variaciones_cuenta {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_variaciones_cuenta`
    ;;

dimension: variacion {
  type: string
  sql: ${TABLE}.variacion ;;
}

dimension: variacion_key {
  hidden: yes
  type: number
  sql: ${TABLE}.variacion_key ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
