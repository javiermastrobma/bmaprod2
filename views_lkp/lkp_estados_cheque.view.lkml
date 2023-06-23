view: lkp_estados_cheque {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_estados_cheque`
    ;;
  view_label: "Otras Dimensiones"

dimension: cancela {
  group_label: "Estados Cheque"
  type: string
  sql: ${TABLE}.cancela ;;
}

dimension: estado_cheque_agrupamiento {
  group_label: "Estados Cheque"
  type: string
  sql: ${TABLE}.estado_cheque_agrupamiento ;;
}

dimension: estado_cheque_descripcion {
  group_label: "Estados Cheque"
  type: string
  sql: ${TABLE}.estado_cheque_descripcion ;;
}

dimension: estado_cheque_key {
  hidden: yes
  type: number
  sql: ${TABLE}.estado_cheque_key ;;
}

dimension: estado_cheque_source {
  group_label: "Estados Cheque"
  type: string
  sql: ${TABLE}.estado_cheque_source ;;
}

dimension: origen_dato {
  group_label: "Estados Cheque"
  type: string
  sql: ${TABLE}.origen_dato ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
