view: fct_situaciones_plazo_fijo {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_situaciones_plazo_fijo`
    ;;
    view_label: " Fct Situaciones Plazo Fijo"

dimension: banca_key {
  hidden: yes
  type: number
  sql: ${TABLE}.banca_key ;;
}

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_situaciones_plazo_fijo s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

dimension: banco_key {
  hidden: yes
  type: number
  sql: ${TABLE}.banco_key ;;
}

dimension: cantidad_cuentas {
  type: number
  sql: ${TABLE}.cantidad_cuentas ;;
}

dimension: cantidad_paquetes {
  type: number
  sql: ${TABLE}.cantidad_paquetes ;;
}

dimension: cotizacion {
  type: number
  sql: ${TABLE}.cotizacion ;;
}

dimension: cuenta_anterior_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cuenta_anterior_key ;;
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

dimension: fecha_vencimiento_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_vencimiento_key ;;
}

dimension: intereses_a_devengar {
  type: number
  sql: ${TABLE}.intereses_a_devengar ;;
}

dimension: intereses_devengados {
  type: number
  sql: ${TABLE}.intereses_devengados ;;
}

dimension: oficial_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.oficial_cuenta_key ;;
}

dimension: plazo {
  type: number
  sql: ${TABLE}.plazo ;;
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

dimension: sucursal_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_cuenta_key ;;
}

dimension: tasa {
  type: number
  sql: ${TABLE}.tasa ;;
}

dimension: variacion {
  type: number
  sql: ${TABLE}.variacion ;;
}

measure: count {
  type: count
  drill_fields: []
}
}
