view: lkp_estados_tramite {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_estados_tramite`
    ;;
    view_label: "Otras Dimensiones"

  dimension: estado_tramite {
    group_label: "Estados Trámite"
    type: string
    sql: ${TABLE}.estado_tramite ;;
  }

  dimension: estado_tramite_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_tramite_key ;;
  }

  dimension: estado_tramite_source {
    group_label: "Estados Trámite"
    type: string
    sql: ${TABLE}.estado_tramite_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
