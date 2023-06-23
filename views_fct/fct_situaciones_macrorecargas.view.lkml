view: fct_situaciones_macrorecargas {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_situaciones_macrorecargas`
    ;;
    view_label: " Fct Situaciones Macrorecargas"

dimension: archivo_id {
  type: string
  sql: ${TABLE}.archivo_id ;;
}

dimension: banco_key {
  hidden: yes
  type: number
  sql: ${TABLE}.banco_key ;;
}

dimension: cliente_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cliente_key ;;
}

dimension: cliente_source {
  type: number
  sql: ${TABLE}.cliente_source ;;
}

dimension: cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cuenta_key ;;
}

dimension: cuenta_source {
  type: string
  sql: ${TABLE}.cuenta_source ;;
}

dimension: estado_cuenta_tc_key {
  hidden: yes
  type: number
  sql: ${TABLE}.estado_cuenta_tc_key ;;
}

dimension: fecha_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_key ;;
}

dimension: marca_source {
  type: string
  sql: ${TABLE}.marca_source ;;
}

dimension: producto_key {
  hidden: yes
  type: number
  sql: ${TABLE}.producto_key ;;
}

measure: count {
  type: count
  drill_fields: []
}
}
