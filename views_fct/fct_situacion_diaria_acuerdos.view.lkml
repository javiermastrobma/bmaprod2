view: fct_situacion_diaria_acuerdos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_situacion_diaria_acuerdos`
    ;;
    view_label: " Fct Situación Diaria Acuerdos"

dimension: fecha_max {
  hidden: yes
  type: yesno
  sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_situacion_diaria_acuerdos s
    LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
}

dimension: actividad_key {
  hidden: yes
  type: number
  sql: ${TABLE}.actividad_key ;;
}

dimension: acuerdo_key {
  hidden: yes
  type: number
  sql: ${TABLE}.acuerdo_key ;;
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

dimension: cantidad_renovaciones {
  type: number
  sql: ${TABLE}.cantidad_renovaciones ;;
}

dimension: categoria_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.categoria_cuenta_key ;;
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

dimension: desvio {
  type: number
  sql: ${TABLE}.desvio ;;
}

dimension: dias_continuos_saldo_deudor {
  type: number
  sql: ${TABLE}.dias_continuos_saldo_deudor ;;
}

dimension: dias_descubierto_con_acuerdo {
  type: number
  sql: ${TABLE}.dias_descubierto_con_acuerdo ;;
}

dimension: dias_exceso_acuerdo {
  type: number
  sql: ${TABLE}.dias_exceso_acuerdo ;;
}

dimension: especie_key {
  hidden: yes
  type: number
  sql: ${TABLE}.especie_key ;;
}

dimension: estado_castigado_key {
  hidden: yes
  type: number
  sql: ${TABLE}.estado_castigado_key ;;
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

dimension: fecha_alta_acuerdo_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_alta_acuerdo_key ;;
}

dimension: fecha_alta_origen_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_alta_origen_key ;;
}

dimension: fecha_ingreso_acuerdo_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_ingreso_acuerdo_key ;;
}

dimension: fecha_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_key ;;
}

dimension: fecha_vencimiento_acuerdo_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_vencimiento_acuerdo_key ;;
}

dimension: fecha_vigencia_rms_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_vigencia_rms_key ;;
}

dimension: garantia_key {
  hidden: yes
  type: number
  sql: ${TABLE}.garantia_key ;;
}

dimension: intereses_devengados {
  type: number
  sql: ${TABLE}.intereses_devengados ;;
}

dimension: mercado_key {
  hidden: yes
  type: number
  sql: ${TABLE}.mercado_key ;;
}

dimension: nro_contrato {
  type: number
  sql: ${TABLE}.nro_contrato ;;
}

dimension: nro_renovacion {
  type: number
  sql: ${TABLE}.nro_renovacion ;;
}

dimension: numero_acuerdo_anterior {
  type: number
  sql: ${TABLE}.numero_acuerdo_anterior ;;
}

dimension: numero_acuerdo_origen {
  type: number
  sql: ${TABLE}.numero_acuerdo_origen ;;
}

dimension: oficial_cobro_key {
  hidden: yes
  type: number
  sql: ${TABLE}.oficial_cobro_key ;;
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

dimension: plazo {
  type: number
  sql: ${TABLE}.plazo ;;
}

dimension: porcentaje_disminucion_capital {
  type: number
  sql: ${TABLE}.porcentaje_disminucion_capital ;;
}

dimension: producto_key {
  hidden: yes
  type: number
  sql: ${TABLE}.producto_key ;;
}

dimension: renovacion_automatica {
  type: string
  sql: ${TABLE}.renovacion_automatica ;;
}

dimension: residencia_key {
  hidden: yes
  type: number
  sql: ${TABLE}.residencia_key ;;
}

measure: saldo_acuerdo {
  type: sum
  sql: ${TABLE}.saldo_acuerdo ;;
}

measure: saldo_disponible {
  type: sum
  sql: ${TABLE}.saldo_disponible ;;
}

measure: saldo_utilizado {
  type: sum
  sql: ${TABLE}.saldo_utilizado ;;
}

dimension: sector_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sector_key ;;
}

dimension: secuencia_id {
  type: number
  sql: ${TABLE}.secuencia_id ;;
}

dimension: sucursal_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_cuenta_key ;;
}

dimension: tasa {
  type: number
  sql: ${TABLE}.tasa ;;
}

dimension: tipo_desvio {
  type: string
  sql: ${TABLE}.tipo_desvio ;;
}

dimension: tipo_liquidacion_intereses_key {
  hidden: yes
  type: number
  sql: ${TABLE}.tipo_liquidacion_intereses_key ;;
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

dimension: total_transitorios {
  type: number
  sql: ${TABLE}.total_transitorios ;;
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

dimension: usuario_autorizante {
  type: string
  sql: ${TABLE}.usuario_autorizante ;;
}

measure: count {
  type: count
  drill_fields: []
}
}
