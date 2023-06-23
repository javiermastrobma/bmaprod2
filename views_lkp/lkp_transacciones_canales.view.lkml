view: lkp_transacciones_canales {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_transacciones_canales`
    ;;
    view_label: "Datos BRANCH"

  dimension: descripcion_transaccion_canal {
    group_label: "Transacciones Canales"
    type: string
    sql: ${TABLE}.descripcion_transaccion_canal ;;
  }

  dimension_group: fecha_transaccion_canales {
    group_label: "Transacciones Canales"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_transaccion_canales ;;
  }

  dimension: grupo_transaccion_canal {
    group_label: "Transacciones Canales"
    type: string
    sql: ${TABLE}.grupo_transaccion_canal ;;
  }

  dimension: subgrupo_transaccion_canal {
    group_label: "Transacciones Canales"
    type: string
    sql: ${TABLE}.subgrupo_transaccion_canal ;;
  }

  dimension: tipo_transaccion_canal {
    group_label: "Transacciones Canales"
    type: string
    sql: ${TABLE}.tipo_transaccion_canal ;;
  }

  dimension: transaccion_canal {
    group_label: "Transacciones Canales"
    type: string
    sql: ${TABLE}.transaccion_canal ;;
  }

  dimension: transaccion_canal_key {
    hidden: yes
    type: number
    sql: ${TABLE}.transaccion_canal_key ;;
  }

  dimension: transaccion_canal_source {
    group_label: "Transacciones Canales"
    type: string
    sql: ${TABLE}.transaccion_canal_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
