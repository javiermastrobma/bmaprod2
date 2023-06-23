view: fct_aplicacion_garantias_recibidas {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_aplicacion_garantias_recibidas`
    ;;
    view_label: " Fct Aplicación Garantias Recibidas"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_aplicaciones_garantias_recibidas s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }

  dimension: especie_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_key ;;
  }

  dimension: estado_garantia_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_garantia_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension_group: fecha_ultima_tasacion {
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
    sql: ${TABLE}.fecha_ultima_tasacion ;;
  }

  dimension: garantia_recibida_key {
    hidden: yes
    type: number
    sql: ${TABLE}.garantia_recibida_key ;;
  }

  dimension: modulo {
    type: string
    sql: ${TABLE}.modulo ;;
  }

  dimension: monto_garantia {
    type: number
    sql: ${TABLE}.monto_garantia ;;
  }

  dimension: monto_garantia_mn {
    type: number
    sql: ${TABLE}.monto_garantia_mn ;;
  }

  dimension: monto_ultima_tasacion {
    type: number
    sql: ${TABLE}.monto_ultima_tasacion ;;
  }

  dimension: numero_operacion {
    type: string
    sql: ${TABLE}.numero_operacion ;;
  }

  dimension: sucursal_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: tipo_preferencia {
    type: string
    sql: ${TABLE}.tipo_preferencia ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
