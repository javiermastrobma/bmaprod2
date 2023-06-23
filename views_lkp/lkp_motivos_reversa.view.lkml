view: lkp_motivos_reversa {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_motivos_reversa`
    ;;
    view_label: "Otras Dimensiones"

dimension: motivo_reversa {
  group_label: "Motivos Reserva"
  type: string
  sql: ${TABLE}.motivo_reversa ;;
}

dimension: motivo_reversa_key {
  hidden: yes
  type: number
  sql: ${TABLE}.motivo_reversa_key ;;
}

dimension: motivo_reversa_source {
  group_label: "Motivos Reserva"
  type: string
  sql: ${TABLE}.motivo_reversa_source ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
