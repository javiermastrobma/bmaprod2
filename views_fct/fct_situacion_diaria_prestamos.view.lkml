view: fct_situacion_diaria_prestamos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_situacion_diaria_prestamos`
    ;;
    view_label: " Fct Situación Diaria Prestamos"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_situacion_diaria_prestamos s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

  dimension: ajuste_capital {
    type: number
    sql: ${TABLE}.ajuste_capital ;;
  }

  dimension: ajuste_capital_cedido {
    type: number
    sql: ${TABLE}.ajuste_capital_cedido ;;
  }

  dimension: ajuste_capital_no_cedido {
    type: number
    sql: ${TABLE}.ajuste_capital_no_cedido ;;
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

  dimension: cantidad_cuentas {
    type: number
    sql: ${TABLE}.cantidad_cuentas ;;
  }

  dimension: cantidad_cuotas_con_atraso {
    type: number
    sql: ${TABLE}.cantidad_cuotas_con_atraso ;;
  }

  dimension: cantidad_cuotas_pagas {
    type: number
    sql: ${TABLE}.cantidad_cuotas_pagas ;;
  }

  dimension: cantidad_cuotas_restantes {
    type: number
    sql: ${TABLE}.cantidad_cuotas_restantes ;;
  }

  dimension: cantidad_paquetes {
    type: number
    sql: ${TABLE}.cantidad_paquetes ;;
  }

  dimension: capital {
    type: number
    sql: ${TABLE}.capital ;;
  }

  dimension: capital_cedido {
    type: number
    sql: ${TABLE}.capital_cedido ;;
  }

  dimension: capital_no_cedido {
    type: number
    sql: ${TABLE}.capital_no_cedido ;;
  }

  dimension: cliente_firmante_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_firmante_key ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: codigo_cesion {
    type: string
    sql: ${TABLE}.codigo_cesion ;;
  }

  dimension: cotizacion {
    type: number
    sql: ${TABLE}.cotizacion ;;
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

  dimension: cuotas_remanentes {
    type: number
    sql: ${TABLE}.cuotas_remanentes ;;
  }

  dimension: dias_atraso {
    type: number
    sql: ${TABLE}.dias_atraso ;;
  }

  dimension: dias_proxima_cuota {
    type: number
    sql: ${TABLE}.dias_proxima_cuota ;;
  }

  dimension: especie_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_key ;;
  }

  dimension: estado_deuda_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_deuda_key ;;
  }

  dimension: estado_gestion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_gestion_key ;;
  }

  dimension: estudio_externo_cobranza_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estudio_externo_cobranza_key ;;
  }

  dimension: estudio_externo_recupero_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estudio_externo_recupero_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: fecha_vencimiento_cuota_atraso_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_vencimiento_cuota_atraso_key ;;
  }

  dimension_group: fecha_vencimiento_prestamos {
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
    sql: ${TABLE}.fecha_vencimiento_prestamos ;;
  }

  dimension: forma_cobro_key {
    hidden: yes
    type: number
    sql: ${TABLE}.forma_cobro_key ;;
  }

  dimension: interes {
    type: number
    sql: ${TABLE}.interes ;;
  }

  dimension: interes_cedido {
    type: number
    sql: ${TABLE}.interes_cedido ;;
  }

  dimension: interes_documentado {
    type: number
    sql: ${TABLE}.interes_documentado ;;
  }

  dimension: interes_mora {
    type: number
    sql: ${TABLE}.interes_mora ;;
  }

  dimension: interes_no_cedido {
    type: number
    sql: ${TABLE}.interes_no_cedido ;;
  }

  dimension: interes_proyectado {
    type: number
    sql: ${TABLE}.interes_proyectado ;;
  }

  dimension: iva {
    type: number
    sql: ${TABLE}.iva ;;
  }

  dimension: iva_vencido {
    type: number
    sql: ${TABLE}.iva_vencido ;;
  }

  dimension: mercado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.mercado_key ;;
  }

  dimension: monto_proxima_cuota {
    type: number
    sql: ${TABLE}.monto_proxima_cuota ;;
  }

  dimension: oficial_cobranza_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_cobranza_key ;;
  }

  dimension: oficial_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_cuenta_key ;;
  }

  dimension: oficial_recupero_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_recupero_key ;;
  }

  dimension: otros_rubros_contable {
    type: number
    sql: ${TABLE}.otros_rubros_contable ;;
  }

  dimension: otros_rubros_operativo {
    type: number
    sql: ${TABLE}.otros_rubros_operativo ;;
  }

  dimension: producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_key ;;
  }

  dimension: situacion_deudor_key {
    hidden: yes
    type: number
    sql: ${TABLE}.situacion_deudor_key ;;
  }

  dimension: sucursal_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: total_contable {
    type: number
    sql: ${TABLE}.total_contable ;;
  }

  dimension: total_operativo {
    type: number
    sql: ${TABLE}.total_operativo ;;
  }

  dimension: unidad_cobranza_key {
    hidden: yes
    type: number
    sql: ${TABLE}.unidad_cobranza_key ;;
  }

  dimension: unidad_recupero_key {
    hidden: yes
    type: number
    sql: ${TABLE}.unidad_recupero_key ;;
  }

  dimension: valor_nominal {
    type: number
    sql: ${TABLE}.valor_nominal ;;
  }

  dimension_group: vencim_proxima_cuota {
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
    sql: ${TABLE}.vencim_proxima_cuota ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
