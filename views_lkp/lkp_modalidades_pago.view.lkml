view: lkp_modalidades_pago {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_modalidades_pago`
    ;;
  view_label: "Otras Dimensiones"

dimension: modalidad_pago {
  group_label: "Modalidades Pago"
  type: string
  sql: ${TABLE}.modalidad_pago ;;
}

dimension: modalidad_pago_key {
  hidden: yes
  type: number
  sql: ${TABLE}.modalidad_pago_key ;;
}

dimension: modalidad_pago_source {
  group_label: "Modalidades Pago"
  type: number
  sql: ${TABLE}.modalidad_pago_source ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
