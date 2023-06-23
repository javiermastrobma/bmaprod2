view: fct_situaciones_contratos_cajas_seguridad {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_situaciones_contratos_cajas_seguridad`
    ;;
    view_label: " Fct Situaciones Contratos Cajas Seguridad"

  dimension: alquileres_bonificados {
    type: number
    sql: ${TABLE}.alquileres_bonificados ;;
  }

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_situaciones_contratos_cajas_seguridad s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

  dimension: alquileres_cobrados {
    type: number
    sql: ${TABLE}.alquileres_cobrados ;;
  }

  dimension: alquileres_devengados {
    type: number
    sql: ${TABLE}.alquileres_devengados ;;
  }

  dimension: alquileres_liquidados {
    type: number
    sql: ${TABLE}.alquileres_liquidados ;;
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

  dimension: caja_seguridad_key {
    hidden: yes
    type: number
    sql: ${TABLE}.caja_seguridad_key ;;
  }

  dimension: cantidad_cuentas {
    type: number
    sql: ${TABLE}.cantidad_cuentas ;;
  }

  dimension: cantidad_paquetes {
    type: number
    sql: ${TABLE}.cantidad_paquetes ;;
  }

  dimension: cantidad_visitas_mes_cs {
    type: number
    sql: ${TABLE}.cantidad_visitas_mes_cs ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: codigo_cobranza {
    type: number
    sql: ${TABLE}.codigo_cobranza ;;
  }

  dimension: comisiones_devengadas {
    type: number
    sql: ${TABLE}.comisiones_devengadas ;;
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

  dimension: estado_contrato_cs_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_contrato_cs_key ;;
  }

  dimension_group: fecha_inicio_mora {
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
    sql: ${TABLE}.fecha_inicio_mora ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension_group: fecha_ultima_visita_cs {
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
    sql: ${TABLE}.fecha_ultima_visita_cs ;;
  }

  dimension: forma_pago {
    type: string
    sql: ${TABLE}.forma_pago ;;
  }

  dimension: indicador_mora {
    type: number
    sql: ${TABLE}.indicador_mora ;;
  }

  dimension: marca_renovacion {
    type: number
    sql: ${TABLE}.marca_renovacion ;;
  }

  dimension: monto_mora {
    type: number
    sql: ${TABLE}.monto_mora ;;
  }

  dimension: monto_pendiente_cobro {
    type: number
    sql: ${TABLE}.monto_pendiente_cobro ;;
  }

  dimension: oficial_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_cuenta_key ;;
  }

  dimension: otras_comisiones_liquidadas {
    type: number
    sql: ${TABLE}.otras_comisiones_liquidadas ;;
  }

  dimension: producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_key ;;
  }

  dimension: sucursal_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
