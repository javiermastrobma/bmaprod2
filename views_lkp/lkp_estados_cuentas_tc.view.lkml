view: lkp_estados_cuentas_tc {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_estados_cuentas_tc`
    ;;

  dimension: estado_cuenta_tc {
    view_label: "Datos CUENTA TARJETA CRÉDITO"
    group_label: "Estados Cuentas TC"
    type: string
    sql: ${TABLE}.estado_cuenta_tc ;;
  }

  dimension: estado_cuenta_tc_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_cuenta_tc_key ;;
  }

  dimension: estado_cuenta_tc_source {
    view_label: "Datos CUENTA TARJETA CRÉDITO"
    group_label: "Estados Cuentas TC"
    type: string
    sql: ${TABLE}.estado_cuenta_tc_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
