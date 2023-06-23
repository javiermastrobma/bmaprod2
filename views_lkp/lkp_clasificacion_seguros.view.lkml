view: lkp_clasificacion_seguros {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_clasificacion_seguros`
    ;;
    view_label: "Datos SEGUROS"

  dimension: clasificacion_abreviatura {
    group_label: "Clasificación Seguros"
    type: string
    sql: ${TABLE}.clasificacion_abreviatura ;;
  }

  dimension: clasificacion_banca {
    group_label: "Clasificación Seguros"
    type: string
    sql: ${TABLE}.clasificacion_banca ;;
  }

  dimension: clasificacion_cantidad_cuotas {
    group_label: "Clasificación Seguros"
    type: number
    sql: ${TABLE}.clasificacion_cantidad_cuotas ;;
  }

  dimension: clasificacion_poliza_tradicional {
    group_label: "Clasificación Seguros"
    type: string
    sql: ${TABLE}.clasificacion_poliza_tradicional ;;
  }

  dimension: clasificacion_seguros {
    group_label: "Clasificación Seguros"
    type: string
    sql: ${TABLE}.clasificacion_seguros ;;
  }

  dimension: clasificacion_seguros_key {
    hidden: yes
    type: number
    sql: ${TABLE}.clasificacion_seguros_key ;;
  }

  dimension: clasificacion_seguros_source {
    group_label: "Clasificación Seguros"
    type: number
    sql: ${TABLE}.clasificacion_seguros_source ;;
  }

  dimension: clasificacion_tipo_comision {
    group_label: "Clasificación Seguros"
    type: string
    sql: ${TABLE}.clasificacion_tipo_comision ;;
  }

  dimension: clasificacion_valor_comision {
    group_label: "Clasificación Seguros"
    type: number
    sql: ${TABLE}.clasificacion_valor_comision ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
