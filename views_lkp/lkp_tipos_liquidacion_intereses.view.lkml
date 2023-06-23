view: lkp_tipos_liquidacion_intereses {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_tipos_liquidacion_intereses`
    ;;

dimension: tipo_liquidacion_codigo {
  view_label: "Otras Dimensiones"
  group_label: "Tipos Liquidación Intereses"
  type: string
  sql: ${TABLE}.tipo_liquidacion_codigo ;;
}

dimension: tipo_liquidacion_descripcion {
  view_label: "Otras Dimensiones"
  group_label: "Tipos Liquidación Intereses"
  type: string
  sql: ${TABLE}.tipo_liquidacion_descripcion ;;
}

dimension: tipo_liquidacion_intereses_key {
  hidden: yes
  type: number
  sql: ${TABLE}.tipo_liquidacion_intereses_key ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
