view: lkp_situaciones_deudor_banco {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_situaciones_deudor_banco`
    ;;

dimension: clasificacion_situacion {
  view_label: "Otras Dimensiones"
  group_label: "Situación Deudor Banco"
  type: string
  sql: ${TABLE}.clasificacion_situacion ;;
}

dimension: situacion {
  view_label: "Otras Dimensiones"
  group_label: "Situación Deudor Banco"
  type: string
  sql: ${TABLE}.situacion ;;
}

dimension: situacion_bcra {
  view_label: "Otras Dimensiones"
  group_label: "Situación Deudor Banco"
  type: string
  sql: ${TABLE}.situacion_bcra ;;
}

dimension: situacion_deudor_banco_key {
  hidden: yes
  type: number
  sql: ${TABLE}.situacion_deudor_banco_key ;;
}

dimension: situacion_deudor_banco_source {
  view_label: "Otras Dimensiones"
  group_label: "Situación Deudor Banco"
  type: number
  sql: ${TABLE}.situacion_deudor_banco_source ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
