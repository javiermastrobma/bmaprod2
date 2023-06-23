view: lkp_causales {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_causales`
    ;;

dimension: agrupacion_1 {
  view_label: "Datos CAUSAL"
  group_label: "Causal"
  type: string
  sql: ${TABLE}.agrupacion_1 ;;
}

dimension: agrupacion_2 {
  view_label: "Datos CAUSAL"
  group_label: "Causal"
  type: string
  sql: ${TABLE}.agrupacion_2 ;;
}

dimension: agrupacion_3 {
  view_label: "Datos CAUSAL"
  group_label: "Causal"
  type: string
  sql: ${TABLE}.agrupacion_3 ;;
}

dimension: agrupacion_4 {
  view_label: "Datos CAUSAL"
  group_label: "Causal"
  type: string
  sql: ${TABLE}.agrupacion_4 ;;
}

dimension: agrupacion_cash_nivel_1 {
  view_label: "Datos CAUSAL"
  group_label: "Causal"
  type: string
  sql: ${TABLE}.agrupacion_cash_nivel_1 ;;
}

dimension: agrupacion_cash_nivel_2 {
  view_label: "Datos CAUSAL"
  group_label: "Causal"
  type: string
  sql: ${TABLE}.agrupacion_cash_nivel_2 ;;
}

dimension: agrupacion_cash_nivel_3 {
  view_label: "Datos CAUSAL"
  group_label: "Causal"
  type: string
  sql: ${TABLE}.agrupacion_cash_nivel_3 ;;
}

dimension: causal {
  view_label: "Datos CAUSAL"
  group_label: "Causal"
  type: number
  sql: ${TABLE}.causal ;;
}

dimension: causal_key {
  hidden: yes
  primary_key: yes
  type: number
  sql: ${TABLE}.causal_key ;;
}

dimension: descripcion_causal {
  view_label: "Datos CAUSAL"
  group_label: "Causal"
  type: string
  sql: ${TABLE}.descripcion_causal ;;
}

dimension: subtema_1 {
  view_label: "Datos CAUSAL"
  group_label: "Causal"
  type: string
  sql: ${TABLE}.subtema_1 ;;
}

dimension: subtema_2 {
  view_label: "Datos CAUSAL"
  group_label: "Causal"
  type: string
  sql: ${TABLE}.subtema_2 ;;
}

dimension: tema_principal {
  view_label: "Datos CAUSAL"
  group_label: "Causal"
  type: string
  sql: ${TABLE}.tema_principal ;;
}

dimension: tipo_transaccion {
  view_label: "Datos CAUSAL"
  group_label: "Causal"
  type: number
  sql: ${TABLE}.tipo_transaccion ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
