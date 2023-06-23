view: lkp_motivos_rechazo {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_motivos_rechazo`
    ;;

  dimension: motivo_rechazo {
    view_label: "Otras Dimensiones"
    group_label: "Motivos Rechazo"
    type: string
    sql: ${TABLE}.motivo_rechazo ;;
  }

  dimension: motivo_rechazo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.motivo_rechazo_key ;;
  }

  dimension: motivo_rechazo_source {
    view_label: "Otras Dimensiones"
    group_label: "Motivos Rechazo"
    type: string
    sql: ${TABLE}.motivo_rechazo_source ;;
  }

  dimension: origen {
    view_label: "Otras Dimensiones"
    group_label: "Motivos Rechazo"
    type: string
    sql: ${TABLE}.origen ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
