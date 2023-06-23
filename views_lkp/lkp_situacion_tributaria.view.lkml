view: lkp_situacion_tributaria {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_situacion_tributaria`
    ;;
  view_label: "Otras Dimensiones"

  dimension: codigo_dgi {
    group_label: "Situación Tributaria"
    type: string
    sql: ${TABLE}.codigo_dgi ;;
  }

  dimension: codigo_iva {
    group_label: "Situación Tributaria"
    type: string
    sql: ${TABLE}.codigo_iva ;;
  }

  dimension: descripcion_dgi {
    group_label: "Situación Tributaria"
    type: string
    sql: ${TABLE}.descripcion_dgi ;;
  }

  dimension: descripcion_iva {
    group_label: "Situación Tributaria"
    type: string
    sql: ${TABLE}.descripcion_iva ;;
  }

  dimension: situacion_tributaria_key {
    hidden: yes
    type: number
    sql: ${TABLE}.situacion_tributaria_key ;;
  }

  dimension: situacion_tributaria_source {
    group_label: "Situación Tributaria"
    type: string
    sql: ${TABLE}.situacion_tributaria_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
