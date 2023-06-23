view: fct_transacciones_operaciones_simples {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_transacciones_operaciones_simples`;;


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

  dimension: cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }

  dimension: estado_operacion_canal_digital_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_operacion_canal_digital_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
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

  dimension: importe {
    type: number
    sql: ${TABLE}.importe ;;
  }

  dimension: iniciativa_canal_digital_key {
    hidden: yes
    type: number
    sql: ${TABLE}.iniciativa_canal_digital_key ;;
  }

  dimension: marca_actualiza_email {
    type: string
    sql: ${TABLE}.marca_actualiza_email ;;
  }

  dimension: marca_actualiza_telefono {
    type: string
    sql: ${TABLE}.marca_actualiza_telefono ;;
  }

  dimension: numero_operacion_source {
    type: string
    sql: ${TABLE}.numero_operacion_source ;;
  }

  dimension: numero_suboperacion {
    type: number
    sql: ${TABLE}.numero_suboperacion ;;
  }

  dimension: sucursal_radicacion_key {
    type: number
    sql: ${TABLE}.sucursal_radicacion_key ;;
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

  dimension: vendedor_key {
    hidden: yes
    type: number
    sql: ${TABLE}.vendedor_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
