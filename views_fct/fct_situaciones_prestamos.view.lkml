view: fct_situaciones_prestamos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_situaciones_prestamos`
    ;;
    view_label: " Fct Situaciones Prestamos"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_situaciones_prestamos s
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

  dimension: cantidad_cuentas {
    type: number
    sql: ${TABLE}.cantidad_cuentas ;;
  }

  dimension: cantidad_cuotas_con_atraso {
    type: number
    sql: ${TABLE}.cantidad_cuotas_con_atraso ;;
  }

  dimension: cantidad_cuotas_pactadas {
    type: number
    sql: ${TABLE}.cantidad_cuotas_pactadas ;;
  }

  dimension: cantidad_cuotas_pagas {
    type: number
    sql: ${TABLE}.cantidad_cuotas_pagas ;;
  }

  dimension: cantidad_paquetes {
    type: number
    sql: ${TABLE}.cantidad_paquetes ;;
  }

  dimension: codigo_cesion {
    type: string
    sql: ${TABLE}.codigo_cesion ;;
  }

  dimension: compania_seguro_vida_key {
    hidden: yes
    type: number
    sql: ${TABLE}.compania_seguro_vida_key ;;
  }

  dimension: cotizacion {
    type: number
    sql: ${TABLE}.cotizacion ;;
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

  dimension: cuotas_restantes {
    type: number
    sql: ${TABLE}.cuotas_restantes ;;
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

  dimension: estado_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_cuenta_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
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

  dimension: interes_proyectado {
    type: number
    sql: ${TABLE}.interes_proyectado ;;
  }

  dimension: mercado {
    type: number
    sql: ${TABLE}.mercado ;;
  }

  dimension: mercado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.mercado_key ;;
  }

  dimension: monto_asegurado_incendio {
    type: number
    sql: ${TABLE}.monto_asegurado_incendio ;;
  }

  dimension: monto_asegurado_vida {
    type: number
    sql: ${TABLE}.monto_asegurado_vida ;;
  }

  dimension: monto_original {
    type: number
    sql: ${TABLE}.monto_original ;;
  }

  dimension: oficial_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_cuenta_key ;;
  }

  dimension: producto_2_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_2_key ;;
  }

  dimension: producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_key ;;
  }

  dimension: saldo_dia {
       type: number
    sql: ${TABLE}.saldo_dia ;;
  }

  dimension: saldo_dia_ced {
      type: number
    sql: ${TABLE}.saldo_dia_ced ;;
  }

  dimension: saldo_promedio {
    type: number
    sql: ${TABLE}.saldo_promedio ;;
  }

  dimension: saldo_promedio_ced {
    type: number
    sql: ${TABLE}.saldo_promedio_ced ;;
  }

  dimension: submercado {
    type: number
    sql: ${TABLE}.submercado ;;
  }

  dimension: sucursal_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: tasa {
    type: number
    sql: ${TABLE}.tasa ;;
  }

  dimension: valor_tasacion_garantia_hipotecaria {
    type: number
    sql: ${TABLE}.valor_tasacion_garantia_hipotecaria ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
