view: fct_transacciones_promociones_tc {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_transacciones_promociones_tc`
    ;;
    view_label: " Fct Transacciones Promociones TC"

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

dimension: cantidad_cuotas {
  type: number
  sql: ${TABLE}.cantidad_cuotas ;;
}

dimension: comercio_key {
  hidden: yes
  type: number
  sql: ${TABLE}.comercio_key ;;
}

dimension: cotizacion_banco {
  type: number
  sql: ${TABLE}.cotizacion_banco ;;
}

dimension: cuenta_tc_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cuenta_tc_key ;;
}

dimension: debito_automatico {
  type: string
  sql: ${TABLE}.debito_automatico ;;
}

dimension: descuento_cliente {
  type: number
  sql: ${TABLE}.descuento_cliente ;;
}

dimension: descuento_comercio {
  type: number
  sql: ${TABLE}.descuento_comercio ;;
}

dimension: especie_key {
  hidden: yes
  type: number
  sql: ${TABLE}.especie_key ;;
}

dimension_group: fecha_cierre {
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
  sql: ${TABLE}.fecha_cierre ;;
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

dimension_group: fecha_presentacion {
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
  sql: ${TABLE}.fecha_presentacion ;;
}

dimension: fecha_transaccion_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_transaccion_key ;;
}

dimension: importe {
  type: number
  sql: ${TABLE}.importe ;;
}

dimension: marca_key {
  hidden: yes
  type: number
  sql: ${TABLE}.marca_key ;;
}

dimension: nir {
  type: number
  sql: ${TABLE}.nir ;;
}

dimension: producto_key {
  hidden: yes
  type: number
  sql: ${TABLE}.producto_key ;;
}

dimension: promocion_key {
  hidden: yes
  type: number
  sql: ${TABLE}.promocion_key ;;
}

dimension: rubro_key {
  hidden: yes
  type: number
  sql: ${TABLE}.rubro_key ;;
}

dimension: tarjeta_credito_key {
  hidden: yes
  type: number
  sql: ${TABLE}.tarjeta_credito_key ;;
}

dimension: tipo_movimiento_tc_key {
  hidden: yes
  type: number
  sql: ${TABLE}.tipo_movimiento_tc_key ;;
}

measure: count {
  type: count
  drill_fields: []
}
}
