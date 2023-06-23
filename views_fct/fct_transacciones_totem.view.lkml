view: fct_transacciones_totem {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_transacciones_totem`
    ;;
    view_label: " Fct Transacciones Totem"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_transaccion_key} = (SELECT MAX(f.fecha_key) FROM fct_transacciones_totem s
      LEFT JOIN lkp_fechas f ON s.fecha_transaccion_key = f.fecha_key) ;;
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

  dimension: cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }

  dimension: dispositivo_iniciativa_key {
    hidden: yes
    type: number
    sql: ${TABLE}.dispositivo_iniciativa_key ;;
  }

  dimension: estado_operacion_canal_digital_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_operacion_canal_digital_key ;;
  }

  dimension_group: fecha_transaccion {
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
    sql: ${TABLE}.fecha_transaccion ;;
  }

  dimension: fecha_transaccion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_transaccion_key ;;
  }

  dimension: flag_apoderado {
    type: number
    sql: ${TABLE}.flag_apoderado ;;
  }

  dimension: flag_titular {
    type: number
    sql: ${TABLE}.flag_titular ;;
  }

  dimension: hora_transaccion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.hora_transaccion_key ;;
  }

  dimension: iniciativa_canal_digital_key {
    hidden: yes
    type: number
    sql: ${TABLE}.iniciativa_canal_digital_key ;;
  }

  dimension: numero_tarjeta_argenta {
    type: string
    sql: ${TABLE}.numero_tarjeta_argenta ;;
  }

  dimension: numero_transaccion_source {
    type: number
    sql: ${TABLE}.numero_transaccion_source ;;
  }

  dimension: sucursal_transaccion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_transaccion_key ;;
  }

  dimension: tipo_identificacion_key {
    hidden: yes
    type: number
    value_format_name: id
    sql: ${TABLE}.tipo_identificacion_key ;;
  }

  dimension: tipo_operacion_canal_digital_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_operacion_canal_digital_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
