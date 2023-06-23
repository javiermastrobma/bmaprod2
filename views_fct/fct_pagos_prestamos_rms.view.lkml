view: fct_pagos_prestamos_rms {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_pagos_prestamos_rms`
    ;;
    view_label: " Fct Pagos Prestamos RMS"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_pagos_prestamos_rms s
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

  dimension: cod_abogado_agencia_estudio {
    type: string
    sql: ${TABLE}.cod_abogado_agencia_estudio ;;
  }

  dimension: cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }

  dimension: desc_transaccion {
    type: string
    sql: ${TABLE}.desc_transaccion ;;
  }

  dimension: destino_prestamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.destino_prestamo_key ;;
  }

  dimension: dias_atraso {
    type: number
    sql: ${TABLE}.dias_atraso ;;
  }

  dimension: entidad {
    type: string
    sql: ${TABLE}.entidad ;;
  }

  dimension: especie_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_key ;;
  }

  dimension: estado_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_cuenta_key ;;
  }

  dimension: estado_gestion_actual {
    type: string
    sql: ${TABLE}.estado_gestion_actual ;;
  }

  dimension: estado_gestion_anterior {
    type: string
    sql: ${TABLE}.estado_gestion_anterior ;;
  }

  dimension: estado_operacion {
    type: string
    sql: ${TABLE}.estado_operacion ;;
  }

  dimension_group: fecha_conversion_a_mn {
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
    sql: ${TABLE}.fecha_conversion_a_mn ;;
  }

  dimension_group: fecha_conversion_pago_exigible {
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
    sql: ${TABLE}.fecha_conversion_pago_exigible ;;
  }

  dimension_group: fecha_inicio_1er_atraso {
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
    sql: ${TABLE}.fecha_inicio_1er_atraso ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension_group: fecha_pago {
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
    sql: ${TABLE}.fecha_pago ;;
  }

  dimension: fiduciario {
    type: string
    sql: ${TABLE}.fiduciario ;;
  }

  dimension: mercado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.mercado_key ;;
  }

  dimension: moneda_transaccion {
    type: string
    sql: ${TABLE}.moneda_transaccion ;;
  }

  dimension: nro_abogado_agencia_estudio {
    type: string
    sql: ${TABLE}.nro_abogado_agencia_estudio ;;
  }

  dimension: nro_cuenta_mvtnco {
    type: string
    sql: ${TABLE}.nro_cuenta_mvtnco ;;
  }

  dimension: nro_cuenta_mvtnct {
    type: string
    sql: ${TABLE}.nro_cuenta_mvtnct ;;
  }

  dimension: nro_documento {
    type: number
    sql: ${TABLE}.nro_documento ;;
  }

  dimension: numero_operacion_source {
    type: string
    sql: ${TABLE}.numero_operacion_source ;;
  }

  dimension: oficial_cobro_recupero {
    type: string
    sql: ${TABLE}.oficial_cobro_recupero ;;
  }

  dimension: oficial_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_cuenta_key ;;
  }

  dimension: pago_exigible_mn {
    type: number
    sql: ${TABLE}.pago_exigible_mn ;;
  }

  dimension: pago_exigible_mo {
    type: number
    sql: ${TABLE}.pago_exigible_mo ;;
  }

  dimension: pago_mn {
    type: number
    sql: ${TABLE}.pago_mn ;;
  }

  dimension: pago_mo {
    type: number
    sql: ${TABLE}.pago_mo ;;
  }

  dimension: producto_agrupacion {
    type: string
    sql: ${TABLE}.producto_agrupacion ;;
  }

  dimension: producto_codigo_mvttpo {
    type: string
    sql: ${TABLE}.producto_codigo_mvttpo ;;
  }

  dimension: producto_codigo_mvttpr {
    type: string
    sql: ${TABLE}.producto_codigo_mvttpr ;;
  }

  dimension: producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_key ;;
  }

  dimension: refinanciacion {
    type: string
    sql: ${TABLE}.refinanciacion ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: residencia_key {
    hidden: yes
    type: number
    sql: ${TABLE}.residencia_key ;;
  }

  dimension: sector_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sector_key ;;
  }

  dimension: situacion_deudor_bcra_key {
    hidden: yes
    type: number
    sql: ${TABLE}.situacion_deudor_bcra_key ;;
  }

  dimension: sucursal_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: tipo_cambio_exigible_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_cambio_exigible_key ;;
  }

  dimension: tipo_cambio_mn_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_cambio_mn_key ;;
  }

  dimension: tipo_cartera_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_cartera_key ;;
  }

  dimension: tipo_documento {
    type: string
    sql: ${TABLE}.tipo_documento ;;
  }

  dimension: tipo_nro_convenio {
    type: string
    sql: ${TABLE}.tipo_nro_convenio ;;
  }

  dimension: tipo_nro_documento {
    type: string
    sql: ${TABLE}.tipo_nro_documento ;;
  }

  dimension: tipo_persona_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_persona_key ;;
  }

  dimension: transaccion_rms_key {
    hidden: yes
    type: number
    sql: ${TABLE}.transaccion_rms_key ;;
  }

  dimension: unidad_gestion_mvtuge {
    type: string
    sql: ${TABLE}.unidad_gestion_mvtuge ;;
  }

  dimension: unidad_gestion_mvtugo {
    type: string
    sql: ${TABLE}.unidad_gestion_mvtugo ;;
  }

  dimension: valor_conversion_a_mn {
    type: number
    sql: ${TABLE}.valor_conversion_a_mn ;;
  }

  dimension: valor_conversion_pago_exigible {
    type: number
    sql: ${TABLE}.valor_conversion_pago_exigible ;;
  }

  dimension: vinculo_operacion {
    type: string
    sql: ${TABLE}.vinculo_operacion ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
