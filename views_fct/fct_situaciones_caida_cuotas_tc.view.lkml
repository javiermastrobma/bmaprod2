view: fct_situaciones_caida_cuotas_tc {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_situaciones_caida_cuotas_tc`
    ;;
    view_label: " Fct Situaciones Caida Cuotas TC"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_cierre_key} = (SELECT MAX(f.fecha_key) FROM fct_situaciones_caida_cuotas_tc s
      LEFT JOIN lkp_fechas f ON s.fecha_transaccion_key = f.fecha_key) ;;
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

  dimension: cliente_tarjeta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_tarjeta_key ;;
  }

  dimension: comercio_key {
    hidden: yes
    type: number
    sql: ${TABLE}.comercio_key ;;
  }

  dimension: cuenta_tc_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_tc_key ;;
  }

  dimension: especie_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_key ;;
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

  dimension: fecha_cierre_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_cierre_key ;;
  }

  dimension: fecha_mes_caida_cierre_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_mes_caida_cierre_key ;;
  }

  dimension_group: fecha_presentacion {
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
    sql: ${TABLE}.fecha_presentacion ;;
  }

  dimension_group: fecha_vencimiento_cuota {
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
    sql: ${TABLE}.fecha_vencimiento_cuota ;;
  }

  dimension: flag_cuota_mes {
    type: number
    sql: ${TABLE}.flag_cuota_mes ;;
  }

  dimension: importe_capital_cuota {
    type: number
    sql: ${TABLE}.importe_capital_cuota ;;
  }

  dimension: importe_interes_cuota {
    type: number
    sql: ${TABLE}.importe_interes_cuota ;;
  }

  dimension: importe_total_capital {
    type: number
    sql: ${TABLE}.importe_total_capital ;;
  }

  dimension: marca_key {
    hidden: yes
    type: number
    sql: ${TABLE}.marca_key ;;
  }

  dimension: numero_cuota {
    type: number
    sql: ${TABLE}.numero_cuota ;;
  }

  dimension: numero_cupon {
    type: string
    sql: ${TABLE}.numero_cupon ;;
  }

  dimension: plan_cuotas {
    type: number
    sql: ${TABLE}.plan_cuotas ;;
  }

  dimension: producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_key ;;
  }

  dimension: rubro_key {
    hidden: yes
    type: number
    sql: ${TABLE}.rubro_key ;;
  }

  dimension: sucursal_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: tarjeta_credito_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tarjeta_credito_key ;;
  }

  dimension: tramo_vencimiento_cuota_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tramo_vencimiento_cuota_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
