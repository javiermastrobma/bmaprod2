view: lkp_oficiales_cuenta_embebed {
  sql_table_name: `bm-gcp-p1-dw.looker_embebed.lkp_oficiales_cuenta`
    ;;

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: identificacion_usuario {
    view_label: "Datos CLIENTE"
    group_label: "Oficial Cuenta"
    type: string
    sql: ${TABLE}.identificacion_usuario ;;
  }

  dimension: oficial_cuenta {
    view_label: "Datos CLIENTE"
    group_label: "Oficial Cuenta"
    type: string
    sql: ${TABLE}.oficial_cuenta ;;
  }

  dimension: oficial_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_cuenta_key ;;
  }

  dimension: oficial_cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_cuenta_key ;;
  }

  dimension: oficial_source {
    view_label: "Datos CLIENTE"
    group_label: "Oficial Cuenta"
    type: string
    sql: ${TABLE}.oficial_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
