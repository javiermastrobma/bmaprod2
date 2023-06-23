view: fct_situacion_diaria_gestion_mora {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_situacion_diaria_gestion_mora`
    ;;
    view_label: " Fct Situación Diaria Gestión Mora"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_situacion_diaria_gestion_mora s
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

  dimension: cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }

  dimension: cuenta_tc_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_tc_key ;;
  }

  dimension: deuda_total_cliente {
    type: number
    sql: ${TABLE}.deuda_total_cliente ;;
  }

  dimension: dias_ingreso_a_mora {
    type: number
    sql: ${TABLE}.dias_ingreso_a_mora ;;
  }

  dimension: entidad_key {
    hidden: yes
    type: number
    sql: ${TABLE}.entidad_key ;;
  }

  dimension: escenario_key {
    hidden: yes
    type: number
    sql: ${TABLE}.escenario_key ;;
  }

  dimension: especie_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_key ;;
  }

  dimension: estado_gestion_mora_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_gestion_mora_key ;;
  }

  dimension: fecha_cierre_emerix_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_cierre_emerix_key ;;
  }

  dimension: fecha_ingreso_agencia_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_ingreso_agencia_key ;;
  }

  dimension_group: fecha_inicio_mora {
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
    sql: ${TABLE}.fecha_inicio_mora ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: fecha_ultima_accion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_ultima_accion_key ;;
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

  dimension: monto_deuda_a_vencer {
    type: number
    sql: ${TABLE}.monto_deuda_a_vencer ;;
  }

  dimension: monto_deuda_contable {
    type: number
    sql: ${TABLE}.monto_deuda_contable ;;
  }

  dimension: monto_deuda_prevision {
    type: number
    sql: ${TABLE}.monto_deuda_prevision ;;
  }

  dimension: monto_deuda_total {
    type: number
    sql: ${TABLE}.monto_deuda_total ;;
  }

  dimension: monto_deuda_vencida {
    type: number
    sql: ${TABLE}.monto_deuda_vencida ;;
  }

  dimension: producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_key ;;
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

  dimension: situacion_tributaria_key {
    hidden: yes
    type: number
    sql: ${TABLE}.situacion_tributaria_key ;;
  }

  dimension: sucursal_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: tramo_mora_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tramo_mora_key ;;
  }

  dimension: valor_key {
    hidden: yes
    type: number
    sql: ${TABLE}.valor_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
