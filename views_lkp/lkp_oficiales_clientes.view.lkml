view: lkp_oficiales_clientes {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_oficiales_clientes`
    ;;

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: identificacion_usuario {
    type: string
    sql: ${TABLE}.identificacion_usuario ;;
  }

  dimension: oficial_cuenta {
    type: string
    sql: ${TABLE}.oficial_cuenta ;;
  }

  dimension: oficial_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_cuenta_key ;;
  }

  dimension: oficial_source {
    type: string
    sql: ${TABLE}.oficial_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
