view: lkp_estados_transferencias_datanet {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_estados_transferencias_datanet`
    ;;
  view_label: "Otras Dimensiones"

  dimension: codigo_estado_transferencia {
    group_label: "Estados Transferencias Datanet"
    type: string
    sql: ${TABLE}.codigo_estado_transferencia ;;
  }

  dimension: estado_transferencia {
    group_label: "Estados Transferencias Datanet"
    type: string
    sql: ${TABLE}.estado_transferencia ;;
  }

  dimension: estado_transferencia_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_transferencia_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
