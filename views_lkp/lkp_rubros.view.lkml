view: lkp_rubros {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_rubros`
    ;;
  view_label: "Datos COMERCIO"

dimension: rubro {
  group_label: "Rubro"
  type: string
  sql: ${TABLE}.rubro ;;
}

dimension: rubro_agrupado {
  group_label: "Rubro"
  type: string
  sql: ${TABLE}.rubro_agrupado ;;
}

dimension: rubro_agrupado_cyberbank {
  group_label: "Rubro"
  type: string
  sql: ${TABLE}.rubro_agrupado_cyberbank ;;
}

dimension: rubro_key {
  hidden: yes
  type: number
  sql: ${TABLE}.rubro_key ;;
}

dimension: rubro_source {
  group_label: "Rubro"
  type: string
  sql: ${TABLE}.rubro_source ;;
}

dimension: sub_rubro_agrupado {
  group_label: "Rubro"
  type: string
  sql: ${TABLE}.sub_rubro_agrupado ;;
}

dimension: tipo_de_rubro {
  group_label: "Rubro"
  type: string
  sql: ${TABLE}.tipo_de_rubro ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
