view: lkp_logins {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_logins`
    ;;
  view_label: "Otras Dimensiones"

  dimension: canal_key {
    hidden: yes
    type: number
    sql: ${TABLE}.canal_key ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: descripcion_login {
    group_label: "Logins"
    type: string
    sql: ${TABLE}.descripcion_login ;;
  }

  dimension: ente {
    group_label: "Logins"
    type: number
    sql: ${TABLE}.ente ;;
  }

  dimension: estado_login {
    group_label: "Logins"
    type: string
    sql: ${TABLE}.estado_login ;;
  }

  dimension_group: fecha_alta_login {
    group_label: "Logins"
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
    sql: ${TABLE}.fecha_alta_login ;;
  }

  dimension_group: fecha_baja_login {
    group_label: "Logins"
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
    sql: ${TABLE}.fecha_baja_login ;;
  }

  dimension_group: fecha_ultima_reactivacion {
    group_label: "Logins"
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
    sql: ${TABLE}.fecha_ultima_reactivacion ;;
  }

  dimension_group: fecha_ultima_revocacion {
    group_label: "Logins"
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
    sql: ${TABLE}.fecha_ultima_revocacion ;;
  }

  dimension_group: fecha_ultimo_bloqueo {
    group_label: "Logins"
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
    sql: ${TABLE}.fecha_ultimo_bloqueo ;;
  }

  dimension_group: fecha_ultimo_cambio_clave {
    group_label: "Logins"
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
    sql: ${TABLE}.fecha_ultimo_cambio_clave ;;
  }

  dimension_group: fecha_ultimo_ingreso {
    group_label: "Logins"
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
    sql: ${TABLE}.fecha_ultimo_ingreso ;;
  }

  dimension: login_key {
    hidden: yes
    type: number
    sql: ${TABLE}.login_key ;;
  }

  dimension: operador {
    group_label: "Logins"
    type: string
    sql: ${TABLE}.operador ;;
  }

  dimension: sucursal_adhesion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_adhesion_key ;;
  }

  dimension: tipo_autorizacion {
    group_label: "Logins"
    type: string
    sql: ${TABLE}.tipo_autorizacion ;;
  }

  dimension: tipo_login {
    group_label: "Logins"
    type: string
    sql: ${TABLE}.tipo_login ;;
  }

  dimension: tipo_login_source {
    group_label: "Logins"
    type: string
    sql: ${TABLE}.tipo_login_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
