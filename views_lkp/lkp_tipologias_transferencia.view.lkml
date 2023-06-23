view: lkp_tipologias_transferencia {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_tipologias_transferencia`
    ;;

  dimension: origen_transferencia {
    view_label: "Otras Dimensiones"
    group_label: "Tipologías Rechazo"
    type: string
    sql: ${TABLE}.origen_transferencia ;;
  }

  dimension: producto_transferencia {
    view_label: "Otras Dimensiones"
    group_label: "Tipologías Rechazo"
    type: string
    sql: ${TABLE}.producto_transferencia ;;
  }

  dimension: producto_transferencia_source {
    view_label: "Otras Dimensiones"
    group_label: "Tipologías Rechazo"
    type: string
    sql: ${TABLE}.producto_transferencia_source ;;
  }

  dimension: subproducto_transferencia {
    view_label: "Otras Dimensiones"
    group_label: "Tipologías Rechazo"
    type: string
    sql: ${TABLE}.subproducto_transferencia ;;
  }

  dimension: subproducto_transferencia_source {
    view_label: "Otras Dimensiones"
    group_label: "Tipologías Rechazo"
    type: string
    sql: ${TABLE}.subproducto_transferencia_source ;;
  }

  dimension: tipo_operacion {
    view_label: "Otras Dimensiones"
    group_label: "Tipologías Rechazo"
    type: string
    sql: ${TABLE}.tipo_operacion ;;
  }

  dimension: tipo_operacion_source {
    view_label: "Otras Dimensiones"
    group_label: "Tipologías Rechazo"
    type: string
    sql: ${TABLE}.tipo_operacion_source ;;
  }

  dimension: tipologia_transferencia_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipologia_transferencia_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
