view: lkp_escenarios_gestion_mora {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_escenarios_gestion_mora`
    ;;
  view_label: "Otras Dimensiones"

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: codigo_escenario_gestion_mora {
    group_label: "Escenarios Gestión Mora"
    type: string
    sql: ${TABLE}.codigo_escenario_gestion_mora ;;
  }

  dimension: dias_tolerancia_promesa {
    group_label: "Escenarios Gestión Mora"
    type: number
    sql: ${TABLE}.dias_tolerancia_promesa ;;
  }

  dimension: escenario {
    group_label: "Escenarios Gestión Mora"
    type: string
    sql: ${TABLE}.escenario ;;
  }

  dimension: escenario_gestion_mora_key {
    hidden: yes
    type: number
    sql: ${TABLE}.escenario_gestion_mora_key ;;
  }

  dimension: escenario_gestion_mora_source {
    group_label: "Escenarios Gestión Mora"
    type: number
    sql: ${TABLE}.escenario_gestion_mora_source ;;
  }

  dimension: escenario_suspendido {
    group_label: "Escenarios Gestión Mora"
    type: string
    sql: ${TABLE}.escenario_suspendido ;;
  }

  dimension: nombre_corto_escenario {
    group_label: "Escenarios Gestión Mora"
    type: string
    sql: ${TABLE}.nombre_corto_escenario ;;
  }

  dimension: porcent_min_cobro_promesa {
    group_label: "Escenarios Gestión Mora"
    type: number
    sql: ${TABLE}.porcent_min_cobro_promesa ;;
  }

  dimension: porcent_min_nueva_promesa {
    group_label: "Escenarios Gestión Mora"
    type: number
    sql: ${TABLE}.porcent_min_nueva_promesa ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
