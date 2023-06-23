view: lkp_canales_venta {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_canales_venta`
    ;;
    view_label: "Otras Dimensiones"

dimension: canal {
  group_label: "Canales Venta"
  type: string
  sql: ${TABLE}.canal ;;
}

dimension: canal_source {
  group_label: "Canales Venta"
  type: string
  sql: ${TABLE}.canal_source ;;
}

dimension: canal_venta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.canal_venta_key ;;
}

dimension: subcanal {
  group_label: "Canales Venta"
  type: string
  sql: ${TABLE}.subcanal ;;
}

dimension: subcanal_source {
  group_label: "Canales Venta"
  type: string
  sql: ${TABLE}.subcanal_source ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
