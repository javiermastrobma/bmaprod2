view: lkp_tipos_cartera {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_tipos_cartera`
    ;;

dimension: tipo_cartera {
  view_label: "Otras Dimensiones"
  group_label: "Tipo Cartera"
  type: string
  sql: ${TABLE}.tipo_cartera ;;
}

dimension: tipo_cartera_key {
  hidden: yes
  type: number
  sql: ${TABLE}.tipo_cartera_key ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
