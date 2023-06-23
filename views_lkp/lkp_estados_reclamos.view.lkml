view: lkp_estados_reclamos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_estados_reclamos`
    ;;
  view_label: "Datos RECLAMO"

  dimension: agrupacion_subestado {
    group_label: "Estados Reclamo"
    type: string
    sql: ${TABLE}.agrupacion_subestado ;;
  }

  dimension: descripcion_estado {
    group_label: "Estados Reclamo"
    type: string
    sql: ${TABLE}.descripcion_estado ;;
  }

  dimension: descripcion_subestado {
    group_label: "Estados Reclamo"
    type: string
    sql: ${TABLE}.descripcion_subestado ;;
  }

  dimension: estado_reclamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_reclamo_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
