view: fct_recepcion_chequeras {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_recepcion_chequeras`
    ;;
    view_label: " Fct Recepción Chequeras"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_recepcion_chequeras s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }
  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: cantidad_cheques {
    type: number
    sql: ${TABLE}.cantidad_cheques ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: codigo_proveedor {
    type: number
    sql: ${TABLE}.codigo_proveedor ;;
  }

  dimension: cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }

  dimension: descripcion_chequera {
    type: string
    sql: ${TABLE}.descripcion_chequera ;;
  }

  dimension: descripcion_proveedor {
    type: string
    sql: ${TABLE}.descripcion_proveedor ;;
  }

  dimension_group: fecha_impresion {
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
    sql: ${TABLE}.fecha_impresion ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension_group: fecha_recepcion_sucursal {
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
    sql: ${TABLE}.fecha_recepcion_sucursal ;;
  }

  dimension: numero_cheque {
    type: number
    sql: ${TABLE}.numero_cheque ;;
  }

  dimension: numero_chequera {
    type: number
    sql: ${TABLE}.numero_chequera ;;
  }

  dimension: sucursal_emision_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_emision_key ;;
  }

  dimension: sucursal_entrega_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_entrega_key ;;
  }

  dimension: tipo_chequera {
    type: string
    sql: ${TABLE}.tipo_chequera ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
