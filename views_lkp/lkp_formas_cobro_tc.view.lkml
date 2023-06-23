view: lkp_formas_cobro_tc {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_formas_cobro_tc`
    ;;
  view_label: "Datos CUENTA TARJETA CRÉDITO"

  dimension: forma_cobro_tc_agrupamiento {
    group_label: "Formas Cobro TC"
    type: string
    sql: ${TABLE}.forma_cobro_tc_agrupamiento ;;
  }

  dimension: forma_cobro_tc_descripcion {
    group_label: "Formas Cobro TC"
    type: string
    sql: ${TABLE}.forma_cobro_tc_descripcion ;;
  }

  dimension: forma_cobro_tc_key {
    hidden: yes
    type: number
    sql: ${TABLE}.forma_cobro_tc_key ;;
  }

  dimension: forma_cobro_tc_source {
    group_label: "Formas Cobro TC"
    type: string
    sql: ${TABLE}.forma_cobro_tc_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
