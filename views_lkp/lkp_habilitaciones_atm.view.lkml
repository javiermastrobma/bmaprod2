view: lkp_habilitaciones_atm {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_habilitaciones_atm`
    ;;
  view_label: "Otras Dimensiones"

dimension: cargo_uso_atm {
  group_label: "Habilitaciones ATM"
  type: string
  sql: ${TABLE}.cargo_uso_atm ;;
}

dimension: habilitacion_atm {
  group_label: "Habilitaciones ATM"
  type: string
  sql: ${TABLE}.habilitacion_atm ;;
}

dimension: habilitacion_atm_key {
  hidden: yes
  type: number
  sql: ${TABLE}.habilitacion_atm_key ;;
}

dimension: habilitacion_atm_source {
  group_label: "Habilitaciones ATM"
  type: string
  sql: ${TABLE}.habilitacion_atm_source ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
