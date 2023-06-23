view: lkp_companias_seguros {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_companias_seguros`
    ;;
    view_label: "Datos SEGUROS"

dimension: cliente_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cliente_key ;;
}

dimension: codigo_cliente {
  group_label: "Compañías Seguros"
  type: number
  sql: ${TABLE}.codigo_cliente ;;
}

dimension: compania {
  group_label: "Compañías Seguros"
  type: string
  sql: ${TABLE}.compania ;;
}

dimension: compania_key {
  hidden: yes
  type: number
  sql: ${TABLE}.compania_key ;;
}

dimension: compania_source {
  group_label: "Compañías Seguros"
  type: number
  sql: ${TABLE}.compania_source ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
