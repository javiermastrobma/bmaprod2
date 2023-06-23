view: lkp_origenes_captura {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_origenes_captura`
    ;;
  view_label: "Otras Dimensiones"

dimension: origen_captura_agrupamiento {
  group_label: "Orígenes Captura"
  type: string
  sql: ${TABLE}.origen_captura_agrupamiento ;;
}

dimension: origen_captura_descripcion {
  group_label: "Orígenes Captura"
  type: string
  sql: ${TABLE}.origen_captura_descripcion ;;
}

dimension: origen_captura_key {
  hidden: yes
  type: number
  sql: ${TABLE}.origen_captura_key ;;
}

dimension: origen_captura_source {
  group_label: "Orígenes Captura"
  type: string
  sql: ${TABLE}.origen_captura_source ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
