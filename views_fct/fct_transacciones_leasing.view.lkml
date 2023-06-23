view: fct_transacciones_leasing {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_transacciones_leasing`
    ;;
    view_label: " Fct Transacciones Leasing"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_transacciones_leasing s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }
  dimension: alquiler_numero {
    type: number
    sql: ${TABLE}.alquiler_numero ;;
  }

  dimension: amortizacion {
    type: number
    sql: ${TABLE}.amortizacion ;;
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

  dimension: contrato_leasing_key {
    hidden: yes
    type: number
    sql: ${TABLE}.contrato_leasing_key ;;
  }

  dimension: cotizacion {
    type: number
    sql: ${TABLE}.cotizacion ;;
  }

  dimension: cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
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

  dimension_group: fecha_cobro {
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
    sql: ${TABLE}.fecha_cobro ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension_group: fecha_registracion {
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
    sql: ${TABLE}.fecha_registracion ;;
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

  dimension: fecha_vencimiento_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_vencimiento_key ;;
  }

  dimension: interes {
    type: number
    sql: ${TABLE}.interes ;;
  }

  dimension: interes_compensatorio {
    type: number
    sql: ${TABLE}.interes_compensatorio ;;
  }

  dimension: interes_punitorio {
    type: number
    sql: ${TABLE}.interes_punitorio ;;
  }

  dimension: iva {
    type: number
    sql: ${TABLE}.iva ;;
  }

  dimension: iva_percepcion {
    type: number
    sql: ${TABLE}.iva_percepcion ;;
  }

  dimension: neto_transaccion {
    type: number
    sql: ${TABLE}.neto_transaccion ;;
  }

  dimension: nir {
    type: number
    sql: ${TABLE}.nir ;;
  }

  dimension: numero_secuencia {
    type: number
    sql: ${TABLE}.numero_secuencia ;;
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

  dimension: tipo_leasing_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_leasing_key ;;
  }

  dimension: tipo_transaccion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_transaccion_key ;;
  }

  dimension: total_transaccion {
    type: number
    sql: ${TABLE}.total_transaccion ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
