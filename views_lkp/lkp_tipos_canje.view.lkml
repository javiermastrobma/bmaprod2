view: lkp_tipos_canje {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_tipos_canje`
    ;;

  dimension: tipo_canje_agrupamiento {
    type: string
    sql: ${TABLE}.tipo_canje_agrupamiento ;;
  }

  dimension: tipo_canje_descripcion {
    type: string
    sql: ${TABLE}.tipo_canje_descripcion ;;
  }

  dimension: tipo_canje_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_canje_key ;;
  }

  dimension: tipo_canje_source {
    type: string
    sql: ${TABLE}.tipo_canje_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
