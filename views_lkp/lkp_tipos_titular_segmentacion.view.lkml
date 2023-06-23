view: lkp_tipos_titular_segmentacion {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_tipos_titular_segmentacion`
    ;;

  dimension: tipo_titular {
    type: string
    sql: ${TABLE}.tipo_titular ;;
  }

  dimension: tipo_titular_descripcion {
    type: string
    sql: ${TABLE}.tipo_titular_descripcion ;;
  }

  dimension: tipo_titular_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_titular_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
