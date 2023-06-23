view: lkp_tipos_permisionario {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_tipos_permisionario`
    ;;
  view_label: "Otras Dimensiones"

  dimension: codigo_tipo {
    group_label: "Permisionario"
    type: number
    sql: ${TABLE}.codigo_tipo ;;
  }

  dimension: descripcion_tipo {
    group_label: "Permisionario"
    type: string
    sql: ${TABLE}.descripcion_tipo ;;
  }

  dimension: tipo_permisionario_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_permisionario_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
