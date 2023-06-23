view: fct_saldos_contables_modificados_fv {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_saldos_contables_modificados_fv`
    ;;
    view_label: " Fct Saldos Contables Modificados Fv"

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

dimension: fecha_proceso_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_proceso_key ;;
}

dimension: plan_cuentas_key {
  hidden: yes
  type: number
  sql: ${TABLE}.plan_cuentas_key ;;
}

dimension: promedio_me_actual {
  type: number
  sql: ${TABLE}.promedio_me_actual ;;
}

dimension: promedio_me_anterior {
  type: number
  sql: ${TABLE}.promedio_me_anterior ;;
}

dimension: promedio_mn_actual {
  type: number
  sql: ${TABLE}.promedio_mn_actual ;;
}

dimension: promedio_mn_anterior {
  type: number
  sql: ${TABLE}.promedio_mn_anterior ;;
}

dimension: saldo_me_actual {
  type: number
  sql: ${TABLE}.saldo_me_actual ;;
}

dimension: saldo_me_anterior {
  type: number
  sql: ${TABLE}.saldo_me_anterior ;;
}

dimension: saldo_mn_actual {
  type: number
  sql: ${TABLE}.saldo_mn_actual ;;
}

dimension: saldo_mn_anterior {
  type: number
  sql: ${TABLE}.saldo_mn_anterior ;;
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
