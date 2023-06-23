view: fct_adhesiones_da_tc {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_adhesiones_da_tc`
    ;;
  view_label: " Fct Adhesiones DA TC"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_adhesiones_da_tc s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

dimension: banco_key {
  hidden: yes
  type: number
  sql: ${TABLE}.banco_key ;;
}

dimension: canal_adhesion_da_key {
  hidden: yes
  type: number
  sql: ${TABLE}.canal_adhesion_da_key ;;
}

dimension: cantidad {
  type: number
  sql: ${TABLE}.cantidad ;;
}

dimension: cliente_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cliente_key ;;
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

dimension: dotacion_rrhh_key {
  hidden: yes
  type: number
  sql: ${TABLE}.dotacion_rrhh_key ;;
}

dimension: estado_adhesion_da_key {
  hidden: yes
  type: number
  sql: ${TABLE}.estado_adhesion_da_key ;;
}

dimension: fecha_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_key ;;
}

dimension_group: fecha_solicitud {
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
  sql: ${TABLE}.fecha_solicitud ;;
}

dimension: fecha_solicitud_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_solicitud_key ;;
}

dimension: flag_alta {
  type: number
  sql: ${TABLE}.flag_alta ;;
}

dimension: flag_baja {
  type: number
  sql: ${TABLE}.flag_baja ;;
}

dimension: flag_stop_debit {
  type: number
  sql: ${TABLE}.flag_stop_debit ;;
}

dimension: login_usuario {
  type: string
  sql: ${TABLE}.login_usuario ;;
}

dimension: marca_key {
  hidden: yes
  type: number
  sql: ${TABLE}.marca_key ;;
}

dimension: numero_referencia {
  type: string
  sql: ${TABLE}.numero_referencia ;;
}

dimension: numero_solicitud {
  type: number
  sql: ${TABLE}.numero_solicitud ;;
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

dimension: tarjeta_credito_key {
  hidden: yes
  type: number
  sql: ${TABLE}.tarjeta_credito_key ;;
}

dimension: tipo_movimiento {
  type: string
  sql: ${TABLE}.tipo_movimiento ;;
}

dimension: tipo_titular_key {
  hidden: yes
  type: number
  sql: ${TABLE}.tipo_titular_key ;;
}

measure: count {
  type: count
  drill_fields: []
}
}
