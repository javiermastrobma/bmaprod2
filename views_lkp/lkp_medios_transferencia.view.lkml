view: lkp_medios_transferencia {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_medios_transferencia`
    ;;

  dimension: medio_transferencia {
    view_label: "Otras Dimensiones"
    group_label: "Medios Transferencia"
    type: string
    sql: ${TABLE}.medio_transferencia ;;
  }

  dimension: medio_transferencia_key {
    hidden: yes
    type: number
    sql: ${TABLE}.medio_transferencia_key ;;
  }

  dimension: medio_transferencia_source {
    view_label: "Otras Dimensiones"
    group_label: "Medios Transferencia"
    type: string
    sql: ${TABLE}.medio_transferencia_source ;;
  }

  dimension: origen_transferencia {
    view_label: "Otras Dimensiones"
    group_label: "Medios Transferencia"
    type: string
    sql: ${TABLE}.origen_transferencia ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
