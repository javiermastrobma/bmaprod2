view: lkp_relaciones {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_relaciones`
    ;;

dimension: banco_key {
  hidden: yes
  type: number
  sql: ${TABLE}.banco_key ;;
}

dimension: cliente_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cliente_key ;;
}

dimension: cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cuenta_key ;;
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

dimension: tipo_relacion {
  type: string
  sql: ${TABLE}.tipo_relacion ;;
}

dimension: vigente {
  type: number
  sql: ${TABLE}.vigente ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
