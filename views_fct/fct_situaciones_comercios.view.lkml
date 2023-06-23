view: fct_situaciones_comercios {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_situaciones_comercios`
    ;;
    view_label: " Fct Situaciones Comercios"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_situaciones_comercios s
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

dimension: cantidad_consumos_tc_banco {
  type: number
  sql: ${TABLE}.cantidad_consumos_tc_banco ;;
}

dimension: cantidad_liquidaciones {
  type: number
  sql: ${TABLE}.cantidad_liquidaciones ;;
}

dimension: cliente_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cliente_key ;;
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

dimension: importe_bruto_liquidado {
  type: number
  sql: ${TABLE}.importe_bruto_liquidado ;;
}

dimension: importe_consumos_tc_banco {
  type: number
  sql: ${TABLE}.importe_consumos_tc_banco ;;
}

dimension: marca_key {
  hidden: yes
  type: number
  sql: ${TABLE}.marca_key ;;
}

dimension: mb_banco_key {
  hidden: yes
  type: number
  sql: ${TABLE}.mb_banco_key ;;
}

dimension: nir {
  type: number
  sql: ${TABLE}.nir ;;
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

measure: count {
  type: count
  drill_fields: []
}
}
