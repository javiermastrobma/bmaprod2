view: lkp_canales_captacion {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_canales_captacion`
    ;;

  dimension: canal_captacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.canal_captacion_key ;;
  }

  dimension: codigo_canal_source {
    type: string
    sql: ${TABLE}.codigo_canal_source ;;
  }

  dimension: descripcion_canal {
    type: string
    sql: ${TABLE}.descripcion_canal ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
