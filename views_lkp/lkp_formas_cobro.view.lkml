view: lkp_formas_cobro {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_formas_cobro`
    ;;
  view_label: "Otras Dimensiones"

  dimension: especie {
    group_label: "Formas Cobro"
    type: string
    sql: ${TABLE}.especie ;;
  }

  dimension: forma_cobro {
    group_label: "Formas Cobro"
    type: string
    sql: ${TABLE}.forma_cobro ;;
  }

  dimension: forma_cobro_key {
    hidden: yes
    type: number
    sql: ${TABLE}.forma_cobro_key ;;
  }

  dimension: forma_cobro_source {
    group_label: "Formas Cobro"
    type: string
    sql: ${TABLE}.forma_cobro_source ;;
  }

  dimension: tipo_forma_cobro {
    group_label: "Formas Cobro"
    type: string
    sql: ${TABLE}.tipo_forma_cobro ;;
  }

  dimension: tipo_producto_cuenta_debito {
    group_label: "Formas Cobro"
    type: string
    sql: ${TABLE}.tipo_producto_cuenta_debito ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
