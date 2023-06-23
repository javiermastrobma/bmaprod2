view: fct_valoracion_clientes {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_valoracion_clientes`
    ;;
  view_label: " Fct Valoracion Clientes"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_valoracion_clientes s
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

dimension: cliente_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cliente_key ;;
}

dimension: concepto_valoracion_key {
  hidden: yes
  type: number
  sql: ${TABLE}.concepto_valoracion_key ;;
}

dimension: cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cuenta_key ;;
}

dimension: cuenta_tc_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cuenta_tc_key ;;
}

dimension: excluido {
  type: string
  sql: ${TABLE}.excluido ;;
}

dimension: fecha_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_key ;;
}

dimension: fuente_valor_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fuente_valor_key ;;
}

dimension: motivo_exclusion {
  type: string
  sql: ${TABLE}.motivo_exclusion ;;
}

dimension: oficial_cliente_key {
  hidden: yes
  type: number
  sql: ${TABLE}.oficial_cliente_key ;;
}

dimension: paquete_id {
  type: string
  sql: ${TABLE}.paquete_id ;;
}

dimension: plan_cuentas_key {
  hidden: yes
  type: number
  sql: ${TABLE}.plan_cuentas_key ;;
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

dimension: sucursal_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_cuenta_key ;;
}

dimension: sucursal_radicacion_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_radicacion_key ;;
}

dimension: tipo_valor_relacional_key {
  hidden: yes
  type: number
  sql: ${TABLE}.tipo_valor_relacional_key ;;
}

dimension: valor_convenio {
  type: number
  sql: ${TABLE}.valor_convenio ;;
}

dimension: valor_cuenta {
  type: number
  sql: ${TABLE}.valor_cuenta ;;
}

dimension: valor_propio {
  type: number
  sql: ${TABLE}.valor_propio ;;
}

dimension: valor_titular {
  type: number
  sql: ${TABLE}.valor_titular ;;
}

measure: count {
  type: count
  drill_fields: []
}

measure: sum_valor_propio {
  description: "Suma del campo valor_propio"
  type:  sum
  sql: ${valor_propio} ;;
}

measure: sum_valor_convenio {
  description: "Suma del campo valor_convenio"
  type:  sum
  sql: ${valor_convenio} ;;
}

measure: val_pror_cargos_x_incob {
  description: "Suma del campo valor_propio + 1000000"
  type: sum
  sql: ${valor_propio} + 1000000 ;;
}

measure: meses_valor {
  description: "Count distinct del campo fecha_key"
  type: count_distinct
  sql: ${fecha_key} ;;
}

measure: valor_promedio {
  description: "División entre los campos valor_propio y meses_valor"
  type: number
  sql: ${valor_propio} / COUNT(DISTINCT ${fecha_key}) ;;
}
}
