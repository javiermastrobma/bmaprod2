view: lkp_contratos_leasing {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_contratos_leasing`
    ;;
  view_label: "Otras Dimensiones"

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: canal_venta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.canal_venta_key ;;
  }

  dimension: canon_fijo {
    group_label: "Contratos Leasing"
    type: number
    sql: ${TABLE}.canon_fijo ;;
  }

  dimension: cantidad_alquileres_a_vencer {
    group_label: "Contratos Leasing"
    type: number
    sql: ${TABLE}.cantidad_alquileres_a_vencer ;;
  }

  dimension: cantidad_alquileres_pagados {
    group_label: "Contratos Leasing"
    type: number
    sql: ${TABLE}.cantidad_alquileres_pagados ;;
  }

  dimension: cantidad_alquileres_totales {
    group_label: "Contratos Leasing"
    type: number
    sql: ${TABLE}.cantidad_alquileres_totales ;;
  }

  dimension: cantidad_alquileres_vencidos {
    group_label: "Contratos Leasing"
    type: number
    sql: ${TABLE}.cantidad_alquileres_vencidos ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: contrato_leasing_key {
    hidden: yes
    type: number
    sql: ${TABLE}.contrato_leasing_key ;;
  }

  dimension: contrato_leasing_origen_key {
    hidden: yes
    type: number
    sql: ${TABLE}.contrato_leasing_origen_key ;;
  }

  dimension: cuenta_debito_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_debito_key ;;
  }

  dimension: cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }

  dimension: destino_leasing_key {
    hidden: yes
    type: number
    sql: ${TABLE}.destino_leasing_key ;;
  }

  dimension: dias_atraso {
    group_label: "Contratos Leasing"
    type: number
    sql: ${TABLE}.dias_atraso ;;
  }

  dimension: especie_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_key ;;
  }

  dimension: estado_leasing_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_leasing_key ;;
  }

  dimension_group: fecha_activacion {
    group_label: "Contratos Leasing"
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
    sql: ${TABLE}.fecha_activacion ;;
  }

  dimension_group: fecha_cancelacion {
    group_label: "Contratos Leasing"
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
    sql: ${TABLE}.fecha_cancelacion ;;
  }

  dimension_group: fecha_cesion {
    group_label: "Contratos Leasing"
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
    sql: ${TABLE}.fecha_cesion ;;
  }

  dimension_group: fecha_compra_bien {
    group_label: "Contratos Leasing"
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
    sql: ${TABLE}.fecha_compra_bien ;;
  }

  dimension_group: fecha_estado_aprobado {
    group_label: "Contratos Leasing"
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
    sql: ${TABLE}.fecha_estado_aprobado ;;
  }

  dimension: fecha_firma_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_firma_key ;;
  }

  dimension_group: fecha_opcion_compra {
    group_label: "Contratos Leasing"
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
    sql: ${TABLE}.fecha_opcion_compra ;;
  }

  dimension_group: fecha_suspension {
    group_label: "Contratos Leasing"
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
    sql: ${TABLE}.fecha_suspension ;;
  }

  dimension: id_contrato {
    group_label: "Contratos Leasing"
    type: number
    sql: ${TABLE}.id_contrato ;;
  }

  dimension: mercado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.mercado_key ;;
  }

  dimension: numero_contrato {
    group_label: "Contratos Leasing"
    type: number
    sql: ${TABLE}.numero_contrato ;;
  }

  dimension: oficial_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_cuenta_key ;;
  }

  dimension: penalidad_cancelacion_anticipada {
    group_label: "Contratos Leasing"
    type: number
    sql: ${TABLE}.penalidad_cancelacion_anticipada ;;
  }

  dimension: periodicidad_tasa {
    group_label: "Contratos Leasing"
    type: string
    sql: ${TABLE}.periodicidad_tasa ;;
  }

  dimension: plazo_contrato {
    group_label: "Contratos Leasing"
    type: number
    sql: ${TABLE}.plazo_contrato ;;
  }

  dimension: producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_key ;;
  }

  dimension: sucursal_captacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_captacion_key ;;
  }

  dimension: sucursal_cuenta_debito_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_debito_key ;;
  }

  dimension: sucursal_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: tasa_interes {
    group_label: "Contratos Leasing"
    type: number
    sql: ${TABLE}.tasa_interes ;;
  }

  dimension: tasa_interes_base {
    group_label: "Contratos Leasing"
    type: number
    sql: ${TABLE}.tasa_interes_base ;;
  }

  dimension: tasa_interes_compensatorio {
    group_label: "Contratos Leasing"
    type: number
    sql: ${TABLE}.tasa_interes_compensatorio ;;
  }

  dimension: tasa_interes_punitorio {
    group_label: "Contratos Leasing"
    type: number
    sql: ${TABLE}.tasa_interes_punitorio ;;
  }

  dimension: tasa_interes_spread {
    group_label: "Contratos Leasing"
    type: number
    sql: ${TABLE}.tasa_interes_spread ;;
  }

  dimension: tasa_interes_spread_variable {
    group_label: "Contratos Leasing"
    type: number
    sql: ${TABLE}.tasa_interes_spread_variable ;;
  }

  dimension: tasa_preleasing {
    group_label: "Contratos Leasing"
    type: number
    sql: ${TABLE}.tasa_preleasing ;;
  }

  dimension: tasa_requerida {
    group_label: "Contratos Leasing"
    type: number
    sql: ${TABLE}.tasa_requerida ;;
  }

  dimension: tipo_leasing_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_leasing_key ;;
  }

  dimension: tipo_tasa_pactada_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_tasa_pactada_key ;;
  }

  dimension: valor_anticipo {
    group_label: "Contratos Leasing"
    type: number
    sql: ${TABLE}.valor_anticipo ;;
  }

  dimension: valor_compra_bien {
    group_label: "Contratos Leasing"
    type: number
    sql: ${TABLE}.valor_compra_bien ;;
  }

  dimension: valor_contrato {
    group_label: "Contratos Leasing"
    type: number
    sql: ${TABLE}.valor_contrato ;;
  }

  dimension: valor_opcion_compra {
    group_label: "Contratos Leasing"
    type: number
    sql: ${TABLE}.valor_opcion_compra ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
