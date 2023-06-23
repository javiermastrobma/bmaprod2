view: fct_situaciones_cuentas_corrientes {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_situaciones_cuentas_corrientes`
    ;;
    view_label: " Fct Situaciones Cuentas Corrientes"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_situaciones_cuentas_corrientes s
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

dimension: cantidad_cheques_a_presentar {
  type: number
  sql: ${TABLE}.cantidad_cheques_a_presentar ;;
}

dimension: cantidad_cheques_presentados {
  type: number
  sql: ${TABLE}.cantidad_cheques_presentados ;;
}

dimension: cantidad_cheques_rechazados_fondos {
  type: number
  sql: ${TABLE}.cantidad_cheques_rechazados_fondos ;;
}

dimension: cantidad_cheques_rechazados_forma {
  type: number
  sql: ${TABLE}.cantidad_cheques_rechazados_forma ;;
}

dimension: cantidad_cuentas {
  type: number
  sql: ${TABLE}.cantidad_cuentas ;;
}

dimension: cantidad_debitos {
  type: number
  sql: ${TABLE}.cantidad_debitos ;;
}

dimension: cantidad_movimientos {
  type: number
  sql: ${TABLE}.cantidad_movimientos ;;
}

dimension: cantidad_paquetes {
  type: number
  sql: ${TABLE}.cantidad_paquetes ;;
}

dimension: cantidad_tarjetas_debito_asociadas {
  type: number
  sql: ${TABLE}.cantidad_tarjetas_debito_asociadas ;;
}

dimension: categoria_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.categoria_cuenta_key ;;
}

dimension: comisiones {
  type: number
  sql: ${TABLE}.comisiones ;;
}

dimension: compania_seguro_vida_key {
  hidden: yes
  type: number
  sql: ${TABLE}.compania_seguro_vida_key ;;
}

dimension: cotizacion {
  type: number
  sql: ${TABLE}.cotizacion ;;
}

dimension: cuenta_con_bonificacion {
  type: string
  sql: ${TABLE}.cuenta_con_bonificacion ;;
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

dimension: estado_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.estado_cuenta_key ;;
}

dimension: fecha_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_key ;;
}

dimension: limite_acuerdo {
  type: number
  sql: ${TABLE}.limite_acuerdo ;;
}

dimension: oficial_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.oficial_cuenta_key ;;
}

dimension: producto_2_key {
  hidden: yes
  type: number
  sql: ${TABLE}.producto_2_key ;;
}

dimension: producto_key {
  hidden: yes
  type: number
  sql: ${TABLE}.producto_key ;;
}

dimension: saldo_dia {
  type: number
  sql: ${TABLE}.saldo_dia ;;
}

dimension: saldo_promedio {
  type: number
  sql: ${TABLE}.saldo_promedio ;;
}

dimension: saldo_promedio_acreedor {
  type: number
  sql: ${TABLE}.saldo_promedio_acreedor ;;
}

dimension: saldo_promedio_deudor {
  type: number
  sql: ${TABLE}.saldo_promedio_deudor ;;
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
