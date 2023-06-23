view: lkp_firmantes_valores {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_firmantes_valores`
    ;;

  dimension: clasificacion_firmante {
    type: string
    sql: ${TABLE}.clasificacion_firmante ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: datos_firmante {
    type: string
    sql: ${TABLE}.datos_firmante ;;
  }

  dimension: firmante_key {
    hidden: yes
    type: number
    sql: ${TABLE}.firmante_key ;;
  }

  dimension: nro_documento {
    type: number
    sql: ${TABLE}.nro_documento ;;
  }

  dimension: tipo_documento {
    type: string
    sql: ${TABLE}.tipo_documento ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
