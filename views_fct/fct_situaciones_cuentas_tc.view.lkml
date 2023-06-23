view: fct_situaciones_cuentas_tc {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_situaciones_cuentas_tc`
    ;;
  view_label: " Fct Situaciones Cuentas Tc"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_situaciones_cuentas_tc s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

dimension: actividad_key {
  hidden: yes
  type: number
  sql: ${TABLE}.actividad_key ;;
}

dimension: adelantos_ciclo_dolares {
  type: number
  sql: ${TABLE}.adelantos_ciclo_dolares ;;
}

dimension: adelantos_ciclo_pesos {
  type: number
  sql: ${TABLE}.adelantos_ciclo_pesos ;;
}

dimension: adelantos_mes_dolares {
  type: number
  sql: ${TABLE}.adelantos_mes_dolares ;;
}

dimension: adelantos_mes_pesos {
  type: number
  sql: ${TABLE}.adelantos_mes_pesos ;;
}

dimension: administracion_pago_minimo_ciclo {
  type: number
  sql: ${TABLE}.administracion_pago_minimo_ciclo ;;
}

dimension: alta_mes {
  type: string
  sql: ${TABLE}.alta_mes ;;
}

dimension: antiguedad_cuenta {
  type: number
  sql: ${TABLE}.antiguedad_cuenta ;;
}

dimension: arancel_emisor_ciclo {
  type: number
  sql: ${TABLE}.arancel_emisor_ciclo ;;
}

dimension: asistencia_al_viajero_ciclo {
  type: number
  sql: ${TABLE}.asistencia_al_viajero_ciclo ;;
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

dimension: bonificaciones_mes_dolares {
  type: number
  sql: ${TABLE}.bonificaciones_mes_dolares ;;
}

dimension: bonificaciones_mes_pesos {
  type: number
  sql: ${TABLE}.bonificaciones_mes_pesos ;;
}

dimension: campania_key {
  hidden: yes
  type: number
  sql: ${TABLE}.campania_key ;;
}

dimension: cantidad_adicionales_ciclo {
  type: number
  sql: ${TABLE}.cantidad_adicionales_ciclo ;;
}

dimension: cantidad_adicionales_mes {
  type: number
  sql: ${TABLE}.cantidad_adicionales_mes ;;
}

dimension: cantidad_consumos_mes {
  type: number
  sql: ${TABLE}.cantidad_consumos_mes ;;
}

dimension: cantidad_cuentas {
  type: number
  sql: ${TABLE}.cantidad_cuentas ;;
}

dimension: cantidad_pagos_mes {
  type: number
  sql: ${TABLE}.cantidad_pagos_mes ;;
}

dimension: cartera_tc_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cartera_tc_key ;;
}

dimension: cliente_cumplidor_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cliente_cumplidor_key ;;
}

dimension: cliente_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cliente_key ;;
}

dimension: comision_adelantos_ciclo {
  type: number
  sql: ${TABLE}.comision_adelantos_ciclo ;;
}

dimension: comision_aerolineas_plus_ciclo {
  type: number
  sql: ${TABLE}.comision_aerolineas_plus_ciclo ;;
}

dimension: comision_exceso_limite_ciclo {
  type: number
  sql: ${TABLE}.comision_exceso_limite_ciclo ;;
}

dimension: comision_extravio_ciclo {
  type: number
  sql: ${TABLE}.comision_extravio_ciclo ;;
}

dimension: compania_seguro_vida_key {
  type: number
  sql: ${TABLE}.compania_seguro_vida_key ;;
}

dimension: con_resumen {
  type: string
  sql: ${TABLE}.con_resumen ;;
}

dimension: consumo_ciclo_dolares {
  type: number
  sql: ${TABLE}.consumo_ciclo_dolares ;;
}

dimension: consumo_ciclo_pesos {
  type: number
  sql: ${TABLE}.consumo_ciclo_pesos ;;
}

dimension: consumo_mes_dolares {
  type: number
  sql: ${TABLE}.consumo_mes_dolares ;;
}

dimension: consumo_mes_pesos {
  type: number
  sql: ${TABLE}.consumo_mes_pesos ;;
}

dimension: cotizacion_banco {
  type: number
  sql: ${TABLE}.cotizacion_banco ;;
}

dimension: cotizacion_cierre_ciclo {
  type: number
  sql: ${TABLE}.cotizacion_cierre_ciclo ;;
}

dimension: cuenta_paquete_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cuenta_paquete_key ;;
}

dimension: cuenta_tc_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cuenta_tc_key ;;
}

dimension: debitos_tc_key {
  hidden: yes
  type: number
  sql: ${TABLE}.debitos_tc_key ;;
}

dimension: devolucion_aerolineas_plus_ciclo {
  type: number
  sql: ${TABLE}.devolucion_aerolineas_plus_ciclo ;;
}

dimension: dias_atraso {
  type: number
  sql: ${TABLE}.dias_atraso ;;
}

dimension: dias_atraso_concentrador {
  type: number
  sql: ${TABLE}.dias_atraso_concentrador ;;
}

dimension: emision_resumen_ciclo {
  type: number
  sql: ${TABLE}.emision_resumen_ciclo ;;
}

dimension: estado_cuenta_tc_key {
  hidden: yes
  type: number
  sql: ${TABLE}.estado_cuenta_tc_key ;;
}

dimension: estado_paquete_key {
  hidden: yes
  type: number
  sql: ${TABLE}.estado_paquete_key ;;
}

dimension_group: fecha_baja_planes_cuota {
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
  sql: ${TABLE}.fecha_baja_planes_cuota ;;
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

dimension_group: fecha_inicio_primer_atraso {
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
  sql: ${TABLE}.fecha_inicio_primer_atraso ;;
}

dimension: fecha_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_key ;;
}

dimension_group: fecha_paro_devengamiento {
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
  sql: ${TABLE}.fecha_paro_devengamiento ;;
}

dimension_group: fecha_pase_a_cartera {
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
  sql: ${TABLE}.fecha_pase_a_cartera ;;
}

dimension_group: fecha_ultimo_consumo {
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
  sql: ${TABLE}.fecha_ultimo_consumo ;;
}

dimension_group: fecha_ultimo_pago {
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
  sql: ${TABLE}.fecha_ultimo_pago ;;
}

dimension_group: fecha_vencimiento_resumen {
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
  sql: ${TABLE}.fecha_vencimiento_resumen ;;
}

dimension: grupo_afinidad_key {
  hidden: yes
  type: number
  sql: ${TABLE}.grupo_afinidad_key ;;
}

dimension: intereses_adelantos_ciclo_dolares {
  type: number
  sql: ${TABLE}.intereses_adelantos_ciclo_dolares ;;
}

dimension: intereses_adelantos_ciclo_pesos {
  type: number
  sql: ${TABLE}.intereses_adelantos_ciclo_pesos ;;
}

dimension: intereses_financiacion_ciclo_dolares {
  type: number
  sql: ${TABLE}.intereses_financiacion_ciclo_dolares ;;
}

dimension: intereses_financiacion_ciclo_pesos {
  type: number
  sql: ${TABLE}.intereses_financiacion_ciclo_pesos ;;
}

dimension: intereses_financieros_compras_cuotas_pesos {
  type: number
  sql: ${TABLE}.intereses_financieros_compras_cuotas_pesos ;;
}

dimension: intereses_punitorios_ciclo_dolares {
  type: number
  sql: ${TABLE}.intereses_punitorios_ciclo_dolares ;;
}

dimension: intereses_punitorios_ciclo_pesos {
  type: number
  sql: ${TABLE}.intereses_punitorios_ciclo_pesos ;;
}

dimension: limite_compra {
  type: number
  sql: ${TABLE}.limite_compra ;;
}

dimension: limite_compra_cuotas {
  type: number
  sql: ${TABLE}.limite_compra_cuotas ;;
}

dimension: limite_financiacion {
  type: number
  sql: ${TABLE}.limite_financiacion ;;
}

dimension: limite_prestamo {
  type: number
  sql: ${TABLE}.limite_prestamo ;;
}

dimension: limite_unificado {
  type: string
  sql: ${TABLE}.limite_unificado ;;
}

dimension: millas_ajustadas_ciclo {
  type: number
  sql: ${TABLE}.millas_ajustadas_ciclo ;;
}

dimension: millas_canjeadas_ciclo {
  type: number
  sql: ${TABLE}.millas_canjeadas_ciclo ;;
}

dimension: millas_ganadas_ciclo {
  type: number
  sql: ${TABLE}.millas_ganadas_ciclo ;;
}

dimension: millas_vencidas_ciclo {
  type: number
  sql: ${TABLE}.millas_vencidas_ciclo ;;
}

dimension: modelo_liquidacion_tc_key {
  hidden: yes
  type: number
  sql: ${TABLE}.modelo_liquidacion_tc_key ;;
}

dimension: nir {
  type: number
  sql: ${TABLE}.nir ;;
}

dimension: oficial_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.oficial_cuenta_key ;;
}

dimension: otros_atributos_key {
  hidden: yes
  type: number
  sql: ${TABLE}.otros_atributos_key ;;
}

dimension: otros_cargos_financieros_ciclo_dolares {
  type: number
  sql: ${TABLE}.otros_cargos_financieros_ciclo_dolares ;;
}

dimension: otros_cargos_financieros_ciclo_pesos {
  type: number
  sql: ${TABLE}.otros_cargos_financieros_ciclo_pesos ;;
}

dimension: otros_cargos_financieros_mes_dolares {
  type: number
  sql: ${TABLE}.otros_cargos_financieros_mes_dolares ;;
}

dimension: otros_cargos_financieros_mes_pesos {
  type: number
  sql: ${TABLE}.otros_cargos_financieros_mes_pesos ;;
}

dimension: otros_cargos_no_financieros_ciclo_dolares {
  type: number
  sql: ${TABLE}.otros_cargos_no_financieros_ciclo_dolares ;;
}

dimension: otros_cargos_no_financieros_ciclo_pesos {
  type: number
  sql: ${TABLE}.otros_cargos_no_financieros_ciclo_pesos ;;
}

dimension: pago_minimo {
  type: number
  sql: ${TABLE}.pago_minimo ;;
}

dimension: pagos_mes_dolares {
  type: number
  sql: ${TABLE}.pagos_mes_dolares ;;
}

dimension: pagos_mes_pesos {
  type: number
  sql: ${TABLE}.pagos_mes_pesos ;;
}

dimension: plasticos_habilitados_ciclo {
  type: number
  sql: ${TABLE}.plasticos_habilitados_ciclo ;;
}

dimension: plasticos_habilitados_mes {
  type: number
  sql: ${TABLE}.plasticos_habilitados_mes ;;
}

dimension: plasticos_inhabilitados_ciclo {
  type: number
  sql: ${TABLE}.plasticos_inhabilitados_ciclo ;;
}

dimension: plasticos_inhabilitados_mes {
  type: number
  sql: ${TABLE}.plasticos_inhabilitados_mes ;;
}

dimension: preembozo {
  type: string
  sql: ${TABLE}.preembozo ;;
}

dimension: producto_key {
  hidden: yes
  type: number
  sql: ${TABLE}.producto_key ;;
}

dimension: renovaciones_ciclo {
  type: number
  sql: ${TABLE}.renovaciones_ciclo ;;
}

dimension: residencia_key {
  hidden: yes
  type: number
  sql: ${TABLE}.residencia_key ;;
}

dimension: saldo_ciclo_dolares {
  type: number
  sql: ${TABLE}.saldo_ciclo_dolares ;;
}

dimension: saldo_ciclo_pesos {
  type: number
  sql: ${TABLE}.saldo_ciclo_pesos ;;
}

dimension: saldo_compras_en_cuotas_dolares {
  type: number
  sql: ${TABLE}.saldo_compras_en_cuotas_dolares ;;
}

dimension: saldo_compras_en_cuotas_pesos {
  type: number
  sql: ${TABLE}.saldo_compras_en_cuotas_pesos ;;
}

dimension: saldo_financiado_dolares {
  type: number
  sql: ${TABLE}.saldo_financiado_dolares ;;
}

dimension: saldo_financiado_pesos {
  type: number
  sql: ${TABLE}.saldo_financiado_pesos ;;
}

dimension: saldo_fondeado_mes {
  type: number
  sql: ${TABLE}.saldo_fondeado_mes ;;
}

dimension: saldo_mes_dolares {
  type: number
  sql: ${TABLE}.saldo_mes_dolares ;;
}

dimension: saldo_mes_pesos {
  type: number
  sql: ${TABLE}.saldo_mes_pesos ;;
}

dimension: saldo_millas_ciclo {
  type: number
  sql: ${TABLE}.saldo_millas_ciclo ;;
}

dimension: saldo_pago_diferido_dolares {
  type: number
  sql: ${TABLE}.saldo_pago_diferido_dolares ;;
}

dimension: saldo_pago_diferido_pesos {
  type: number
  sql: ${TABLE}.saldo_pago_diferido_pesos ;;
}

dimension: saldo_prestamos_ciclo_dolares {
  type: number
  sql: ${TABLE}.saldo_prestamos_ciclo_dolares ;;
}

dimension: saldo_prestamos_ciclo_pesos {
  type: number
  sql: ${TABLE}.saldo_prestamos_ciclo_pesos ;;
}

dimension: saldo_prestamos_mes_dolares {
  type: number
  sql: ${TABLE}.saldo_prestamos_mes_dolares ;;
}

dimension: saldo_prestamos_mes_pesos {
  type: number
  sql: ${TABLE}.saldo_prestamos_mes_pesos ;;
}

dimension: sector_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sector_key ;;
}

dimension: seguros_ciclo {
  type: number
  sql: ${TABLE}.seguros_ciclo ;;
}

dimension: sucursal_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_cuenta_key ;;
}

dimension: tipo_paquete_key {
  hidden: yes
  type: number
  sql: ${TABLE}.tipo_paquete_key ;;
}

measure: count {
  type: count
  drill_fields: []
}
}
