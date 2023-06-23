view: lkp_categorias_cuenta {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_categorias_cuenta`
    ;;
  view_label: "Datos CUENTA"

dimension: agrupacion_1 {
  group_label: "Categoría"
  type: string
  sql: ${TABLE}.agrupacion_1 ;;
}

dimension: agrupacion_2 {
  group_label: "Categoría"
  type: string
  sql: ${TABLE}.agrupacion_2 ;;
}

dimension: categoria_cuenta {
  group_label: "Categoría"
  type: string
  sql: ${TABLE}.categoria_cuenta ;;
}

dimension: categoria_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.categoria_cuenta_key ;;
}

dimension: categoria_cuenta_source {
  group_label: "Categoría"
  type: string
  sql: ${TABLE}.categoria_cuenta_source ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
