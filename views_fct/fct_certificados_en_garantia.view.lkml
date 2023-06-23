view: fct_certificados_en_garantia {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_certificados_en_garantia`
    ;;
    view_label: " Fct Certificados en Garantía"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_certificados_en_garantia s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: capital {
    type: number
    sql: ${TABLE}.capital ;;
  }

  dimension: certificado {
    type: string
    sql: ${TABLE}.certificado ;;
  }

  dimension: cliente_pf_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_pf_key ;;
  }

  dimension: cliente_prestamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_prestamo_key ;;
  }

  dimension: cotizacion_pf {
    type: number
    sql: ${TABLE}.cotizacion_pf ;;
  }

  dimension: cotizacion_prestamo {
    type: number
    sql: ${TABLE}.cotizacion_prestamo ;;
  }

  dimension: cuenta_pf_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_pf_key ;;
  }

  dimension: cuenta_prestamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_prestamo_key ;;
  }

  dimension: especie_pf_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_pf_key ;;
  }

  dimension: especie_prestamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_prestamo_key ;;
  }

  dimension: estado_certificado {
    type: string
    sql: ${TABLE}.estado_certificado ;;
  }

  dimension: estado_garantia_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_garantia_key ;;
  }

  dimension: fecha_alta_pf_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_alta_pf_key ;;
  }

  dimension: fecha_alta_prestamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_alta_prestamo_key ;;
  }

  dimension: fecha_fin_prestamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_fin_prestamo_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: fecha_vencimiento_pf_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_vencimiento_pf_key ;;
  }

  dimension: garantia {
    type: string
    sql: ${TABLE}.garantia ;;
  }

  dimension: garantia_recibida_key {
    hidden: yes
    type: number
    sql: ${TABLE}.garantia_recibida_key ;;
  }

  dimension: monto_garantia {
    type: number
    sql: ${TABLE}.monto_garantia ;;
  }

  dimension: monto_original {
    type: number
    sql: ${TABLE}.monto_original ;;
  }

  dimension: monto_original_prestamo {
    type: number
    sql: ${TABLE}.monto_original_prestamo ;;
  }

  dimension: monto_pf {
    type: number
    sql: ${TABLE}.monto_pf ;;
  }

  dimension: monto_pf_pesos {
    type: number
    sql: ${TABLE}.monto_pf_pesos ;;
  }

  dimension: producto_prestamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_prestamo_key ;;
  }

  dimension: saldo_capital_prestamo {
    type: number
    sql: ${TABLE}.saldo_capital_prestamo ;;
  }

  dimension: sucursal_cuenta_pf_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_pf_key ;;
  }

  dimension: tasa_pagada {
    type: number
    sql: ${TABLE}.tasa_pagada ;;
  }

  dimension: tipo_garantia {
    type: string
    sql: ${TABLE}.tipo_garantia ;;
  }

  dimension: tna_prestamos {
    type: number
    sql: ${TABLE}.tna_prestamos ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
