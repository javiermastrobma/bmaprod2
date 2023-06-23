view: fct_transacciones_cv_billetes {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_transacciones_cv_billetes`
    ;;
    view_label: " Fct Transacciones Cv Billetes"
  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_transacciones_cv_billetes s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
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

  dimension: cotizacion_tabla {
    type: number
    sql: ${TABLE}.cotizacion_tabla ;;
  }

  dimension: cotizacion_usada {
    type: number
    sql: ${TABLE}.cotizacion_usada ;;
  }

  dimension: diferencia_cotizacion {
    type: number
    sql: ${TABLE}.diferencia_cotizacion ;;
  }

  dimension: especie_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_key ;;
  }

  dimension: fecha_dia_anterior_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_dia_anterior_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension_group: fecha_liquidacion {
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
    sql: ${TABLE}.fecha_liquidacion ;;
  }

  dimension: fecha_operacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_operacion_key ;;
  }

  dimension_group: fechahora_operacion {
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
    sql: ${TABLE}.fechahora_operacion ;;
  }

  dimension: monto_me {
    type: number
    sql: ${TABLE}.monto_me ;;
  }

  dimension: monto_mn {
    type: number
    sql: ${TABLE}.monto_mn ;;
  }

  dimension: monto_valor_cierre {
    type: number
    sql: ${TABLE}.monto_valor_cierre ;;
  }

  dimension: numero_transaccion {
    type: number
    sql: ${TABLE}.numero_transaccion ;;
  }

  dimension: resultado_operacion {
    type: number
    sql: ${TABLE}.resultado_operacion ;;
  }

  dimension: sucursal_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: tipo_operacion {
    type: string
    sql: ${TABLE}.tipo_operacion ;;
  }

  dimension: valor_cierre {
    type: number
    sql: ${TABLE}.valor_cierre ;;
  }

  dimension: valor_compra {
    type: number
    sql: ${TABLE}.valor_compra ;;
  }

  dimension: valor_venta {
    type: number
    sql: ${TABLE}.valor_venta ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
