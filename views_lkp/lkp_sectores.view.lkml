view: lkp_sectores {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_sectores`
    ;;

dimension: jurisdiccion {
  view_label: "Otras Dimensiones"
  group_label: "Sector"
  type: string
  sql: ${TABLE}.jurisdiccion ;;
}

dimension: sector {
  view_label: "Otras Dimensiones"
  group_label: "Sector"
  type: string
  sql: ${TABLE}.sector ;;
}

dimension: sector_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sector_key ;;
}

dimension: sector_source {
  view_label: "Otras Dimensiones"
  group_label: "Sector"
  type: number
  sql: ${TABLE}.sector_source ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
