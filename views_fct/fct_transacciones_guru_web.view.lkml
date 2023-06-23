view: fct_transacciones_guru_web {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_transacciones_guru_web`
    ;;
    view_label: " Fct Transacciones Guru Web"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_transaccion_key} = (SELECT MAX(f.fecha_key) FROM fct_transacciones_guru_web s
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

  dimension: cantidad {
    type: number
    sql: ${TABLE}.cantidad ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: cuenta_td_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_td_key ;;
  }

  dimension: estado_operacion_canal_digital_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_operacion_canal_digital_key ;;
  }

  dimension_group: fecha_modificacion_transaccion {
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
    sql: ${TABLE}.fecha_modificacion_transaccion ;;
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

  dimension: numero_operacion_source {
    type: string
    sql: ${TABLE}.numero_operacion_source ;;
  }

  dimension: numero_tarjeta_debito {
    type: string
    sql: ${TABLE}.numero_tarjeta_debito ;;
  }

  dimension: sucursal_radicacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_radicacion_key ;;
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
