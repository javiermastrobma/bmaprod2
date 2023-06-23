view: lkp_modelos_liquidacion_tc {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_modelos_liquidacion_tc`
    ;;

dimension: banco_key {
  hidden: yes
  type: number
  sql: ${TABLE}.banco_key ;;
}

dimension: clase_producto {
  view_label: "Datos CUENTA TARJETA CRÉDITO"
  group_label: "Modelos de Liquidación"
  type: string
  sql: ${TABLE}.clase_producto ;;
}

dimension: estado_habilitacion {
  view_label: "Datos CUENTA TARJETA CRÉDITO"
  group_label: "Modelos de Liquidación"
  type: string
  sql: ${TABLE}.estado_habilitacion ;;
}

dimension: modelo_liquidacion_tc {
  view_label: "Datos CUENTA TARJETA CRÉDITO"
  group_label: "Modelos de Liquidación"
  type: string
  sql: ${TABLE}.modelo_liquidacion_tc ;;
}

dimension: modelo_liquidacion_tc_key {
  hidden: yes
  type: number
  sql: ${TABLE}.modelo_liquidacion_tc_key ;;
}

dimension: modelo_liquidacion_tc_source {
  view_label: "Datos CUENTA TARJETA CRÉDITO"
  group_label: "Modelos de Liquidación"
  type: string
  sql: ${TABLE}.modelo_liquidacion_tc_source ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
