view: lkp_estado_deuda {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_estado_deuda`
    ;;

  dimension: estado_deuda {
    view_label: "Otras Dimensiones"
    type: string
    sql: ${TABLE}.estado_deuda ;;
  }

  dimension: estado_deuda_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_deuda_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
