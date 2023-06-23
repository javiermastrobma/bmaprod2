view: lkp_cuentas_tc {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_cuentas_tc`
    ;;
  view_label: "Otras Dimensiones"

  dimension: actividad_key {
    hidden: yes
    type: number
    sql: ${TABLE}.actividad_key ;;
  }

  dimension: alta_temprana {
    group_label: "Cuentas TC"
    type: string
    sql: ${TABLE}.alta_temprana ;;
  }

  dimension: asistencia_al_viajero {
    group_label: "Cuentas TC"
    type: string
    sql: ${TABLE}.asistencia_al_viajero ;;
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

  dimension: campania_key {
    hidden: yes
    type: number
    sql: ${TABLE}.campania_key ;;
  }

  dimension: cartera_tc_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cartera_tc_key ;;
  }

  dimension: causa_cierre_key {
    hidden: yes
    type: number
    sql: ${TABLE}.causa_cierre_key ;;
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

  dimension: codigo_cliente {
    group_label: "Cuentas TC"
    type: number
    sql: ${TABLE}.codigo_cliente ;;
  }

  dimension: codigo_cuenta {
    group_label: "Cuentas TC"
    type: string
    sql: ${TABLE}.codigo_cuenta ;;
  }

  dimension: coeficiente_adelanto {
    group_label: "Cuentas TC"
    type: number
    sql: ${TABLE}.coeficiente_adelanto ;;
  }

  dimension: compania_seguro_vida_key {
    hidden: yes
    type: number
    sql: ${TABLE}.compania_seguro_vida_key ;;
  }

  dimension: convenio_key {
    hidden: yes
    type: number
    sql: ${TABLE}.convenio_key ;;
  }

  dimension: coresp_nombre_deptooflocal {
    group_label: "Cuentas TC"
    type: string
    sql: ${TABLE}.coresp_nombre_deptooflocal ;;
  }

  dimension: corresp_calle {
    group_label: "Cuentas TC"
    type: string
    sql: ${TABLE}.corresp_calle ;;
  }

  dimension: corresp_cp {
    group_label: "Cuentas TC"
    type: string
    sql: ${TABLE}.corresp_cp ;;
  }

  dimension: corresp_localidad {
    group_label: "Cuentas TC"
    type: string
    sql: ${TABLE}.corresp_localidad ;;
  }

  dimension: corresp_no_puerta {
    group_label: "Cuentas TC"
    type: string
    sql: ${TABLE}.corresp_no_puerta ;;
  }

  dimension: corresp_nro_deptooflocal {
    group_label: "Cuentas TC"
    type: string
    sql: ${TABLE}.corresp_nro_deptooflocal ;;
  }

  dimension: corresp_piso {
    group_label: "Cuentas TC"
    type: string
    sql: ${TABLE}.corresp_piso ;;
  }

  dimension: corresp_provincia_key {
    hidden: yes
    type: number
    sql: ${TABLE}.corresp_provincia_key ;;
  }

  dimension: cuenta_debito_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_debito_key ;;
  }

  dimension: cuenta_tc_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_tc_key ;;
  }

  dimension: cuenta_tc_obsoleta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_tc_obsoleta_key ;;
  }

  dimension: debitos_tc_key {
    hidden: yes
    type: number
    sql: ${TABLE}.debitos_tc_key ;;
  }

  dimension: digito_verificador {
    group_label: "Cuentas TC"
    type: number
    sql: ${TABLE}.digito_verificador ;;
  }

  dimension: empresa_madre_key {
    hidden: yes
    type: number
    sql: ${TABLE}.empresa_madre_key ;;
  }

  dimension: entidad {
    group_label: "Cuentas TC"
    type: number
    sql: ${TABLE}.entidad ;;
  }

  dimension: estado_cuenta_tc_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_cuenta_tc_key ;;
  }

  dimension_group: fecha_alta {
    group_label: "Cuentas TC"
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

  dimension_group: fecha_alta_entidad {
    group_label: "Cuentas TC"
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
    sql: ${TABLE}.fecha_alta_entidad ;;
  }

  dimension_group: fecha_baja {
    group_label: "Cuentas TC"
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

  dimension_group: fecha_ingreso_primer_atraso {
    group_label: "Cuentas TC"
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
    sql: ${TABLE}.fecha_ingreso_primer_atraso ;;
  }

  dimension_group: fecha_primer_consumo {
    group_label: "Cuentas TC"
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
    sql: ${TABLE}.fecha_primer_consumo ;;
  }

  dimension_group: fecha_ultimo_consumo {
    group_label: "Cuentas TC"
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
    group_label: "Cuentas TC"
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

  dimension_group: fecha_vencimiento_ultima_cuota {
    group_label: "Cuentas TC"
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
    sql: ${TABLE}.fecha_vencimiento_ultima_cuota ;;
  }

  dimension: grupo_afinidad_key {
    hidden: yes
    type: number
    sql: ${TABLE}.grupo_afinidad_key ;;
  }

  dimension: limite_compra {
    group_label: "Cuentas TC"
    type: number
    sql: ${TABLE}.limite_compra ;;
  }

  dimension: limite_compra_cuotas {
    group_label: "Cuentas TC"
    type: number
    sql: ${TABLE}.limite_compra_cuotas ;;
  }

  dimension: limite_financiacion {
    group_label: "Cuentas TC"
    type: number
    sql: ${TABLE}.limite_financiacion ;;
  }

  dimension: limite_prestamos {
    group_label: "Cuentas TC"
    type: number
    sql: ${TABLE}.limite_prestamos ;;
  }

  dimension: limite_unificado {
    group_label: "Cuentas TC"
    type: string
    sql: ${TABLE}.limite_unificado ;;
  }

  dimension: modelo_autorizacion_tc_key {
    hidden: yes
    type: number
    sql: ${TABLE}.modelo_autorizacion_tc_key ;;
  }

  dimension: modelo_liquidacion_tc_key {
    hidden: yes
    type: number
    sql: ${TABLE}.modelo_liquidacion_tc_key ;;
  }

  dimension: modelo_renovacion_tc_key {
    hidden: yes
    type: number
    sql: ${TABLE}.modelo_renovacion_tc_key ;;
  }

  dimension: oficial_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_cuenta_key ;;
  }

  dimension: paquete_id {
    group_label: "Cuentas TC"
    type: string
    sql: ${TABLE}.paquete_id ;;
  }

  dimension: periodo_alta_temprana {
    group_label: "Cuentas TC"
    type: string
    sql: ${TABLE}.periodo_alta_temprana ;;
  }

  dimension: preembozo {
    group_label: "Cuentas TC"
    type: string
    sql: ${TABLE}.preembozo ;;
  }

  dimension: producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_key ;;
  }

  dimension: provincia_key {
    hidden: yes
    type: number
    sql: ${TABLE}.provincia_key ;;
  }

  dimension: residencia_key {
    hidden: yes
    type: number
    sql: ${TABLE}.residencia_key ;;
  }

  dimension: restringido {
    group_label: "Cuentas TC"
    type: string
    sql: ${TABLE}.RESTRINGIDO ;;
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

  dimension: telefono {
    group_label: "Cuentas TC"
    type: string
    sql: ${TABLE}.telefono ;;
  }

  dimension: tipo_socio {
    group_label: "Cuentas TC"
    type: number
    sql: ${TABLE}.tipo_socio ;;
  }

  dimension: user_id {
    group_label: "Cuentas TC"
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: vendedor_login {
    group_label: "Cuentas TC"
    type: string
    sql: ${TABLE}.vendedor_login ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
