view: lkp_tipos_persona {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_tipos_persona`
    ;;

dimension: tipo_persona {
  view_label: "Datos CLIENTE"
  group_label: " Identificación Cliente"
  type: string
  sql: ${TABLE}.tipo_persona ;;
}

dimension: tipo_persona_key {
  hidden: yes
  type: number
  sql: ${TABLE}.tipo_persona_key ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
