view: fct_transacciones_branch {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_transacciones_branch`
    ;;
  view_label: " Fct Transacciones Branch"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_transacciones_branch s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

  dimension: afecta_efectivo {
    type: string
    sql: ${TABLE}.afecta_efectivo ;;
  }

  dimension: afecta_signo {
    type: string
    sql: ${TABLE}.afecta_signo ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: cantidad_transacciones {
    type: number
    sql: ${TABLE}.cantidad_transacciones ;;
  }

  dimension: causal_branch_key {
    hidden: yes
    type: number
    sql: ${TABLE}.causal_branch_key ;;
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

  dimension: flag_cuenta_contable_efectivo_caja {
    type: string
    sql: ${TABLE}.flag_cuenta_contable_efectivo_caja ;;
  }

  dimension: monto_cheque {
    type: number
    sql: ${TABLE}.monto_cheque ;;
  }

  dimension: monto_cheque_locales {
    type: number
    sql: ${TABLE}.monto_cheque_locales ;;
  }

  dimension: monto_cheque_otras_plazas {
    type: number
    sql: ${TABLE}.monto_cheque_otras_plazas ;;
  }

  dimension: monto_efectivo {
    type: number
    sql: ${TABLE}.monto_efectivo ;;
  }

  dimension: monto_total {
    type: number
    sql: ${TABLE}.monto_total ;;
  }

  dimension: operador_branch_key {
    hidden: yes
    type: number
    sql: ${TABLE}.operador_branch_key ;;
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
