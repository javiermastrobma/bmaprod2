view: lkp_situaciones_deudor_bcra {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_situaciones_deudor_bcra`
    ;;

dimension: situacion {
  view_label: "Otras Dimensiones"
  group_label: "Situación Deudor BCRA"
  type: string
  sql: ${TABLE}.situacion ;;
}

dimension: situacion_bcra {
  view_label: "Otras Dimensiones"
  group_label: "Situación Deudor BCRA"
  type: string
  sql: ${TABLE}.situacion_bcra ;;
}

dimension: situacion_deudor_bcra_key {
  hidden: yes
  type: number
  sql: ${TABLE}.situacion_deudor_bcra_key ;;
}

dimension: situacion_deudor_bcra_source {
  view_label: "Otras Dimensiones"
  group_label: "Situación Deudor BCRA"
  type: number
  sql: ${TABLE}.situacion_deudor_bcra_source ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
