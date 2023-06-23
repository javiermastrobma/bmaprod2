view: lkp_estados_transferencias {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_estados_transferencias`
    ;;

  dimension: descripcion_estado_transferencia {
    view_label: "Otras Dimensiones"
    group_label: "Estados Transferencia"
    type: string
    sql: ${TABLE}.descripcion_estado_transferencia ;;
  }

  dimension: estado_transferencia_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_transferencia_key ;;
  }

  dimension: estado_transferencia_source {
    view_label: "Otras Dimensiones"
    group_label: "Estados Transferencia"
    type: string
    sql: ${TABLE}.estado_transferencia_source ;;
  }

  dimension: origen_transferencia {
    view_label: "Otras Dimensiones"
    group_label: "Estados Transferencia"
    type: string
    sql: ${TABLE}.origen_transferencia ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
