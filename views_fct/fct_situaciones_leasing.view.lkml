view: fct_situaciones_leasing {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_situaciones_leasing`
    ;;
    view_label: " Fct Situaciones Leasing"

  dimension: amortizacion {
    type: number
    sql: ${TABLE}.amortizacion ;;
  }

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_situaciones_leasing s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

  dimension: amortizacion_acumulada {
    type: number
    sql: ${TABLE}.amortizacion_acumulada ;;
  }

  dimension: amortizacion_diaria {
    type: number
    sql: ${TABLE}.amortizacion_diaria ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: cantidad_alquileres_a_vencer {
    type: number
    sql: ${TABLE}.cantidad_alquileres_a_vencer ;;
  }

  dimension: cantidad_alquileres_pagados {
    type: number
    sql: ${TABLE}.cantidad_alquileres_pagados ;;
  }

  dimension: cantidad_alquileres_totales {
    type: number
    sql: ${TABLE}.cantidad_alquileres_totales ;;
  }

  dimension: cantidad_alquileres_vencidos {
    type: number
    sql: ${TABLE}.cantidad_alquileres_vencidos ;;
  }

  dimension: capital_original_a_cobrar {
    type: number
    sql: ${TABLE}.capital_original_a_cobrar ;;
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

  dimension: cotizacion {
    type: number
    sql: ${TABLE}.cotizacion ;;
  }

  dimension: cotizacion_dia_actual {
    type: number
    sql: ${TABLE}.cotizacion_dia_actual ;;
  }

  dimension: cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }

  dimension: deuda_capital {
    type: number
    sql: ${TABLE}.deuda_capital ;;
  }

  dimension: deuda_impuestos {
    type: number
    sql: ${TABLE}.deuda_impuestos ;;
  }

  dimension: deuda_interes_variable {
    type: number
    sql: ${TABLE}.deuda_interes_variable ;;
  }

  dimension: deuda_interes_vencido {
    type: number
    sql: ${TABLE}.deuda_interes_vencido ;;
  }

  dimension: dias_atraso {
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

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: gastos_a_recuperar {
    type: number
    sql: ${TABLE}.gastos_a_recuperar ;;
  }

  dimension: gastos_capitalizados {
    type: number
    sql: ${TABLE}.gastos_capitalizados ;;
  }

  dimension: gastos_no_capitalizados {
    type: number
    sql: ${TABLE}.gastos_no_capitalizados ;;
  }

  dimension: gastos_pagados {
    type: number
    sql: ${TABLE}.gastos_pagados ;;
  }

  dimension: gastos_recuperados {
    type: number
    sql: ${TABLE}.gastos_recuperados ;;
  }

  dimension: importe_alquileres_a_vencer {
    type: number
    sql: ${TABLE}.importe_alquileres_a_vencer ;;
  }

  dimension: importe_alquileres_pagados {
    type: number
    sql: ${TABLE}.importe_alquileres_pagados ;;
  }

  dimension: importe_alquileres_vencidos {
    type: number
    sql: ${TABLE}.importe_alquileres_vencidos ;;
  }

  dimension: interes {
    type: number
    sql: ${TABLE}.interes ;;
  }

  dimension: interes_compensatorio {
    type: number
    sql: ${TABLE}.interes_compensatorio ;;
  }

  dimension: interes_financiero_mes {
    type: number
    sql: ${TABLE}.interes_financiero_mes ;;
  }

  dimension: interes_mes {
    type: number
    sql: ${TABLE}.interes_mes ;;
  }

  dimension: interes_original_acumulado {
    type: number
    sql: ${TABLE}.interes_original_acumulado ;;
  }

  dimension: interes_original_dia {
    type: number
    sql: ${TABLE}.interes_original_dia ;;
  }

  dimension: interes_pre_leasing {
    type: number
    sql: ${TABLE}.interes_pre_leasing ;;
  }

  dimension: interes_pre_leasing_acum_mes {
    type: number
    sql: ${TABLE}.interes_pre_leasing_acum_mes ;;
  }

  dimension: interes_pre_leasing_bonif {
    type: number
    sql: ${TABLE}.interes_pre_leasing_bonif ;;
  }

  dimension: interes_pre_leasing_dia {
    type: number
    sql: ${TABLE}.interes_pre_leasing_dia ;;
  }

  dimension: interes_punitorio {
    type: number
    sql: ${TABLE}.interes_punitorio ;;
  }

  dimension: interes_variable_acumulado {
    type: number
    sql: ${TABLE}.interes_variable_acumulado ;;
  }

  dimension: interes_variable_dia {
    type: number
    sql: ${TABLE}.interes_variable_dia ;;
  }

  dimension: interes_variable_mes {
    type: number
    sql: ${TABLE}.interes_variable_mes ;;
  }

  dimension: iva {
    type: number
    sql: ${TABLE}.iva ;;
  }

  dimension: iva_percepcion {
    type: number
    sql: ${TABLE}.iva_percepcion ;;
  }

  dimension: mercado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.mercado_key ;;
  }

  dimension: nir {
    type: number
    sql: ${TABLE}.nir ;;
  }

  dimension: otros_impuestos {
    type: number
    sql: ${TABLE}.otros_impuestos ;;
  }

  dimension: producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_key ;;
  }

  dimension: promedio_deuda_capital {
    type: number
    sql: ${TABLE}.promedio_deuda_capital ;;
  }

  dimension: promedio_deuda_preleasing {
    type: number
    sql: ${TABLE}.promedio_deuda_preleasing ;;
  }

  dimension: saldo_deuda {
    type: number
    sql: ${TABLE}.saldo_deuda ;;
  }

  dimension: saldo_deuda_a_vencer {
    type: number
    sql: ${TABLE}.saldo_deuda_a_vencer ;;
  }

  dimension: saldo_deuda_vencida {
    type: number
    sql: ${TABLE}.saldo_deuda_vencida ;;
  }

  dimension: saldo_promedio_deuda {
    type: number
    sql: ${TABLE}.saldo_promedio_deuda ;;
  }

  dimension: sucursal_captacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_captacion_key ;;
  }

  dimension: sucursal_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: tasa_interes {
    type: number
    sql: ${TABLE}.tasa_interes ;;
  }

  dimension: tasa_interes_compensatorio {
    type: number
    sql: ${TABLE}.tasa_interes_compensatorio ;;
  }

  dimension: tasa_interes_punitorio {
    type: number
    sql: ${TABLE}.tasa_interes_punitorio ;;
  }

  dimension: tipo_leasing_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_leasing_key ;;
  }

  dimension: valor_contrato {
    type: number
    sql: ${TABLE}.valor_contrato ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
