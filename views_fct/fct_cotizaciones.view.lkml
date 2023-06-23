view: fct_cotizaciones {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_cotizaciones`
    ;;
  view_label: " Fct Cotizaciones"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_cotizaciones s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

dimension: banco_key {
  hidden: yes
  type: number
  sql: ${TABLE}.banco_key ;;
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

dimension: valor_cierre {
  type: number
  sql: ${TABLE}.valor_cierre ;;
}

dimension: valor_compra {
  type: number
  sql: ${TABLE}.valor_compra ;;
}

dimension: valor_venta {
  type: number
  sql: ${TABLE}.valor_venta ;;
}

measure: count {
  type: count
  drill_fields: []
}
}
