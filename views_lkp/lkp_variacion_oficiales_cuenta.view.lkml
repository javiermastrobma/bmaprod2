view: lkp_variacion_oficiales_cuenta {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_variacion_oficiales_cuenta`
    ;;

dimension: cargo {
  type: string
  sql: ${TABLE}.cargo ;;
}

dimension: centralizado {
  type: string
  sql: ${TABLE}.centralizado ;;
}

dimension_group: fecha_desde {
  type: time
  timeframes: [
    raw,
    time,
    date,
    week,
    month,
    quarter,
    year
  ]
  sql: ${TABLE}.fecha_desde ;;
}

dimension_group: fecha_hasta {
  type: time
  timeframes: [
    raw,
    time,
    date,
    week,
    month,
    quarter,
    year
  ]
  sql: ${TABLE}.fecha_hasta ;;
}

dimension: oficial_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.oficial_cuenta_key ;;
}

dimension: sucursal_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_cuenta_key ;;
}

dimension: vigente {
  type: string
  sql: ${TABLE}.vigente ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
