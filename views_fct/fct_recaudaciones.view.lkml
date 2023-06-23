view: fct_recaudaciones {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_recaudaciones`
    ;;
  view_label: " Fct Recaudaciones"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_recaudaciones s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

dimension: banco_key {
  hidden: yes
  type: number
  sql: ${TABLE}.banco_key ;;
}

dimension: canal_cobro_recaudacion_key {
  hidden: yes
  type: number
  sql: ${TABLE}.canal_cobro_recaudacion_key ;;
}

dimension: cheque_electronico {
  type: string
  sql: ${TABLE}.cheque_electronico ;;
}

dimension: cheque_integrado {
  type: string
  sql: ${TABLE}.cheque_integrado ;;
}

dimension: cliente_convenio_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cliente_convenio_key ;;
}

dimension: cliente_deudor_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cliente_deudor_key ;;
}

dimension: convenio_key {
  hidden: yes
  type: number
  sql: ${TABLE}.convenio_key ;;
}

dimension: cuenta_emisora {
  type: string
  sql: ${TABLE}.cuenta_emisora ;;
}

dimension: cuit_deudor {
  type: number
  sql: ${TABLE}.cuit_deudor ;;
}

dimension: entidad_pagadora_key {
  hidden: yes
  type: number
  sql: ${TABLE}.entidad_pagadora_key ;;
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

dimension: fecha_pago_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_pago_key ;;
}

dimension: fecha_rendicion_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_rendicion_key ;;
}

dimension: forma_pago_recaudacion_key {
  hidden: yes
  type: number
  sql: ${TABLE}.forma_pago_recaudacion_key ;;
}

dimension: grupo_convenio_key {
  hidden: yes
  type: number
  sql: ${TABLE}.grupo_convenio_key ;;
}

dimension: identificador_deuda {
  type: number
  sql: ${TABLE}.identificador_deuda ;;
}

dimension: importe_recaudado {
  type: number
  sql: ${TABLE}.importe_recaudado ;;
}

dimension: modalidad_recaudacion_key {
  hidden: yes
  type: number
  sql: ${TABLE}.modalidad_recaudacion_key ;;
}

dimension: numero_cheque {
  type: string
  sql: ${TABLE}.numero_cheque ;;
}

dimension: numero_cheque_remesas {
  type: number
  sql: ${TABLE}.numero_cheque_remesas ;;
}

dimension: numero_ingreso_cheque {
  type: number
  sql: ${TABLE}.numero_ingreso_cheque ;;
}

dimension: numero_secuencial {
  type: number
  sql: ${TABLE}.numero_secuencial ;;
}

dimension: prospecto_deudor_key {
  hidden: yes
  type: number
  sql: ${TABLE}.prospecto_deudor_key ;;
}

dimension: sucursal_pago_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_pago_key ;;
}

measure: count {
  type: count
  drill_fields: []
}
}
