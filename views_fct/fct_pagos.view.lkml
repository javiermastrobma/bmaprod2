view: fct_pagos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_pagos`
    ;;
    view_label: " Fct Pagos"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_valor_key} = (SELECT MAX(f.fecha_key) FROM fct_pagos s
      LEFT JOIN lkp_fechas f ON s.fecha_valor_key = f.fecha_key) ;;
  }

  dimension: actividad_proveedor {
    type: string
    sql: ${TABLE}.actividad_proveedor ;;
  }

  dimension: actividad_proveedor_key {
    hidden: yes
    type: number
    sql: ${TABLE}.actividad_proveedor_key ;;
  }

  dimension: area_destino {
    type: string
    sql: ${TABLE}.area_destino ;;
  }

  dimension: area_destino_key {
    type: number
    sql: ${TABLE}.area_destino_key ;;
  }

  dimension: area_origen {
    type: string
    sql: ${TABLE}.area_origen ;;
  }

  dimension: area_origen_key {
    hidden: yes
    type: number
    sql: ${TABLE}.area_origen_key ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: codigo_tabla {
    type: string
    sql: ${TABLE}.codigo_tabla ;;
  }

  dimension: concepto {
    type: string
    sql: ${TABLE}.concepto ;;
  }

  dimension: contrato_glm_key {
    hidden: yes
    type: number
    sql: ${TABLE}.contrato_glm_key ;;
  }

  dimension: cuenta_contable {
    type: string
    sql: ${TABLE}.cuenta_contable ;;
  }

  dimension: cuit {
    type: string
    sql: ${TABLE}.cuit ;;
  }

  dimension: departamento_destino {
    type: string
    sql: ${TABLE}.departamento_destino ;;
  }

  dimension: departamento_origen {
    type: string
    sql: ${TABLE}.departamento_origen ;;
  }

  dimension_group: fecha_factura {
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
    sql: ${TABLE}.fecha_factura ;;
  }

  dimension_group: fecha_valor {
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
    sql: ${TABLE}.fecha_valor ;;
  }

  dimension: fecha_valor_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_valor_key ;;
  }

  dimension: importe {
    type: number
    sql: ${TABLE}.importe ;;
  }

  dimension: nombre_tabla {
    type: string
    sql: ${TABLE}.nombre_tabla ;;
  }

  dimension: nro_factura {
    type: string
    sql: ${TABLE}.nro_factura ;;
  }

  dimension: nro_liquidacion {
    type: number
    sql: ${TABLE}.nro_liquidacion ;;
  }

  dimension: numero_pedido {
    type: string
    sql: ${TABLE}.numero_pedido ;;
  }

  dimension: oficina_destino {
    type: string
    sql: ${TABLE}.oficina_destino ;;
  }

  dimension: oficina_origen {
    type: string
    sql: ${TABLE}.oficina_origen ;;
  }

  dimension: plan_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.plan_cuenta_key ;;
  }

  dimension: proveedor {
    type: string
    sql: ${TABLE}.proveedor ;;
  }

  dimension: secuencial_factura {
    type: string
    sql: ${TABLE}.secuencial_factura ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
