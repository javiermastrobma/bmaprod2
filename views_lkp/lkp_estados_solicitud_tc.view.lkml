view: lkp_estados_solicitud_tc {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_estados_solicitud_tc`
    ;;
  view_label: "Datos CUENTA TARJETA CRÉDITO"

dimension: estado_solicitud_descripcion {
  group_label: "Estados Solicitud TC"
  type: string
  sql: ${TABLE}.estado_solicitud_descripcion ;;
}

dimension: estado_solicitud_key {
  hidden: yes
  type: number
  sql: ${TABLE}.estado_solicitud_key ;;
}

dimension: estado_solicitud_source {
  group_label: "Estados Solicitud TC"
  type: number
  sql: ${TABLE}.estado_solicitud_source ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
