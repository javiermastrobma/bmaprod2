view: fct_acuerdos_vigentes {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_acuerdos_vigentes`
    ;;
    label: " Fct Acuerdos Vigentes"

dimension: fecha_max {
  hidden: yes
  type: yesno
  sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_acuerdos_vigentes s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

dimension: acuerdo_key {
  hidden: yes
  type: number
  sql: ${TABLE}.acuerdo_key ;;
}

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

dimension: fecha_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_key ;;
}

dimension: monto_acuerdo {
  type: number
  sql: ${TABLE}.monto_acuerdo ;;
}

dimension: sucursal_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_key ;;
}

dimension: tasa {
  type: number
  sql: ${TABLE}.tasa ;;
}

measure: count {
  type: count
  drill_fields: []
}
}
