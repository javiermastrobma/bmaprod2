view: lkp_unidades_cobranza {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_unidades_cobranza`
    ;;

dimension: descripcion_unidad_cobro {
  view_label: "Otras Dimensiones"
  type: string
  sql: ${TABLE}.descripcion_unidad_cobro ;;
}

dimension: unidad_cobranza {
  view_label: "Otras Dimensiones"
  type: string
  sql: ${TABLE}.unidad_cobranza ;;
}

dimension: unidad_cobranza_key {
  hidden: yes
  type: number
  sql: ${TABLE}.unidad_cobranza_key ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
