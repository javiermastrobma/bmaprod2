view: fct_trazabilidad_tc {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_trazabilidad_tc`
    ;;
  view_label: " Fct Trazabilidad Tc"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_trazabilidad_tc s
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

dimension: cliente_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cliente_key ;;
}

dimension: cuenta_tc_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cuenta_tc_key ;;
}

dimension: duracion_movimiento {
  type: number
  sql: ${TABLE}.duracion_movimiento ;;
}

dimension: fecha_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_key ;;
}

dimension_group: fecha_movimiento {
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
  sql: ${TABLE}.fecha_movimiento ;;
}

dimension: marca_key {
  hidden: yes
  type: number
  sql: ${TABLE}.marca_key ;;
}

dimension: marca_ultimo_movimiento {
  type: string
  sql: ${TABLE}.marca_ultimo_movimiento ;;
}

dimension: movimiento_trazabilidad_key {
  hidden: yes
  type: number
  sql: ${TABLE}.movimiento_trazabilidad_key ;;
}

dimension: numero_tc {
  type: string
  sql: ${TABLE}.numero_tc ;;
}

dimension: permisionario_key {
  hidden: yes
  type: number
  sql: ${TABLE}.permisionario_key ;;
}

dimension: producto_key {
  hidden: yes
  type: number
  sql: ${TABLE}.producto_key ;;
}

dimension: residencia_key {
  hidden: yes
  type: number
  sql: ${TABLE}.residencia_key ;;
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

dimension: sucursal_movimiento_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_movimiento_key ;;
}

dimension: tarjeta_credito_key {
  hidden: yes
  type: number
  sql: ${TABLE}.tarjeta_credito_key ;;
}

dimension: tipo_distribucion {
  type: string
  sql: ${TABLE}.tipo_distribucion ;;
}

dimension: trazabilidad_id {
  type: number
  sql: ${TABLE}.trazabilidad_id ;;
}

dimension: version_tc {
  type: number
  sql: ${TABLE}.version_tc ;;
}

dimension: zona_distribucion {
  type: string
  sql: ${TABLE}.zona_distribucion ;;
}

measure: count {
  type: count
  drill_fields: []
}
}
