view: lkp_tipos_cuenta {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_tipos_cuenta`
    ;;

dimension: tipo_cuenta {
  view_label: "Otras Dimensiones"
  group_label: "Tipo Cuenta"
  type: string
  sql: ${TABLE}.tipo_cuenta ;;
}

dimension: tipo_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.tipo_cuenta_key ;;
}

dimension: tipo_cuenta_source {
  view_label: "Otras Dimensiones"
  group_label: "Tipo Cuenta"
  type: string
  sql: ${TABLE}.tipo_cuenta_source ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
