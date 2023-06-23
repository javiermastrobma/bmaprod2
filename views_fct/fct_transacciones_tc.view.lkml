view: fct_transacciones_tc {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_transacciones_tc`
    ;;
  view_label: " Fct Transacciones Tc"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_carga_key} = (SELECT MAX(f.fecha_carga_key) FROM fct_transacciones_tc s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
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

dimension: denominacion_comercio {
  type: string
  sql: ${TABLE}.denominacion_comercio ;;
}

dimension: entidad {
  type: number
  sql: ${TABLE}.entidad ;;
}

dimension: especie_key {
  hidden: yes
  type: number
  sql: ${TABLE}.especie_key ;;
}

dimension: fecha_carga_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_carga_key ;;
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

dimension_group: fecha_real_consumo {
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
  sql: ${TABLE}.fecha_real_consumo ;;
}

dimension: fecha_transaccion_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_transaccion_key ;;
}

dimension: forma_cobro_tc_key {
  hidden: yes
  type: number
  sql: ${TABLE}.forma_cobro_tc_key ;;
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

dimension: numero_transaccion {
  type: number
  sql: ${TABLE}.numero_transaccion ;;
}

dimension: producto_key {
  hidden: yes
  type: number
  sql: ${TABLE}.producto_key ;;
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
