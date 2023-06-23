view: lkp_ri_calificaciones_lineas_sl {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_ri_calificaciones_lineas_sl`
    ;;
  view_label: "Datos CALIFICACIONES DE RIESGO"

  dimension: calificacion_linea_sl_key {
    hidden: yes
    type: number
    sql: ${TABLE}.calificacion_linea_sl_key ;;
  }

  dimension: codigo_linea_source {
    group_label: "Líneas"
    type: number
    sql: ${TABLE}.codigo_linea_source ;;
  }

  dimension: codigo_modulo_source {
    group_label: "Líneas"
    type: string
    sql: ${TABLE}.codigo_modulo_source ;;
  }

  dimension: codigo_sublinea_source {
    group_label: "Líneas"
    type: number
    sql: ${TABLE}.codigo_sublinea_source ;;
  }

  dimension: descripcion_linea {
    group_label: "Líneas"
    type: string
    sql: ${TABLE}.descripcion_linea ;;
  }

  dimension: descripcion_sublinea {
    group_label: "Líneas"
    type: string
    sql: ${TABLE}.descripcion_sublinea ;;
  }

  dimension: mercado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.mercado_key ;;
  }

  dimension: producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
