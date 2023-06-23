view: fct_presupuesto {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_presupuesto`
    ;;
    view_label: " Fct Presupuesto"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_presupuesto s
      LEFT JOIN lkp_fechas f ON s.fecha_transaccion_key = f.fecha_key) ;;
  }
  dimension: area_destino_key {
    hidden: yes
    type: number
    sql: ${TABLE}.area_destino_key ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: cotizacion {
    type: number
    sql: ${TABLE}.cotizacion ;;
  }

  dimension: escenario_presupuesto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.escenario_presupuesto_key ;;
  }

  dimension: especie_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_key ;;
  }

  dimension: estado_presupuesto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_presupuesto_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: plan_cuentas_key {
    hidden: yes
    type: number
    sql: ${TABLE}.plan_cuentas_key ;;
  }

  dimension: presupuestado_a_distribuir {
    type: number
    sql: ${TABLE}.presupuestado_a_distribuir ;;
  }

  dimension: presupuestado_directo {
    type: number
    sql: ${TABLE}.presupuestado_directo ;;
  }

  dimension: presupuestado_por_distribucion {
    type: number
    sql: ${TABLE}.presupuestado_por_distribucion ;;
  }

  dimension: presupuestado_total {
    type: number
    sql: ${TABLE}.presupuestado_total ;;
  }

  dimension: version_presupuesto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.version_presupuesto_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
