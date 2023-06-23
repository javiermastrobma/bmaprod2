view: lkp_estados_cuenta {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_estados_cuenta`
    ;;

dimension: estado_cuenta {
  view_label: "Otras Dimensiones"
  group_label: "Estado Cuenta"
  type: string
  sql: ${TABLE}.estado_cuenta ;;
}

dimension: estado_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.estado_cuenta_key ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
