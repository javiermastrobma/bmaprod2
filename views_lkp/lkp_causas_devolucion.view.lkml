view: lkp_causas_devolucion {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_causas_devolucion`
    ;;

  dimension: causa_devolucion_agrupamiento {
    type: string
    sql: ${TABLE}.causa_devolucion_agrupamiento ;;
  }

  dimension: causa_devolucion_descripcion {
    type: string
    sql: ${TABLE}.causa_devolucion_descripcion ;;
  }

  dimension: causa_devolucion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.causa_devolucion_key ;;
  }

  dimension: causa_devolucion_source {
    type: string
    sql: ${TABLE}.causa_devolucion_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
