view: lkp_conceptos_valoracion_agrupaciones {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_conceptos_valoracion_agrupaciones`
    ;;

dimension: codigo_tipo_agrupacion {
  type: string
  sql: ${TABLE}.codigo_tipo_agrupacion ;;
}

dimension: concepto_valoracion_agrupacion_1 {
  type: string
  sql: ${TABLE}.concepto_valoracion_agrupacion_1 ;;
}

dimension: concepto_valoracion_agrupacion_2 {
  type: string
  sql: ${TABLE}.concepto_valoracion_agrupacion_2 ;;
}

dimension: concepto_valoracion_key {
  hidden: yes
  type: number
  sql: ${TABLE}.concepto_valoracion_key ;;
}

dimension: concepto_valoracion_tipo_agrupacion {
  type: string
  sql: ${TABLE}.concepto_valoracion_tipo_agrupacion ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
