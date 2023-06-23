view: lkp_tarjetas_credito {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_tarjetas_credito`
    ;;

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: campania_key {
    hidden: yes
    type: number
    sql: ${TABLE}.campania_key ;;
  }

  dimension: codigo_inhabilitacion_tc_key {
    hidden: yes
    type: number
    sql: ${TABLE}.codigo_inhabilitacion_tc_key ;;
  }

  dimension: digito_verificador {
    view_label: "Datos CUENTA TARJETA CRÉDITO"
    group_label: "Tarjetas Crédito"
    type: number
    sql: ${TABLE}.digito_verificador ;;
  }

  dimension: estado_tarjeta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_tarjeta_key ;;
  }

  dimension_group: fecha_alta {
    view_label: "Datos CUENTA TARJETA CRÉDITO"
    group_label: "Tarjetas Crédito"
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
    datatype: datetime
    sql: ${TABLE}.fecha_alta ;;
  }

  dimension_group: fecha_vencimiento {
    view_label: "Datos CUENTA TARJETA CRÉDITO"
    group_label: "Tarjetas Crédito"
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
    sql: ${TABLE}.fecha_vencimiento ;;
  }

  dimension_group: fecha_vigencia {
    view_label: "Datos CUENTA TARJETA CRÉDITO"
    group_label: "Tarjetas Crédito"
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
    sql: ${TABLE}.fecha_vigencia ;;
  }

  dimension: numero_tc {
    view_label: "Datos CUENTA TARJETA CRÉDITO"
    group_label: "Tarjetas Crédito"
    type: string
    sql: ${TABLE}.numero_tc ;;
  }

  dimension: personal_key {
    hidden: yes
    type: number
    sql: ${TABLE}.personal_key ;;
  }

  dimension: tarjeta_credito_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tarjeta_credito_key ;;
  }

  dimension: tipo_socio {
    view_label: "Datos CUENTA TARJETA CRÉDITO"
    group_label: "Tarjetas Crédito"
    type: number
    sql: ${TABLE}.tipo_socio ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
