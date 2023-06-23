view: lkp_tipos_respuesta_pma {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_tipos_respuesta_pma`
    ;;
  view_label: "Otras Dimensiones"

  dimension: descripcion {
    group_label: "PMA"
    type: string
    sql: ${TABLE}.descripcion ;;
  }

  dimension: tipo_respuesta_pma_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_respuesta_pma_key ;;
  }

  dimension: tipo_respuesta_pma_source {
    group_label: "PMA"
    type: string
    sql: ${TABLE}.tipo_respuesta_pma_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
