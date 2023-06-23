view: fct_transacciones_canales {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_transacciones_canales`
    ;;
    view_label: " Fct Transacciones Canales"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_transacciones_canales s
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

  dimension: bloqueo_login {
    type: number
    sql: ${TABLE}.bloqueo_login ;;
  }

  dimension: canal_key {
    hidden: yes
    type: number
    sql: ${TABLE}.canal_key ;;
  }

  dimension: cantidad_transacciones {
    type: number
    sql: ${TABLE}.cantidad_transacciones ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: cotizacion {
    type: number
    sql: ${TABLE}.cotizacion ;;
  }

  dimension: destino_transaccion {
    type: string
    sql: ${TABLE}.destino_transaccion ;;
  }

  dimension: especie_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_key ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
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

  dimension: hora_key {
    hidden: yes
    type: number
    sql: ${TABLE}.hora_key ;;
  }

  dimension: login_key {
    hidden: yes
    type: number
    sql: ${TABLE}.login_key ;;
  }

  dimension: monto_transacciones {
    type: number
    sql: ${TABLE}.monto_transacciones ;;
  }

  dimension: nir {
    type: number
    sql: ${TABLE}.nir ;;
  }

  dimension: numero_tarjeta {
    type: string
    sql: ${TABLE}.numero_tarjeta ;;
  }

  dimension: origen_transaccion {
    type: string
    sql: ${TABLE}.origen_transaccion ;;
  }

  dimension: otros_atributos_transacciones_key {
    hidden: yes
    type: number
    sql: ${TABLE}.otros_atributos_transacciones_key ;;
  }

  dimension: sucursal_canal_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_canal_key ;;
  }

  dimension: transaccion_canal_key {
    hidden: yes
    type: number
    sql: ${TABLE}.transaccion_canal_key ;;
  }

  dimension: unidad_acceso_key {
    hidden: yes
    type: number
    sql: ${TABLE}.unidad_acceso_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
