view: fct_inventario_garantias_recibidas {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_inventario_garantias_recibidas`
    ;;
    view_label: " Fct Inventario Garantías Recibidas"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql: ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_inventario_garantias_recibidas s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: cotizacion {
    type: number
    sql: ${TABLE}.cotizacion ;;
  }

  dimension: especie_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_key ;;
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

  dimension: garantia {
    type: string
    sql: ${TABLE}.garantia ;;
  }

  dimension: garantia_recibida_key {
    hidden: yes
    type: number
    sql: ${TABLE}.garantia_recibida_key ;;
  }

  dimension: monto_afectado {
    type: number
    sql: ${TABLE}.monto_afectado ;;
  }

  dimension: monto_aforado {
    type: number
    sql: ${TABLE}.monto_aforado ;;
  }

  dimension: monto_garantizado_mn {
    type: number
    sql: ${TABLE}.monto_garantizado_mn ;;
  }

  dimension: monto_instrumento {
    type: number
    sql: ${TABLE}.monto_instrumento ;;
  }

  dimension: monto_instrumento_mn {
    type: number
    sql: ${TABLE}.monto_instrumento_mn ;;
  }

  dimension: monto_ultima_tasacion {
    type: number
    sql: ${TABLE}.monto_ultima_tasacion ;;
  }

  dimension: porcentaje_afectado {
    type: number
    sql: ${TABLE}.porcentaje_afectado ;;
  }

  dimension: propietario {
    type: number
    sql: ${TABLE}.propietario ;;
  }

  dimension: sucursal_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
