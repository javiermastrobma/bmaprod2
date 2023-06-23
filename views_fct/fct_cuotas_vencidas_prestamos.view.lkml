view: fct_cuotas_vencidas_prestamos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_cuotas_vencidas_prestamos`
    ;;
    view_label: " Fct Cuotas Vencidas Prestamos"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_cuotas_vencidas_prestamos s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

  dimension: actividad_key {
    hidden: yes
    type: number
    sql: ${TABLE}.actividad_key ;;
  }

  dimension: ajuste {
    type: number
    sql: ${TABLE}.ajuste ;;
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

  dimension: capital {
    type: number
    sql: ${TABLE}.capital ;;
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

  dimension: cuota_numero {
    type: number
    sql: ${TABLE}.cuota_numero ;;
  }

  dimension: cuota_tapada {
    type: string
    sql: ${TABLE}.cuota_tapada ;;
  }

  dimension: especie_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_key ;;
  }

  dimension: estado_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_cuenta_key ;;
  }

  dimension: estado_recupero_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_recupero_key ;;
  }

  dimension: estudio_externo_cobranza_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estudio_externo_cobranza_key ;;
  }

  dimension: estudio_externo_recupero_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estudio_externo_recupero_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: fecha_ultimo_pago_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_ultimo_pago_key ;;
  }

  dimension: fecha_vencimiento_cuota_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_vencimiento_cuota_key ;;
  }

  dimension: interes {
    type: number
    sql: ${TABLE}.interes ;;
  }

  dimension: interes_anticipado {
    type: number
    sql: ${TABLE}.interes_anticipado ;;
  }

  dimension: iva_varios {
    type: number
    sql: ${TABLE}.iva_varios ;;
  }

  dimension: mercado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.mercado_key ;;
  }

  dimension: oficial_cobranza_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_cobranza_key ;;
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

  dimension: otros_rubros {
    type: number
    sql: ${TABLE}.otros_rubros ;;
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

  dimension: seguros {
    type: number
    sql: ${TABLE}.seguros ;;
  }

  dimension: sucursal_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: tasa_operacion {
    type: number
    sql: ${TABLE}.tasa_operacion ;;
  }

  dimension: tipo_persona_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_persona_key ;;
  }

  dimension: total_cuota {
    type: number
    sql: ${TABLE}.total_cuota ;;
  }

  dimension: unidad_cobranza_key {
    hidden: yes
    type: number
    sql: ${TABLE}.unidad_cobranza_key ;;
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
