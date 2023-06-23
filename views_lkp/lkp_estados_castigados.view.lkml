view: lkp_estados_castigados {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_estados_castigados`
    ;;

dimension: estado_castigado {
  view_label: "Otras Dimensiones"
  group_label: "Estados"
  type: string
  sql: ${TABLE}.estado_castigado ;;
}

dimension: estado_castigado_key {
  hidden: yes
  type: number
  sql: ${TABLE}.estado_castigado_key ;;
}

dimension: estado_castigado_nombre {
  view_label: "Otras Dimensiones"
  group_label: "Estados"
  type: string
  sql: ${TABLE}.estado_castigado_nombre ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
