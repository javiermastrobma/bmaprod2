view: lkp_estados_td {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_estados_td`
    ;;
    view_label: "Datos CUENTA TARJETA DÉBITO"

dimension: estado {
  group_label: "Estado Tarjeta Débito"
  type: string
  sql: ${TABLE}.estado ;;
}

dimension: estado_td_key {
  hidden: yes
  type: number
  sql: ${TABLE}.estado_td_key ;;
}

dimension: estado_td_source {
  group_label: "Estado Tarjeta Débito"
  type: string
  sql: ${TABLE}.estado_td_source ;;
}

dimension: motivo {
  group_label: "Estado Tarjeta Débito"
  type: string
  sql: ${TABLE}.motivo ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
