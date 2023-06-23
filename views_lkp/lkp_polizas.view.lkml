view: lkp_polizas {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_polizas`
    ;;
  view_label: "Otras Dimensiones"

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

  dimension: broker_key {
    hidden: yes
    type: number
    sql: ${TABLE}.broker_key ;;
  }

  dimension: canal_venta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.canal_venta_key ;;
  }

  dimension: clasificacion_seguros_key {
    hidden: yes
    type: number
    sql: ${TABLE}.clasificacion_seguros_key ;;
  }

  dimension: cliente_asegurado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_asegurado_key ;;
  }

  dimension: cliente_tomador_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_tomador_key ;;
  }

  dimension: cobertura_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cobertura_key ;;
  }

  dimension: compania_key {
    hidden: yes
    type: number
    sql: ${TABLE}.compania_key ;;
  }

  dimension: cuenta_debito {
    group_label: "Pólizas"
    type: string
    sql: ${TABLE}.cuenta_debito ;;
  }

  dimension: especie_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_key ;;
  }

  dimension: estado_poliza_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_poliza_key ;;
  }

  dimension_group: fecha_aceptacion_cia {
    group_label: "Pólizas"
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
    sql: ${TABLE}.fecha_aceptacion_cia ;;
  }

  dimension_group: fecha_alta {
    group_label: "Pólizas"
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
    group_label: "Pólizas"
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

  dimension_group: fecha_fin_vigencia {
    group_label: "Pólizas"
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
    sql: ${TABLE}.fecha_fin_vigencia ;;
  }

  dimension_group: fecha_inicio_vigencia {
    group_label: "Pólizas"
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
    sql: ${TABLE}.fecha_inicio_vigencia ;;
  }

  dimension_group: fecha_proceso_alta {
    group_label: "Pólizas"
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
    sql: ${TABLE}.fecha_proceso_alta ;;
  }

  dimension_group: fecha_proceso_baja {
    group_label: "Pólizas"
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
    sql: ${TABLE}.fecha_proceso_baja ;;
  }

  dimension: forma_pago_key {
    hidden: yes
    type: number
    sql: ${TABLE}.forma_pago_key ;;
  }

  dimension: mercado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.mercado_key ;;
  }

  dimension: motivo_rechazo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.motivo_rechazo_key ;;
  }

  dimension: numero_certificado {
    group_label: "Pólizas"
    type: number
    sql: ${TABLE}.numero_certificado ;;
  }

  dimension: numero_poliza {
    group_label: "Pólizas"
    type: string
    sql: ${TABLE}.numero_poliza ;;
  }

  dimension: numero_solicitud {
    group_label: "Pólizas"
    type: number
    sql: ${TABLE}.numero_solicitud ;;
  }

  dimension: oficial_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_cuenta_key ;;
  }

  dimension: poliza_key {
    hidden: yes
    type: number
    sql: ${TABLE}.poliza_key ;;
  }

  dimension: precio_actual {
    group_label: "Pólizas"
    type: number
    sql: ${TABLE}.precio_actual ;;
  }

  dimension: precio_alta {
    group_label: "Pólizas"
    type: number
    sql: ${TABLE}.precio_alta ;;
  }

  dimension: producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_key ;;
  }

  dimension: renovacion_numero {
    group_label: "Pólizas"
    type: number
    sql: ${TABLE}.renovacion_numero ;;
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

  dimension: tipo_bien_asegurado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_bien_asegurado_key ;;
  }

  dimension: tipo_cuenta_debito {
    group_label: "Pólizas"
    type: string
    sql: ${TABLE}.tipo_cuenta_debito ;;
  }

  dimension: usuario_anulacion {
    group_label: "Pólizas"
    type: string
    sql: ${TABLE}.usuario_anulacion ;;
  }

  dimension: vendedor_canal_key {
    hidden: yes
    type: number
    sql: ${TABLE}.vendedor_canal_key ;;
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
