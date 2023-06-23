view: fct_situaciones_resumenes_cuenta {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_situaciones_resumenes_cuenta`
    ;;
    view_label: " Fct Situaciones Resumenes Cuenta"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_situaciones_resumenes_cuenta s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
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

dimension: codigo_frecuencia_resumen {
  type: string
  sql: ${TABLE}.codigo_frecuencia_resumen ;;
}

dimension: codigo_tipo_direccion {
  type: string
  sql: ${TABLE}.codigo_tipo_direccion ;;
}

dimension: cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cuenta_key ;;
}

dimension: cuenta_tc_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cuenta_tc_key ;;
}

dimension: domicilio_envio_resumen {
  type: string
  sql: ${TABLE}.domicilio_envio_resumen ;;
}

dimension: email {
  type: string
  sql: ${TABLE}.email ;;
}

dimension_group: fecha_adhesion_eresumen {
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
  sql: ${TABLE}.fecha_adhesion_eresumen ;;
}

dimension_group: fecha_baja_eresumen {
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
  sql: ${TABLE}.fecha_baja_eresumen ;;
}

dimension_group: fecha_corte_resumen {
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
  sql: ${TABLE}.fecha_corte_resumen ;;
}

dimension: fecha_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_key ;;
}

dimension: frecuencia_resumen {
  type: string
  sql: ${TABLE}.frecuencia_resumen ;;
}

dimension: numero_paquete {
  type: number
  sql: ${TABLE}.numero_paquete ;;
}

dimension: producto_key {
  hidden: yes
  type: number
  sql: ${TABLE}.producto_key ;;
}

dimension: secuencial_domicilio {
  type: number
  sql: ${TABLE}.secuencial_domicilio ;;
}

dimension: sucursal_resumen_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_resumen_key ;;
}

dimension: sucursal_retenido_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_retenido_key ;;
}

dimension: tiene_eresumen {
  type: string
  sql: ${TABLE}.tiene_eresumen ;;
}

dimension: tiene_paquete {
  type: string
  sql: ${TABLE}.tiene_paquete ;;
}

dimension: tipo_direccion {
  type: string
  sql: ${TABLE}.tipo_direccion ;;
}

measure: count {
  type: count
  drill_fields: []
}
}
