view: fct_saldos_deudor_fv {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_saldos_deudor_fv`
    ;;
  view_label: " Fct Saldos Deudor Fv"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_saldos_deudor_fv s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

dimension: banco_key {
  hidden: yes
  type: number
  sql: ${TABLE}.banco_key ;;
}

dimension: cantidad {
  type: number
  sql: ${TABLE}.cantidad ;;
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

dimension: fecha_aparicion_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_aparicion_key ;;
}

dimension: fecha_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_key ;;
}

dimension: oficial_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.oficial_cuenta_key ;;
}

dimension: origen {
  type: string
  sql: ${TABLE}.origen ;;
}

dimension: producto_key {
  hidden: yes
  type: number
  sql: ${TABLE}.producto_key ;;
}

measure: saldo_disponible {
  type: sum
  sql: ${TABLE}.saldo_disponible ;;
}

dimension: sector_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sector_key ;;
}

dimension: sucursal_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_cuenta_key ;;
}

measure: count {
  type: count
  drill_fields: []
}
}
