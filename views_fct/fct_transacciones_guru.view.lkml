view: fct_transacciones_guru {
  fields_hidden_by_default: yes
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_transacciones_guru`
    ;;
    label: " Fct Transacciones Guru"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_transaccion_key} = (SELECT MAX(f.fecha_key) FROM fct_transacciones_guru s
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

  dimension: duracion_paso {
    hidden: no
    type: number
    sql: ${TABLE}.duracion_paso ;;
  }

  dimension: estado_operacion_canal_digital_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_operacion_canal_digital_key ;;
  }

  dimension_group: fecha_paso {
    hidden: no
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
    sql: ${TABLE}.fecha_paso ;;
  }

  dimension: fecha_paso_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_paso_key ;;
  }

  dimension: fecha_transaccion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_transaccion_key ;;
  }

  dimension: fecha_vencimiento_beneficio_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_vencimiento_beneficio_key ;;
  }

  dimension: iniciativa_canal_digital_key {
    hidden: yes
    type: number
    sql: ${TABLE}.iniciativa_canal_digital_key ;;
  }

  dimension: numero_beneficio {
    hidden: no
    type: string
    sql: ${TABLE}.numero_beneficio ;;
  }

  dimension: numero_operacion_source {
    hidden: no
    type: string
    sql: ${TABLE}.numero_operacion_source ;;
  }

  dimension: numero_tarjeta_debito {
    hidden: no
    type: string
    sql: ${TABLE}.numero_tarjeta_debito ;;
  }

  dimension: paso_operacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.paso_operacion_key ;;
  }

  dimension: sucursal_transaccion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_transaccion_key ;;
  }

  dimension: tipo_operacion_canal_digital_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_operacion_canal_digital_key ;;
  }

  dimension: vendedor_key {
    hidden: yes
    type: number
    sql: ${TABLE}.vendedor_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
