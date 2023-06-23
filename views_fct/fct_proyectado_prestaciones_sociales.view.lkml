view: fct_proyectado_prestaciones_sociales {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_proyectado_prestaciones_sociales`
    ;;
    view_label: " Fct Proyectado Prestaciones Sociales"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_proyectado_prestaciones_sociales s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }
  dimension: agencia {
    type: number
    sql: ${TABLE}.agencia ;;
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

  dimension: comision_prestacion_pagada {
    type: number
    sql: ${TABLE}.comision_prestacion_pagada ;;
  }

  dimension: cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }

  dimension: cuenta_pago_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_pago_key ;;
  }

  dimension: cuil_apoderado {
    type: string
    sql: ${TABLE}.cuil_apoderado ;;
  }

  dimension: entidad_prestadora_key {
    hidden: yes
    type: number
    sql: ${TABLE}.entidad_prestadora_key ;;
  }

  dimension_group: fecha_acreditacion {
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
    sql: ${TABLE}.fecha_acreditacion ;;
  }

  dimension_group: fecha_desde_pago {
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
    sql: ${TABLE}.fecha_desde_pago ;;
  }

  dimension_group: fecha_desde_proximo_pago {
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
    sql: ${TABLE}.fecha_desde_proximo_pago ;;
  }

  dimension_group: fecha_hasta_pago {
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
    sql: ${TABLE}.fecha_hasta_pago ;;
  }

  dimension_group: fecha_hasta_proximo_pago {
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
    sql: ${TABLE}.fecha_hasta_proximo_pago ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension_group: fecha_periodo_liquidacion {
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
    sql: ${TABLE}.fecha_periodo_liquidacion ;;
  }

  dimension_group: fecha_periodo_pago {
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
    sql: ${TABLE}.fecha_periodo_pago ;;
  }

  dimension: grupo_pago {
    type: string
    sql: ${TABLE}.grupo_pago ;;
  }

  dimension: habilitado {
    type: string
    sql: ${TABLE}.habilitado ;;
  }

  dimension: importe_prestacion_liquidado {
    type: number
    sql: ${TABLE}.importe_prestacion_liquidado ;;
  }

  dimension: modalidad_cobro {
    type: string
    sql: ${TABLE}.modalidad_cobro ;;
  }

  dimension: monto_depositado_en_cuenta {
    type: number
    sql: ${TABLE}.monto_depositado_en_cuenta ;;
  }

  dimension: monto_pagado_en_ventanilla {
    type: number
    sql: ${TABLE}.monto_pagado_en_ventanilla ;;
  }

  dimension: monto_prestacion_no_pagado {
    type: number
    sql: ${TABLE}.monto_prestacion_no_pagado ;;
  }

  dimension: monto_prestacion_pagado {
    type: number
    sql: ${TABLE}.monto_prestacion_pagado ;;
  }

  dimension: nombre_apoderado {
    type: string
    sql: ${TABLE}.nombre_apoderado ;;
  }

  dimension: nro_doc_apoderado {
    type: string
    sql: ${TABLE}.nro_doc_apoderado ;;
  }

  dimension: otros_atributos_prestacion_key {
    type: number
    sql: ${TABLE}.otros_atributos_prestacion_key ;;
  }

  dimension: pagado {
    type: string
    sql: ${TABLE}.pagado ;;
  }

  dimension: pago_periodo_actual {
    type: string
    sql: ${TABLE}.pago_periodo_actual ;;
  }

  dimension: producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_key ;;
  }

  dimension: sucursal_beneficio_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_beneficio_key ;;
  }

  dimension: sucursal_pago_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_pago_key ;;
  }

  dimension: tipo_agencia {
    type: string
    sql: ${TABLE}.tipo_agencia ;;
  }

  dimension: tipo_doc_apoderado {
    type: string
    sql: ${TABLE}.tipo_doc_apoderado ;;
  }

  dimension: tipo_pago {
    type: string
    sql: ${TABLE}.tipo_pago ;;
  }

  dimension: ur_asignada {
    type: number
    sql: ${TABLE}.ur_asignada ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
