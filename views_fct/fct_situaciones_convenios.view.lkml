view: fct_situaciones_convenios {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_situaciones_convenios`
    ;;
  view_label: " Fct Situaciones Convenios"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_situaciones_convenios s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

dimension: banco_key {
  hidden: yes
  type: number
  sql: ${TABLE}.banco_key ;;
}

dimension: cantidad_cuenta_relacionadas {
  type: number
  sql: ${TABLE}.cantidad_cuenta_relacionadas ;;
}

dimension: cantidad_cuentas_activas_relacionadas {
  type: number
  sql: ${TABLE}.cantidad_cuentas_activas_relacionadas ;;
}

dimension: cantidad_movimientos_otros_bancos {
  type: number
  sql: ${TABLE}.cantidad_movimientos_otros_bancos ;;
}

dimension: cantidad_operaciones {
  type: number
  sql: ${TABLE}.cantidad_operaciones ;;
}

dimension: cliente_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cliente_key ;;
}

dimension: convenio_key {
  hidden: yes
  type: number
  sql: ${TABLE}.convenio_key ;;
}

dimension: cuenta_asoc_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cuenta_asoc_key ;;
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
  hidden: yes
  type: string
  sql: ${TABLE}.estado ;;
}

dimension: fecha_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_key ;;
}

dimension: importe_movimientos_otros_bancos {
  type: number
  sql: ${TABLE}.importe_movimientos_otros_bancos ;;
}

dimension: importe_total_operaciones {
  type: number
  sql: ${TABLE}.importe_total_operaciones ;;
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

dimension: sucursal_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_cuenta_key ;;
}

dimension: total_comisiones_liquidadas {
  hidden: yes
  type: number
  sql: ${TABLE}.total_comisiones_liquidadas ;;
}

dimension: total_comisiones_no_liquidadas {
  hidden: yes
  type: number
  sql: ${TABLE}.total_comisiones_no_liquidadas ;;
}

measure: count {
  type: count
  drill_fields: []
}
}
