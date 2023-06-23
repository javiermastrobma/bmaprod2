view: lkp_estados_polizas {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_estados_polizas`
    ;;
    view_label: "Datos SEGUROS"

  dimension: estado_poliza {
    group_label: "Estados Pólizas"
    type: string
    sql: ${TABLE}.estado_poliza ;;
  }

  dimension: estado_poliza_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_poliza_key ;;
  }

  dimension: estado_poliza_source {
    group_label: "Estados Pólizas"
    type: number
    sql: ${TABLE}.estado_poliza_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
