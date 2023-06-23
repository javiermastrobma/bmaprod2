view: lkp_tratamientos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_tratamientos`
    ;;
  view_label: "Datos CAMPAÑA"

  dimension: campania_key {
    hidden: yes
    type: number
    sql: ${TABLE}.campania_key ;;
  }

  dimension: canal_tratamiento {
    group_label: "Tratamientos Campaña"
    type: string
    sql: ${TABLE}.canal_tratamiento ;;
  }

  dimension: codigo_oferta {
    group_label: "Tratamientos Campaña"
    type: string
    sql: ${TABLE}.codigo_oferta ;;
  }

  dimension: codigo_tratamiento {
    group_label: "Tratamientos Campaña"
    type: string
    sql: ${TABLE}.codigo_tratamiento ;;
  }

  dimension: descripcion_oferta {
    group_label: "Tratamientos Campaña"
    type: string
    sql: ${TABLE}.descripcion_oferta ;;
  }

  dimension: nombre_oferta {
    group_label: "Tratamientos Campaña"
    type: string
    sql: ${TABLE}.nombre_oferta ;;
  }

  dimension: nombre_tratamiento {
    group_label: "Tratamientos Campaña"
    type: string
    sql: ${TABLE}.nombre_tratamiento ;;
  }

  dimension: tipo_oferta {
    group_label: "Tratamientos Campaña"
    type: string
    sql: ${TABLE}.tipo_oferta ;;
  }

  dimension: tratamiento_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tratamiento_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
