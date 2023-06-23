view: lkp_tipos_transferencia {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_tipos_transferencia`
    ;;

dimension: tipo_transferencia {
  view_label: "Otras Dimensiones"
  type: string
  sql: ${TABLE}.tipo_transferencia ;;
}

dimension: tipo_transferencia_key {
  hidden: yes
  primary_key: yes
  type: number
  sql: ${TABLE}.tipo_transferencia_key ;;
}

dimension: tipo_transferencia_source {
  hidden: yes
  type: string
  sql: ${TABLE}.tipo_transferencia_source ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
