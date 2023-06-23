view: fct_movimientos_titulos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_movimientos_titulos`
    ;;
    view_label: " Fct Movimientos Títulos"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_movimientos_titulos s
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

  dimension: fecha_liquidacion_movimiento_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_liquidacion_movimiento_key ;;
  }

  dimension: importe_movimiento {
    type: number
    sql: ${TABLE}.importe_movimiento ;;
  }

  dimension: numero_movimiento {
    type: string
    sql: ${TABLE}.numero_movimiento ;;
  }

  dimension: plan_cuentas_key {
    hidden: yes
    type: number
    sql: ${TABLE}.plan_cuentas_key ;;
  }

  dimension: sucursal_captacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_captacion_key ;;
  }

  dimension: sucursal_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: tipo_movimiento_titulo {
    type: string
    sql: ${TABLE}.tipo_movimiento_titulo ;;
  }

  dimension: tipo_movimiento_titulo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_movimiento_titulo_key ;;
  }

  dimension: tipo_operacion_titulo {
    type: string
    sql: ${TABLE}.tipo_operacion_titulo ;;
  }

  dimension: tipo_operacion_titulo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_operacion_titulo_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
