view: lkp_estados_adhesion_da_tc {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_estados_adhesion_da_tc`
    ;;

dimension: estado_adhesion_da_descripcion {
  view_label: "Otras Dimensiones"
  group_label: "Estados Adhesión DA TC"
  type: string
  sql: ${TABLE}.estado_adhesion_da_descripcion ;;
}

dimension: estado_adhesion_da_key {
  hidden: yes
  type: number
  sql: ${TABLE}.estado_adhesion_da_key ;;
}

dimension: estado_adhesion_da_source {
  view_label: "Otras Dimensiones"
  group_label: "Estados Adhesión DA TC"
  type: number
  sql: ${TABLE}.estado_adhesion_da_source ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
