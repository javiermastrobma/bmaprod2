view: fct_situaciones_diaria_comex {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_situaciones_diaria_comex`
    ;;
    view_label: " Fct Situaciones Diaria Comex"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_situaciones_diaria_comex s
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

  dimension: capital_adeudado {
    type: number
    sql: ${TABLE}.capital_adeudado ;;
  }

  dimension: capital_vencido {
    type: number
    sql: ${TABLE}.capital_vencido ;;
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

  dimension: cotizacion_concentrador {
    type: number
    sql: ${TABLE}.cotizacion_concentrador ;;
  }

  dimension: cotizacion_pase_bcra {
    type: number
    sql: ${TABLE}.cotizacion_pase_bcra ;;
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

  dimension: dias_atraso {
    type: number
    sql: ${TABLE}.dias_atraso ;;
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

  dimension_group: fecha_informacion {
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
    sql: ${TABLE}.fecha_informacion ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: interes_devengado {
    type: number
    sql: ${TABLE}.interes_devengado ;;
  }

  dimension: interes_documentado {
    type: number
    sql: ${TABLE}.interes_documentado ;;
  }

  dimension: interes_vencido {
    type: number
    sql: ${TABLE}.interes_vencido ;;
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

  dimension: sucursal_captacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_captacion_key ;;
  }

  dimension: tasa_nominal_anual {
    type: number
    sql: ${TABLE}.tasa_nominal_anual ;;
  }

  dimension: tna_pasiva_relacionada {
    type: number
    sql: ${TABLE}.tna_pasiva_relacionada ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
