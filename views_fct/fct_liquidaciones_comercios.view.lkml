view: fct_liquidaciones_comercios {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_liquidaciones_comercios`
    ;;
    view_label: " Fct Liquidaciones Comercios"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_liquidaciones_comercios s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

dimension: arancel_banco_pagador {
  type: number
  sql: ${TABLE}.arancel_banco_pagador ;;
}

dimension: banco_key {
  hidden: yes
  type: number
  sql: ${TABLE}.banco_key ;;
}

dimension: cargo_financiero {
  type: number
  sql: ${TABLE}.cargo_financiero ;;
}

dimension: cargo_pago_expreso {
  type: number
  sql: ${TABLE}.cargo_pago_expreso ;;
}

dimension: comercio_key {
  hidden: yes
  type: number
  sql: ${TABLE}.comercio_key ;;
}

dimension: fecha_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_key ;;
}

dimension: fecha_presentacion_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_presentacion_key ;;
}

dimension: importe_bruto {
  type: number
  sql: ${TABLE}.importe_bruto ;;
}

dimension: importe_expreso_liquidado {
  type: number
  sql: ${TABLE}.importe_expreso_liquidado ;;
}

dimension: importe_neto {
  type: number
  sql: ${TABLE}.importe_neto ;;
}

dimension: marca_key {
  hidden: yes
  type: number
  sql: ${TABLE}.marca_key ;;
}

dimension: nir {
  type: number
  sql: ${TABLE}.nir ;;
}

dimension: numero_liquidacion {
  type: string
  sql: ${TABLE}.numero_liquidacion ;;
}

dimension: promocion_tc_key {
  hidden: yes
  type: number
  sql: ${TABLE}.promocion_tc_key ;;
}

dimension: rubro_key {
  hidden: yes
  type: number
  sql: ${TABLE}.rubro_key ;;
}

dimension: sucursal_comercio_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_comercio_key ;;
}

dimension: tasa_pago_expreso {
  type: number
  sql: ${TABLE}.tasa_pago_expreso ;;
}

dimension: tipo_liquidacion_tc_key {
  hidden: yes
  type: number
  sql: ${TABLE}.tipo_liquidacion_tc_key ;;
}

measure: count {
  type: count
  drill_fields: []
}
}
