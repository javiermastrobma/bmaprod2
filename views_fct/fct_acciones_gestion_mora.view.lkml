view: fct_acciones_gestion_mora {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_acciones_gestion_mora`
    ;;
    view_label: " Fct Acciones Gestión Mora"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_acciones_gestion_mora s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

  dimension: agencia_key {
    hidden: yes
    type: number
    sql: ${TABLE}.agencia_key ;;
  }

  dimension: banca_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banca_key ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: escenario_key {
    hidden: yes
    type: number
    sql: ${TABLE}.escenario_key ;;
  }

  dimension: estado_accion {
    type: string
    sql: ${TABLE}.estado_accion ;;
  }

  dimension: estado_gestion_mora_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_gestion_mora_key ;;
  }

  dimension: estrategia_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estrategia_key ;;
  }

  dimension: evento_key {
    hidden: yes
    type: number
    sql: ${TABLE}.evento_key ;;
  }

  dimension_group: fecha_generacion_accion {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.fecha_generacion_accion ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension_group: fecha_respuesta {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.fecha_respuesta ;;
  }

  dimension_group: fecha_vencimiento {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.fecha_vencimiento ;;
  }

  dimension: monto_costo_accion {
    type: number
    sql: ${TABLE}.monto_costo_accion ;;
  }

  dimension: monto_deuda_a_vencer {
    type: number
    sql: ${TABLE}.monto_deuda_a_vencer ;;
  }

  dimension: monto_deuda_vencida {
    type: number
    sql: ${TABLE}.monto_deuda_vencida ;;
  }

  dimension: regla_gestion_mora_key {
    hidden: yes
    type: number
    sql: ${TABLE}.regla_gestion_mora_key ;;
  }

  dimension: residencia_key {
    hidden: yes
    type: number
    sql: ${TABLE}.residencia_key ;;
  }

  dimension: sector_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sector_key ;;
  }

  dimension: sucursal_reclamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_reclamo_key ;;
  }

  dimension: tipo_accion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_accion_key ;;
  }

  dimension: tipo_respuesta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_respuesta_key ;;
  }

  dimension: tramo_mora_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tramo_mora_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
