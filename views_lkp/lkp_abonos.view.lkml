view: lkp_abonos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_abonos`
    ;;

dimension: abono_key {
  hidden: yes
  type: number
  sql: ${TABLE}.abono_key ;;
}

dimension: con_abono {
  view_label: "Otras Dimensiones"
  group_label: "Con Abono"
  type: string
  sql: ${TABLE}.con_abono ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
