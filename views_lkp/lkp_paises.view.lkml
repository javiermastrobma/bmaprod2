view: lkp_paises {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_paises`
    ;;
    view_label: "Otras Dimensiones"

dimension: pais {
  group_label: "Países"
  type: string
  sql: ${TABLE}.pais ;;
}

dimension: pais_key {
  hidden: yes
  type: number
  sql: ${TABLE}.pais_key ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
