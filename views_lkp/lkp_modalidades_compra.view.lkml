view: lkp_modalidades_compra {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_modalidades_compra`
    ;;
    view_label: "Otras Dimensiones"

dimension: cantidad_cuotas {
  group_label: "Modalidades Compra"
  type: number
  sql: ${TABLE}.cantidad_cuotas ;;
}

dimension: modalidad_compra {
  group_label: "Modalidades Compra"
  type: string
  sql: ${TABLE}.modalidad_compra ;;
}

dimension: modalidad_compra_key {
  hidden: yes
  type: number
  sql: ${TABLE}.modalidad_compra_key ;;
}

dimension: modalidad_compra_source {
  group_label: "Modalidades Compra"
  type: string
  sql: ${TABLE}.modalidad_compra_source ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
