view: fct_minutas_titulos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_minutas_titulos`
    ;;
    view_label: " Fct Minutas Títulos"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_minutas_titulos s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

  dimension: anulado {
    type: string
    sql: ${TABLE}.anulado ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: cantidad {
    type: number
    sql: ${TABLE}.cantidad ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: cotizacion {
    type: number
    sql: ${TABLE}.cotizacion ;;
  }

  dimension: cotizacion_minuta {
    type: number
    sql: ${TABLE}.cotizacion_minuta ;;
  }

  dimension: cotizacion_titulo {
    type: number
    sql: ${TABLE}.cotizacion_titulo ;;
  }

  dimension: cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }

  dimension: especie_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_key ;;
  }

  dimension: especie_titulo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_titulo_key ;;
  }

  dimension_group: fecha_anulacion {
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
    sql: ${TABLE}.fecha_anulacion ;;
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

  dimension: importe_interes {
    type: number
    sql: ${TABLE}.importe_interes ;;
  }

  dimension: importe_total {
    type: number
    sql: ${TABLE}.importe_total ;;
  }

  dimension: mercado_titulos_key {
    hidden: yes
    type: number
    sql: ${TABLE}.mercado_titulos_key ;;
  }

  dimension: nir {
    type: number
    sql: ${TABLE}.nir ;;
  }

  dimension: numero_minuta {
    type: number
    sql: ${TABLE}.numero_minuta ;;
  }

  dimension: plazo {
    type: number
    sql: ${TABLE}.plazo ;;
  }

  dimension: precio {
    type: number
    sql: ${TABLE}.precio ;;
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

  dimension: sucursal_transaccion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_transaccion_key ;;
  }

  dimension: tasa {
    type: number
    sql: ${TABLE}.tasa ;;
  }

  dimension: tipo_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_cuenta_key ;;
  }

  dimension: tipo_minuta_titulos_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_minuta_titulos_key ;;
  }

  dimension: tipo_operacion_titulos_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_operacion_titulos_key ;;
  }

  dimension: tipo_valor_residual {
    type: number
    sql: ${TABLE}.tipo_valor_residual ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
