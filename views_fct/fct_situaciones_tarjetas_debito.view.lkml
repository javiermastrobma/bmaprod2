view: fct_situaciones_tarjetas_debito {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_situaciones_tarjetas_debito`
    ;;
    view_label: " Fct Situaciones Tarjetas Débito"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_situaciones_tarjetas_debito s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

dimension: actividad_key {
  hidden: yes
  type: number
  sql: ${TABLE}.actividad_key ;;
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

dimension: cant_compras_comercio {
  type: number
  sql: ${TABLE}.cant_compras_comercio ;;
}

dimension: cant_cuentas_asociadas {
  type: number
  sql: ${TABLE}.cant_cuentas_asociadas ;;
}

dimension: cant_extracciones_internacionales {
  type: number
  sql: ${TABLE}.cant_extracciones_internacionales ;;
}

dimension: cant_extracciones_regionales {
  type: number
  sql: ${TABLE}.cant_extracciones_regionales ;;
}

dimension: cant_otras_trx_internacionales {
  type: number
  sql: ${TABLE}.cant_otras_trx_internacionales ;;
}

dimension: cant_otras_trx_regionales {
  type: number
  sql: ${TABLE}.cant_otras_trx_regionales ;;
}

dimension: cant_transacciones_atm {
  type: number
  sql: ${TABLE}.cant_transacciones_atm ;;
}

dimension: cant_transacciones_atm_banelco {
  type: number
  sql: ${TABLE}.cant_transacciones_atm_banelco ;;
}

dimension: cant_transacciones_atm_cajeros_exceptuados {
  type: number
  sql: ${TABLE}.cant_transacciones_atm_cajeros_exceptuados ;;
}

dimension: cant_transacciones_atm_cajeros_propios {
  type: number
  sql: ${TABLE}.cant_transacciones_atm_cajeros_propios ;;
}

dimension: cant_transacciones_atm_link {
  type: number
  sql: ${TABLE}.cant_transacciones_atm_link ;;
}

dimension: cant_transacciones_internet {
  type: number
  sql: ${TABLE}.cant_transacciones_internet ;;
}

dimension: cantidad_tarjetas {
  type: number
  sql: ${TABLE}.cantidad_tarjetas ;;
}

dimension: cantidad_titular {
  type: number
  sql: ${TABLE}.cantidad_titular ;;
}

dimension: categoria_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.categoria_cuenta_key ;;
}

dimension: cliente_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cliente_key ;;
}

dimension: comisiones_cobradas_banelco {
  type: number
  sql: ${TABLE}.comisiones_cobradas_banelco ;;
}

dimension: comisiones_cobradas_cajeros_propios {
  type: number
  sql: ${TABLE}.comisiones_cobradas_cajeros_propios ;;
}

dimension: comisiones_cobradas_link {
  type: number
  sql: ${TABLE}.comisiones_cobradas_link ;;
}

dimension: con_movimiento_atm {
  type: number
  sql: ${TABLE}.con_movimiento_atm ;;
}

dimension: con_movimiento_comercio {
  type: number
  sql: ${TABLE}.con_movimiento_comercio ;;
}

dimension: cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cuenta_key ;;
}

dimension: estado_tarjeta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.estado_tarjeta_key ;;
}

dimension: fecha_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_key ;;
}

dimension_group: fecha_ultimo_movimiento {
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
  sql: ${TABLE}.fecha_ultimo_movimiento ;;
}

dimension_group: fecha_ultimo_movimiento_comercios {
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
  sql: ${TABLE}.fecha_ultimo_movimiento_comercios ;;
}

dimension_group: fecha_ultimo_movimiento_extracciones {
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
  sql: ${TABLE}.fecha_ultimo_movimiento_extracciones ;;
}

dimension: importe_compras_comercio {
  type: number
  sql: ${TABLE}.importe_compras_comercio ;;
}

dimension: importe_total_extracciones {
  type: number
  sql: ${TABLE}.importe_total_extracciones ;;
}

dimension: oficial_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.oficial_cuenta_key ;;
}

dimension: producto_2_key {
  hidden: yes
  type: number
  sql: ${TABLE}.producto_2_key ;;
}

dimension: producto_key {
  hidden: yes
  type: number
  sql: ${TABLE}.producto_key ;;
}

dimension: sector_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sector_key ;;
}

dimension: sucursal_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_cuenta_key ;;
}

dimension: tipo_persona_key {
  hidden: yes
  type: number
  sql: ${TABLE}.tipo_persona_key ;;
}

dimension: tipo_tarjeta {
  type: string
  sql: ${TABLE}.tipo_tarjeta ;;
}

measure: count {
  type: count
  drill_fields: []
}
}
