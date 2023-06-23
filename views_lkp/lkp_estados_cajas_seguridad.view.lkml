view: lkp_estados_cajas_seguridad {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_estados_cajas_seguridad`
    ;;
  view_label: "Datos CAJA SEGURIDAD"

  dimension: estado_caja_seguridad {
    group_label: "Estados Cajas de Seguridad"
    type: string
    sql: ${TABLE}.estado_caja_seguridad ;;
  }

  dimension: estado_caja_seguridad_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_caja_seguridad_key ;;
  }

  dimension: estado_caja_seguridad_source {
    group_label: "Estados Cajas de Seguridad"
    type: string
    sql: ${TABLE}.estado_caja_seguridad_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
