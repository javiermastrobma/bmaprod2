view: lkp_productos_asociados_tramites {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_productos_asociados_tramites`
    ;;
    view_label: "Otras Dimensiones"

  dimension: cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }

  dimension: cuenta_vinculada_source {
    group_label: "Productos Asociados Trámites"
    type: string
    sql: ${TABLE}.cuenta_vinculada_source ;;
  }

  dimension: mercado_source {
    group_label: "Productos Asociados Trámites"
    type: string
    sql: ${TABLE}.mercado_source ;;
  }

  dimension: numero_source {
    group_label: "Productos Asociados Trámites"
    type: string
    sql: ${TABLE}.numero_source ;;
  }

  dimension: producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_key ;;
  }

  dimension: producto_paquete_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_paquete_key ;;
  }

  dimension: producto_source {
    group_label: "Productos Asociados Trámites"
    type: string
    sql: ${TABLE}.producto_source ;;
  }

  dimension: producto_vinculado_source {
    group_label: "Productos Asociados Trámites"
    type: number
    sql: ${TABLE}.producto_vinculado_source ;;
  }

  dimension: submercado_source {
    group_label: "Productos Asociados Trámites"
    type: string
    sql: ${TABLE}.submercado_source ;;
  }

  dimension: tipo_operacion_source {
    group_label: "Productos Asociados Trámites"
    type: string
    sql: ${TABLE}.tipo_operacion_source ;;
  }

  dimension: tramite_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tramite_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
