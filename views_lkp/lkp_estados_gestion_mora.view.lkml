view: lkp_estados_gestion_mora {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_estados_gestion_mora`
    ;;
  view_label: "Otras Dimensiones"

  dimension: activo {
    group_label: "Estados Gestión Mora"
    type: string
    sql: ${TABLE}.activo ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: codigo_estado_gestion_mora {
    group_label: "Estados Gestión Mora"
    type: string
    sql: ${TABLE}.codigo_estado_gestion_mora ;;
  }

  dimension: estado {
    group_label: "Estados Gestión Mora"
    type: string
    sql: ${TABLE}.estado ;;
  }

  dimension: estado_gestion_mora_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_gestion_mora_key ;;
  }

  dimension: estado_gestion_mora_source {
    group_label: "Estados Gestión Mora"
    type: number
    sql: ${TABLE}.estado_gestion_mora_source ;;
  }

  dimension: nombre_corto_estado {
    group_label: "Estados Gestión Mora"
    type: string
    sql: ${TABLE}.nombre_corto_estado ;;
  }

  dimension: orden_estado {
    group_label: "Estados Gestión Mora"
    type: number
    sql: ${TABLE}.orden_estado ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
