view: lkp_formas_pago_recaudacion {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_formas_pago_recaudacion`
    ;;
  view_label: "Otras Dimensiones"

dimension: agrupacion_forma_pago_recaudacion {
  group_label: "Formas Pago Recaudación"
  type: string
  sql: ${TABLE}.agrupacion_forma_pago_recaudacion ;;
}

dimension: banco_key {
  hidden: yes
  type: number
  sql: ${TABLE}.banco_key ;;
}

dimension: descripcion {
  group_label: "Formas Pago Recaudación"
  type: string
  sql: ${TABLE}.descripcion ;;
}

dimension: forma_pago_recaudacion_key {
  hidden: yes
  type: number
  sql: ${TABLE}.forma_pago_recaudacion_key ;;
}

dimension: forma_pago_recaudacion_source {
  group_label: "Formas Pago Recaudación"
  type: string
  sql: ${TABLE}.forma_pago_recaudacion_source ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
