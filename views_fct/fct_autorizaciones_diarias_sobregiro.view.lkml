view: fct_autorizaciones_diarias_sobregiro {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_autorizaciones_diarias_sobregiro`
    ;;
    label: " Fct Autorizaciones Diarias Sobregiro"

dimension: actividad_key {
  hidden: yes
  type: number
  sql: ${TABLE}.actividad_key ;;
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

dimension: cheque_numero {
  type: string
  sql: ${TABLE}.cheque_numero ;;
}

dimension: cheque_valor {
  type: number
  sql: ${TABLE}.cheque_valor ;;
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

dimension: dias_continuos_saldo_deudor {
  type: number
  sql: ${TABLE}.dias_continuos_saldo_deudor ;;
}

dimension: especie_key {
  hidden: yes
  type: number
  sql: ${TABLE}.especie_key ;;
}

dimension: fecha_inicio_vigencia_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_inicio_vigencia_key ;;
}

dimension: fecha_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_key ;;
}

dimension: fecha_vencimiento_autorizacion_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_vencimiento_autorizacion_key ;;
}

dimension: monto_sobregiro {
  type: number
  sql: ${TABLE}.monto_sobregiro ;;
}

dimension: oficial_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.oficial_cuenta_key ;;
}

dimension: opcion_rescate_key {
  hidden: yes
  type: number
  sql: ${TABLE}.opcion_rescate_key ;;
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

dimension: saldo_dia_anterior {
  type: number
  sql: ${TABLE}.saldo_dia_anterior ;;
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

dimension: tipo_persona_key {
  hidden: yes
  type: number
  sql: ${TABLE}.tipo_persona_key ;;
}

dimension: transaccion_key {
  hidden: yes
  type: number
  sql: ${TABLE}.transaccion_key ;;
}

dimension: usuario_autorizante {
  type: string
  sql: ${TABLE}.usuario_autorizante ;;
}

measure: count {
  type: count
  drill_fields: []
}
}
