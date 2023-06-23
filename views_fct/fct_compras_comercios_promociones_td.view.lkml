view: fct_compras_comercios_promociones_td {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_compras_comercios_promociones_td`
    ;;
    view_label: " Fct Compras Comercios Promociones TD"

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

dimension: ciudad_terminal {
  type: string
  sql: ${TABLE}.ciudad_terminal ;;
}

dimension: cliente_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cliente_key ;;
}

dimension: codigo_cuenta_debito {
  type: string
  sql: ${TABLE}.codigo_cuenta_debito ;;
}

dimension: comercio_key {
  hidden: yes
  type: number
  sql: ${TABLE}.comercio_key ;;
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

dimension: estado_transaccion_key {
  hidden: yes
  type: number
  sql: ${TABLE}.estado_transaccion_key ;;
}

dimension_group: fecha_contabilizacion {
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
  sql: ${TABLE}.fecha_contabilizacion ;;
}

dimension_group: fecha_hora_transaccion {
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
  sql: ${TABLE}.fecha_hora_transaccion ;;
}

dimension: fecha_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_key ;;
}

dimension: hora_key {
  hidden: yes
  type: number
  sql: ${TABLE}.hora_key ;;
}

dimension: importe_moneda_origen {
  type: number
  sql: ${TABLE}.importe_moneda_origen ;;
}

dimension: importe_transaccion {
  type: number
  sql: ${TABLE}.importe_transaccion ;;
}

dimension: modalidad_compra_key {
  hidden: yes
  type: number
  sql: ${TABLE}.modalidad_compra_key ;;
}

dimension: motivo_reversa_key {
  hidden: yes
  type: number
  sql: ${TABLE}.motivo_reversa_key ;;
}

dimension: nir {
  type: number
  sql: ${TABLE}.nir ;;
}

dimension: numero_tarjeta {
  type: string
  sql: ${TABLE}.numero_tarjeta ;;
}

dimension: pais_key {
  hidden: yes
  type: number
  sql: ${TABLE}.pais_key ;;
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

dimension: sucursal_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_cuenta_key ;;
}

dimension: tipo_transaccion_key {
  hidden: yes
  type: number
  sql: ${TABLE}.tipo_transaccion_key ;;
}

measure: count {
  type: count
  drill_fields: []
}
}
