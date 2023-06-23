view: lkp_tipos_movimiento_tc {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_tipos_movimiento_tc`
    ;;
  view_label: "Datos CUENTA TARJETA CRÉDITO"

dimension: ajuste {
  group_label: "Formas Cobro TC"
  type: string
  sql: ${TABLE}.ajuste ;;
}

dimension: grupo_movimiento_tc {
  group_label: "Formas Cobro TC"
  type: string
  sql: ${TABLE}.grupo_movimiento_tc ;;
}

dimension: tipo_movimiento_tc {
  group_label: "Formas Cobro TC"
  type: string
  sql: ${TABLE}.tipo_movimiento_tc ;;
}

dimension: tipo_movimiento_tc_key {
  hidden: yes
  type: number
  sql: ${TABLE}.tipo_movimiento_tc_key ;;
}

dimension: tipo_movimiento_tc_source {
  group_label: "Formas Cobro TC"
  type: string
  sql: ${TABLE}.tipo_movimiento_tc_source ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
