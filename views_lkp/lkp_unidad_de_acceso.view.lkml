view: lkp_unidad_de_acceso {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_unidad_de_acceso`
    ;;
    view_label: "Datos BRANCH"

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension_group: fecha_alta {
    group_label: "Unidades de Acceso"
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
    sql: ${TABLE}.fecha_alta ;;
  }

  dimension_group: fecha_ultimo_mes_activa {
    group_label: "Unidades de Acceso"
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
    sql: ${TABLE}.fecha_ultimo_mes_activa ;;
  }

  dimension: funcion_actual {
    group_label: "Unidades de Acceso"
    type: string
    sql: ${TABLE}.funcion_actual ;;
  }

  dimension: marca_unidad_acceso {
    group_label: "Unidades de Acceso"
    type: string
    sql: ${TABLE}.marca_unidad_acceso ;;
  }

  dimension: modelo_unidad_acceso {
    group_label: "Unidades de Acceso"
    type: string
    sql: ${TABLE}.modelo_unidad_acceso ;;
  }

  dimension: nombre_unidad_acceso {
    group_label: "Unidades de Acceso"
    type: string
    sql: ${TABLE}.nombre_unidad_acceso ;;
  }

  dimension: red_atms {
    group_label: "Unidades de Acceso"
    type: string
    sql: ${TABLE}.red_atms ;;
  }

  dimension: sucursal_canal_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_canal_key ;;
  }

  dimension: tipo_unidad_acceso {
    group_label: "Unidades de Acceso"
    type: string
    sql: ${TABLE}.tipo_unidad_acceso ;;
  }

  dimension: ubicacion {
    group_label: "Unidades de Acceso"
    type: string
    sql: ${TABLE}.ubicacion ;;
  }

  dimension: unidad_acceso_key {
    hidden: yes
    type: number
    sql: ${TABLE}.unidad_acceso_key ;;
  }

  dimension: unidad_acceso_source {
    group_label: "Unidades de Acceso"
    type: string
    sql: ${TABLE}.unidad_acceso_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
