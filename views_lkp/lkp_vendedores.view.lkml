view: lkp_vendedores {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_vendedores`
    ;;
  view_label: "Datos DIGITAL"

dimension: login_vendedor {
  group_label: "Vendedores"
  type: string
  sql: ${TABLE}.login_vendedor ;;
}

dimension: sistema_origen {
  group_label: "Vendedores"
  type: string
  sql: ${TABLE}.sistema_origen ;;
}

dimension: vendedor {
  group_label: "Vendedores"
  type: string
  sql: ${TABLE}.vendedor ;;
}

dimension: vendedor_key {
  hidden: yes
  type: number
  sql: ${TABLE}.vendedor_key ;;
}

dimension: vendedor_source {
  group_label: "Vendedores"
  type: string
  sql: ${TABLE}.vendedor_source ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
