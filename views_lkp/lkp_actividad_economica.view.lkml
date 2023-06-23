view: lkp_actividad_economica {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_actividad_economica`
    ;;

  dimension: actividad_economica_key {
    hidden: yes
    type: number
    sql: ${TABLE}.actividad_economica_key ;;
  }

  dimension: agrupacion_actividades_1 {
    type: string
    sql: ${TABLE}.agrupacion_actividades_1 ;;
  }

  dimension: agrupacion_actividades_2 {
    type: string
    sql: ${TABLE}.agrupacion_actividades_2 ;;
  }

  dimension: codigo_actividad {
    type: string
    sql: ${TABLE}.codigo_actividad ;;
  }

  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }

  dimension: grupo {
    type: string
    sql: ${TABLE}.grupo ;;
  }

  dimension: observacion {
    type: string
    sql: ${TABLE}.observacion ;;
  }

  dimension: seccion {
    type: string
    sql: ${TABLE}.seccion ;;
  }

  dimension: seccion_letra {
    type: string
    sql: ${TABLE}.seccion_letra ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
