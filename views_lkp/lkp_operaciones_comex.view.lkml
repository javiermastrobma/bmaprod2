view: lkp_operaciones_comex {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_operaciones_comex`
    ;;

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

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: codigo_tasa {
    type: number
    sql: ${TABLE}.codigo_tasa ;;
  }

  dimension: corresponsal_reciprocidad_key {
    hidden: yes
    type: number
    sql: ${TABLE}.corresponsal_reciprocidad_key ;;
  }

  dimension: corresponsal_reembolso_key {
    hidden: yes
    type: number
    sql: ${TABLE}.corresponsal_reembolso_key ;;
  }

  dimension: cotizacion_origen {
    type: number
    sql: ${TABLE}.cotizacion_origen ;;
  }

  dimension: cuenta_contable_capital_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_contable_capital_key ;;
  }

  dimension: cuenta_contable_intdev_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_contable_intdev_key ;;
  }

  dimension: cuenta_contable_intdoc_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_contable_intdoc_key ;;
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

  dimension: estado_boleto_comex_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_boleto_comex_key ;;
  }

  dimension_group: fecha_alta {
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

  dimension_group: fecha_cancelacion {
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

  dimension: identificacion_boleto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.identificacion_boleto_key ;;
  }

  dimension: localidad_reciprocidad_key {
    hidden: yes
    type: number
    sql: ${TABLE}.localidad_reciprocidad_key ;;
  }

  dimension: localidad_reembolso_key {
    hidden: yes
    type: number
    sql: ${TABLE}.localidad_reembolso_key ;;
  }

  dimension: mercado_cambio {
    type: number
    sql: ${TABLE}.mercado_cambio ;;
  }

  dimension: monto_origen {
    type: number
    sql: ${TABLE}.monto_origen ;;
  }

  dimension: numero_operacion_base {
    type: string
    sql: ${TABLE}.numero_operacion_base ;;
  }

  dimension: numero_operacion_comex {
    type: string
    sql: ${TABLE}.numero_operacion_comex ;;
  }

  dimension: oficial_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_cuenta_key ;;
  }

  dimension: otros_codigos_comex_key {
    hidden: yes
    type: number
    sql: ${TABLE}.otros_codigos_comex_key ;;
  }

  dimension: producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_key ;;
  }

  dimension: referencia_aladi {
    type: string
    sql: ${TABLE}.referencia_aladi ;;
  }

  dimension: referencia_exterior {
    type: string
    sql: ${TABLE}.referencia_exterior ;;
  }

  dimension: referencia_manual {
    type: string
    sql: ${TABLE}.referencia_manual ;;
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

  dimension: sigla_operacion {
    type: string
    sql: ${TABLE}.sigla_operacion ;;
  }

  dimension: sistema_deuda {
    type: string
    sql: ${TABLE}.sistema_deuda ;;
  }

  dimension: sucursal_operacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_operacion_key ;;
  }

  dimension: tasa_nominal_anual {
    type: number
    sql: ${TABLE}.tasa_nominal_anual ;;
  }

  dimension: tipo_cliente_comex_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_cliente_comex_key ;;
  }

  dimension: tna_pasiva_relacionada {
    type: number
    sql: ${TABLE}.tna_pasiva_relacionada ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
