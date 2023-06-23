view: fct_saldos_contables {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_saldos_contables`
    ;;
    view_label: " Fct Saldos Contables"

dimension: fecha_max {
  hidden: yes
 type: yesno
 sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_saldos_contables s
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

measure: neto_mes_me {
  type: sum
  sql: ${TABLE}.neto_mes_me ;;
}

measure: neto_mes_mn {
  type: sum
  sql: ${TABLE}.neto_mes_mn ;;
}

dimension: plan_cuentas_key {
  hidden: yes
  type: number
  sql: ${TABLE}.plan_cuentas_key ;;
}

measure: promedio_me {
  type: sum
  sql: ${TABLE}.promedio_me ;;
}

measure: promedio_mn {
  type: sum
  sql: ${TABLE}.promedio_mn ;;
}

measure: saldo_me {
  type: sum
  sql: ${TABLE}.saldo_me ;;
}

measure: saldo_mn {
  type: sum
  sql: ${TABLE}.saldo_mn ;;
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
