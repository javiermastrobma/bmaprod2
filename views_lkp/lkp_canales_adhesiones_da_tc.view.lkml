view: lkp_canales_adhesiones_da_tc {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_canales_adhesiones_da_tc`
    ;;

dimension: canal_adhesion_da_descripcion {
  view_label: "Otras Dimensiones"
  group_label: "Canales Adhesión DA TC"
  type: string
  sql: ${TABLE}.canal_adhesion_da_descripcion ;;
}

dimension: canal_adhesion_da_key {
  hidden: yes
  type: number
  sql: ${TABLE}.canal_adhesion_da_key ;;
}

dimension: canal_adhesion_da_source {
  view_label: "Otras Dimensiones"
  group_label: "Canales Adhesión DA TC"
  type: number
  sql: ${TABLE}.canal_adhesion_da_source ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
