view: lkp_cuentas_pf {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_cuentas_pf`
    ;;
  view_label: "Datos CUENTA"

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

dimension: canal_venta_pf {
  group_label: "Cuentas PF"
  type: string
  sql: ${TABLE}.canal_venta_pf ;;
}

dimension: capital {
  group_label: "Cuentas PF"
  type: number
  sql: ${TABLE}.capital ;;
}

dimension: certificado {
  group_label: "Cuentas PF"
  type: string
  sql: ${TABLE}.certificado ;;
}

dimension: cliente_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cliente_key ;;
}

dimension: codigo_cliente {
  group_label: "Cuentas PF"
  type: number
  sql: ${TABLE}.codigo_cliente ;;
}

dimension: cuenta_anterior_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cuenta_anterior_key ;;
}

dimension: cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cuenta_key ;;
}

dimension: cuenta_padre_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cuenta_padre_key ;;
}

dimension: especie_key {
  hidden: yes
  type: number
  sql: ${TABLE}.especie_key ;;
}

dimension_group: fecha_alta {
  group_label: "Cuentas PF"
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
  sql: ${TABLE}.fecha_alta ;;
}

dimension_group: fecha_base_indice {
  group_label: "Cuentas PF"
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
  sql: ${TABLE}.fecha_base_indice ;;
}

dimension_group: fecha_cancelacion {
  group_label: "Cuentas PF"
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

dimension_group: fecha_inmovilizacion {
  group_label: "Cuentas PF"
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
  sql: ${TABLE}.fecha_inmovilizacion ;;
}

dimension_group: fecha_precancelable {
  group_label: "Cuentas PF"
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
  sql: ${TABLE}.fecha_precancelable ;;
}

dimension_group: fecha_vencimiento {
  group_label: "Cuentas PF"
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

dimension: flag_maximo_renovaciones_pactadas {
  group_label: "Cuentas PF"
  type: string
  sql: ${TABLE}.flag_maximo_renovaciones_pactadas ;;
}

dimension: flag_renovaciones_automaticas {
  group_label: "Cuentas PF"
  type: string
  sql: ${TABLE}.flag_renovaciones_automaticas ;;
}

dimension: indice_key {
  hidden: yes
  type: number
  sql: ${TABLE}.indice_key ;;
}

dimension: instruccion {
  group_label: "Cuentas PF"
  type: string
  sql: ${TABLE}.instruccion ;;
}

dimension: marca_renovado {
  group_label: "Cuentas PF"
  type: string
  sql: ${TABLE}.marca_renovado ;;
}

dimension: modalidad {
  group_label: "Cuentas PF"
  type: string
  sql: ${TABLE}.modalidad ;;
}

dimension: oficial_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.oficial_cuenta_key ;;
}

dimension: oficial_pf_key {
  hidden: yes
  type: number
  sql: ${TABLE}.oficial_pf_key ;;
}

dimension: pago_periodico {
  group_label: "Cuentas PF"
  type: string
  sql: ${TABLE}.pago_periodico ;;
}

dimension: plazo {
  group_label: "Cuentas PF"
  type: number
  sql: ${TABLE}.plazo ;;
}

dimension: producto_key {
  hidden: yes
  type: number
  sql: ${TABLE}.producto_key ;;
}

dimension: producto_origen_key {
  hidden: yes
  type: number
  sql: ${TABLE}.producto_origen_key ;;
}

dimension: renueva_ajustes {
  group_label: "Cuentas PF"
  type: string
  sql: ${TABLE}.renueva_ajustes ;;
}

dimension: renueva_capital {
  group_label: "Cuentas PF"
  type: string
  sql: ${TABLE}.renueva_capital ;;
}

dimension: renueva_intereses {
  group_label: "Cuentas PF"
  type: string
  sql: ${TABLE}.renueva_intereses ;;
}

dimension: residencia_key {
  hidden: yes
  type: number
  sql: ${TABLE}.residencia_key ;;
}

dimension: restringido {
  group_label: "Cuentas PF"
  type: string
  sql: ${TABLE}.restringido ;;
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

dimension: tasa {
  group_label: "Cuentas PF"
  type: number
  sql: ${TABLE}.tasa ;;
}

dimension: tasa_pagada {
  group_label: "Cuentas PF"
  type: number
  sql: ${TABLE}.tasa_pagada ;;
}

dimension: tipo_cliente_pf {
  group_label: "Cuentas PF"
  type: string
  sql: ${TABLE}.tipo_cliente_pf ;;
}

dimension: tipo_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.tipo_cuenta_key ;;
}

dimension: variacion {
  group_label: "Cuentas PF"
  type: number
  sql: ${TABLE}.variacion ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
