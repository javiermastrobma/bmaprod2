view: fct_situacion_diaria_deudor {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_situacion_diaria_deudor`
    ;;
    view_label: " Fct Situación Diaria Deudor"

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

dimension: cantidad_cheques_rechazo_forma {
  type: number
  sql: ${TABLE}.cantidad_cheques_rechazo_forma ;;
}

dimension: cantidad_cheques_rechazo_sin_fondos {
  type: number
  sql: ${TABLE}.cantidad_cheques_rechazo_sin_fondos ;;
}

dimension: cantidad_convenios {
  type: number
  sql: ${TABLE}.cantidad_convenios ;;
}

dimension: categoria_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.categoria_cuenta_key ;;
}

dimension: cheques_comp {
  type: number
  sql: ${TABLE}.cheques_comp ;;
}

dimension: cliente_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cliente_key ;;
}

dimension: convenio_acreditacion_sueldo_key {
  hidden: yes
  type: number
  sql: ${TABLE}.convenio_acreditacion_sueldo_key ;;
}

dimension: cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cuenta_key ;;
}

dimension: depositos_cheque_24hs {
  type: number
  sql: ${TABLE}.depositos_cheque_24hs ;;
}

dimension: depositos_cheque_camara {
  type: number
  sql: ${TABLE}.depositos_cheque_camara ;;
}

dimension: depositos_remesas {
  type: number
  sql: ${TABLE}.depositos_remesas ;;
}

dimension: dias_continuos_saldo_deudor {
  type: number
  sql: ${TABLE}.dias_continuos_saldo_deudor ;;
}

dimension: dias_descubierto_con_acuerdo {
  type: number
  sql: ${TABLE}.dias_descubierto_con_acuerdo ;;
}

dimension: dias_descubierto_sin_acuerdo {
  type: number
  sql: ${TABLE}.dias_descubierto_sin_acuerdo ;;
}

dimension: estado_recupero_key {
  hidden: yes
  type: number
  sql: ${TABLE}.estado_recupero_key ;;
}

dimension: estudio_externo_cobro_key {
  hidden: yes
  type: number
  sql: ${TABLE}.estudio_externo_cobro_key ;;
}

dimension: estudio_externo_recupero_key {
  hidden: yes
  type: number
  sql: ${TABLE}.estudio_externo_recupero_key ;;
}

dimension: excesos_acuerdo {
  type: number
  sql: ${TABLE}.excesos_acuerdo ;;
}

dimension: fecha_inicial_acreditacion_sueldo_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_inicial_acreditacion_sueldo_key ;;
}

dimension: fecha_inicial_estado_gestion_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_inicial_estado_gestion_key ;;
}

dimension: fecha_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_key ;;
}

dimension: oficial_cobro_key {
  hidden: yes
  type: number
  sql: ${TABLE}.oficial_cobro_key ;;
}

dimension: oficial_cuenta_corriente_key {
  hidden: yes
  type: number
  sql: ${TABLE}.oficial_cuenta_corriente_key ;;
}

dimension: oficial_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.oficial_cuenta_key ;;
}

dimension: oficial_recupero_key {
  hidden: yes
  type: number
  sql: ${TABLE}.oficial_recupero_key ;;
}

dimension: producto_bancario {
  type: string
  sql: ${TABLE}.producto_bancario ;;
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

dimension: saldo_contable {
  type: number
  sql: ${TABLE}.saldo_contable ;;
}

dimension: saldo_disponible {
  type: number
  sql: ${TABLE}.saldo_disponible ;;
}

dimension: saldo_maximo_deudor {
  type: number
  sql: ${TABLE}.saldo_maximo_deudor ;;
}

dimension: saldo_minimo_deudor {
  type: number
  sql: ${TABLE}.saldo_minimo_deudor ;;
}

dimension: saldo_promedio {
  type: number
  sql: ${TABLE}.saldo_promedio ;;
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

dimension: suscep_no_comp {
  type: number
  sql: ${TABLE}.suscep_no_comp ;;
}

dimension: tipo_persona_key {
  hidden: yes
  type: number
  sql: ${TABLE}.tipo_persona_key ;;
}

dimension: total_acuerdos {
  type: number
  sql: ${TABLE}.total_acuerdos ;;
}

dimension: total_autorizaciones_transitorias {
  type: number
  sql: ${TABLE}.total_autorizaciones_transitorias ;;
}

dimension: total_utilizacion_acuerdos {
  type: number
  sql: ${TABLE}.total_utilizacion_acuerdos ;;
}

dimension: unidad_cobro_key {
  hidden: yes
  type: number
  sql: ${TABLE}.unidad_cobro_key ;;
}

dimension: unidad_recupero_key {
  hidden: yes
  type: number
  sql: ${TABLE}.unidad_recupero_key ;;
}

measure: count {
  type: count
  drill_fields: []
}
}
