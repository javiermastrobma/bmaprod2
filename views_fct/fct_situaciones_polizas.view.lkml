view: fct_situaciones_polizas {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_situaciones_polizas`
    ;;
    view_label: " Fct Situaciones Polizas"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_situaciones_polizas s
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

  dimension: cant_cuotas {
    type: number
    sql: ${TABLE}.cant_cuotas ;;
  }

  dimension: cant_cuotas_impagas {
    type: number
    sql: ${TABLE}.cant_cuotas_impagas ;;
  }

  dimension: cant_cuotas_pagas {
    type: number
    sql: ${TABLE}.cant_cuotas_pagas ;;
  }

  dimension: cant_siniestros_liquidados {
    type: number
    sql: ${TABLE}.cant_siniestros_liquidados ;;
  }

  dimension: cant_siniestros_rechazados {
    type: number
    sql: ${TABLE}.cant_siniestros_rechazados ;;
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

  dimension: comision_acum_a_terceros {
    type: number
    sql: ${TABLE}.comision_acum_a_terceros ;;
  }

  dimension: comision_acum_exigible {
    type: number
    sql: ${TABLE}.comision_acum_exigible ;;
  }

  dimension: comision_acum_liquidada {
    type: number
    sql: ${TABLE}.comision_acum_liquidada ;;
  }

  dimension: comision_acum_total {
    type: number
    sql: ${TABLE}.comision_acum_total ;;
  }

  dimension: comision_mes_a_terceros {
    type: number
    sql: ${TABLE}.comision_mes_a_terceros ;;
  }

  dimension: comision_mes_exigible {
    type: number
    sql: ${TABLE}.comision_mes_exigible ;;
  }

  dimension: comision_mes_liquidada {
    type: number
    sql: ${TABLE}.comision_mes_liquidada ;;
  }

  dimension: comision_mes_total {
    type: number
    sql: ${TABLE}.comision_mes_total ;;
  }

  dimension: compania_key {
    hidden: yes
    type: number
    sql: ${TABLE}.compania_key ;;
  }

  dimension: dias_atraso {
    type: number
    sql: ${TABLE}.dias_atraso ;;
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

  dimension_group: fecha_baja {
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

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension_group: fecha_proceso_alta {
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

  dimension: importe_cuotas_impagas {
    type: number
    sql: ${TABLE}.importe_cuotas_impagas ;;
  }

  dimension: importe_cuotas_pagas {
    type: number
    sql: ${TABLE}.importe_cuotas_pagas ;;
  }

  dimension: importe_cuotas_pagas_mes {
    type: number
    sql: ${TABLE}.importe_cuotas_pagas_mes ;;
  }

  dimension: importe_siniestros_liquidados {
    type: number
    sql: ${TABLE}.importe_siniestros_liquidados ;;
  }

  dimension: importe_siniestros_rechazados {
    type: number
    sql: ${TABLE}.importe_siniestros_rechazados ;;
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

  dimension: nir {
    type: number
    sql: ${TABLE}.nir ;;
  }

  dimension: numero_operacion_origen {
    type: string
    sql: ${TABLE}.numero_operacion_origen ;;
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
    type: number
    sql: ${TABLE}.precio_actual ;;
  }

  dimension: premio {
    type: number
    sql: ${TABLE}.premio ;;
  }

  dimension: prima {
    type: number
    sql: ${TABLE}.prima ;;
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

  dimension: renovacion_numero {
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

  dimension: suma_asegurada {
    type: number
    sql: ${TABLE}.suma_asegurada ;;
  }

  dimension: tipo_bien_asegurado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_bien_asegurado_key ;;
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
    type: count
    drill_fields: []
  }
}
