view: fct_seguimiento_cheques {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_seguimiento_cheques`
    ;;
  view_label: " Fct Seguimiento Cheques"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_deposito_key} = (SELECT MAX(f.fecha_deposito_key) FROM fct_seguimiento_cheques s
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

dimension: cantidad_cheques {
  type: number
  sql: ${TABLE}.cantidad_cheques ;;
}

dimension: causa_devolucion_key {
  hidden: yes
  type: number
  sql: ${TABLE}.causa_devolucion_key ;;
}

dimension: cheque_source {
  type: string
  sql: ${TABLE}.cheque_source ;;
}

dimension: cliente_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cliente_key ;;
}

dimension: comision_cobrada {
  type: number
  sql: ${TABLE}.comision_cobrada ;;
}

dimension: cuenta_aviso {
  type: string
  sql: ${TABLE}.cuenta_aviso ;;
}

dimension: cuenta_girada {
  type: string
  sql: ${TABLE}.cuenta_girada ;;
}

dimension: cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cuenta_key ;;
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

dimension: estado_cheque_key {
  hidden: yes
  type: number
  sql: ${TABLE}.estado_cheque_key ;;
}

dimension: fecha_cancelacion_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_cancelacion_key ;;
}

dimension: fecha_deposito_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_deposito_key ;;
}

dimension: importe {
  type: number
  sql: ${TABLE}.importe ;;
}

dimension: numero_boleta {
  type: string
  sql: ${TABLE}.numero_boleta ;;
}

dimension: numero_cheque {
  type: string
  sql: ${TABLE}.numero_cheque ;;
}

dimension: numero_remesa {
  type: string
  sql: ${TABLE}.numero_remesa ;;
}

dimension: origen_captura_key {
  hidden: yes
  type: number
  sql: ${TABLE}.origen_captura_key ;;
}

dimension: producto_key {
  hidden: yes
  type: number
  sql: ${TABLE}.producto_key ;;
}

dimension: residencia_key {
  hidden: yes
  type: number
  sql: ${TABLE}.residencia_key ;;
}

dimension: sector_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sector_key ;;
}

dimension: senial_redeposito {
  type: number
  sql: ${TABLE}.senial_redeposito ;;
}

dimension: sucursal_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_cuenta_key ;;
}

dimension: tipo_canje_key {
  hidden: yes
  type: number
  sql: ${TABLE}.tipo_canje_key ;;
}

dimension: tipo_cheque_key {
  hidden: yes
  type: number
  sql: ${TABLE}.tipo_cheque_key ;;
}

dimension: tipo_deposito_key {
  hidden: yes
  type: number
  sql: ${TABLE}.tipo_deposito_key ;;
}

measure: count {
  type: count
  drill_fields: []
}
}
