view: lkp_prestamos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_prestamos`
    ;;
  view_label: "Datos PRESTAMO"

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

  dimension: cantidad_cuotas_pactadas {
    group_label: "Préstamos"
    type: number
    sql: ${TABLE}.cantidad_cuotas_pactadas ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: compania_seguro_vida_key {
    hidden: yes
    type: number
    sql: ${TABLE}.compania_seguro_vida_key ;;
  }

  dimension: considerar_periodo_gracia_1er_vencimiento {
    group_label: "Préstamos"
    type: string
    sql: ${TABLE}.considerar_periodo_gracia_1er_vencimiento ;;
  }

  dimension: convenio_numero {
    group_label: "Préstamos"
    type: string
    sql: ${TABLE}.convenio_numero ;;
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

  dimension: destino_prestamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.destino_prestamo_key ;;
  }

  dimension: ente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.ente_key ;;
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

  dimension: estado_deuda_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_deuda_key ;;
  }

  dimension_group: fecha_alta {
    group_label: "Préstamos"
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

  dimension_group: fecha_baja {
    group_label: "Préstamos"
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
    sql: ${TABLE}.fecha_baja ;;
  }

  dimension_group: fecha_liquidacion {
    group_label: "Préstamos"
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

  dimension_group: fecha_primer_vencimiento {
    group_label: "Préstamos"
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
    sql: ${TABLE}.fecha_primer_vencimiento ;;
  }

  dimension_group: fecha_proximo_repacto {
    group_label: "Préstamos"
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
    sql: ${TABLE}.fecha_proximo_repacto ;;
  }

  dimension_group: fecha_proximo_vencimiento {
    group_label: "Préstamos"
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
    sql: ${TABLE}.fecha_proximo_vencimiento ;;
  }

  dimension: fecha_vencimiento_ultima_cuota_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_vencimiento_ultima_cuota_key ;;
  }

  dimension: forma_cobro_key {
    hidden: yes
    type: number
    sql: ${TABLE}.forma_cobro_key ;;
  }

  dimension: marca_convenio {
    group_label: "Préstamos"
    type: string
    sql: ${TABLE}.marca_convenio ;;
  }

  dimension: marca_tasa_variable {
    group_label: "Préstamos"
    type: string
    sql: ${TABLE}.marca_tasa_variable ;;
  }

  dimension: mercado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.mercado_key ;;
  }

  dimension: monto_original {
    group_label: "Préstamos"
    type: number
    sql: ${TABLE}.monto_original ;;
  }

  dimension: numero_operacion {
    group_label: "Préstamos"
    type: string
    sql: ${TABLE}.numero_operacion ;;
  }

  dimension: numero_operacion_migrada {
    group_label: "Préstamos"
    type: string
    sql: ${TABLE}.numero_operacion_migrada ;;
  }

  dimension: oficial_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_cuenta_key ;;
  }

  dimension: plazo_meses {
    group_label: "Préstamos"
    type: number
    sql: ${TABLE}.plazo_meses ;;
  }

  dimension: plazo_original {
    group_label: "Préstamos"
    type: number
    sql: ${TABLE}.plazo_original ;;
  }

  dimension: producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_key ;;
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

  dimension: spread {
    group_label: "Préstamos"
    type: number
    sql: ${TABLE}.spread ;;
  }

  dimension: sucursal_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: tasa_aplicada {
    group_label: "Préstamos"
    type: number
    sql: ${TABLE}.tasa_aplicada ;;
  }

  dimension: tasa_base {
    group_label: "Préstamos"
    type: number
    sql: ${TABLE}.tasa_base ;;
  }

  dimension: tasa_nominal_anual {
    group_label: "Préstamos"
    type: number
    sql: ${TABLE}.tasa_nominal_anual ;;
  }

  dimension: tasa_seguro_incendio {
    group_label: "Préstamos"
    type: number
    sql: ${TABLE}.tasa_seguro_incendio ;;
  }

  dimension: tasa_seguro_vida {
    group_label: "Préstamos"
    type: number
    sql: ${TABLE}.tasa_seguro_vida ;;
  }

  dimension: tipo_amortizacion {
    group_label: "Préstamos"
    type: string
    sql: ${TABLE}.tipo_amortizacion ;;
  }

  dimension: tipo_cartera_activa {
    group_label: "Préstamos"
    type: string
    sql: ${TABLE}.tipo_cartera_activa ;;
  }

  dimension: tipo_cartera_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_cartera_key ;;
  }

  dimension: tipo_plazo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_plazo_key ;;
  }

  dimension: tipo_tasa_aplicada {
    group_label: "Préstamos"
    type: string
    sql: ${TABLE}.tipo_tasa_aplicada ;;
  }

  dimension: tipo_tasa_base {
    group_label: "Préstamos"
    type: string
    sql: ${TABLE}.tipo_tasa_base ;;
  }

  dimension: vendedor_key {
    hidden: yes
    type: number
    sql: ${TABLE}.vendedor_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
