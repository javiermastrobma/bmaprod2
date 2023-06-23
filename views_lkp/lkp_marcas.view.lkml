view: lkp_marcas {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_marcas`
    ;;

dimension: marca {
  view_label: "Datos CUENTA TARJETA CRÉDITO"
  group_label: "Marcas"
  type: string
  sql: ${TABLE}.marca ;;
}

dimension: marca_key {
  hidden: yes
  type: number
  sql: ${TABLE}.marca_key ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
