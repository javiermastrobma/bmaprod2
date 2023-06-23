view: fct_transferencias {
  fields_hidden_by_default: yes
  label: " Fct Transferencias"
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_transferencias`
    ;;

  dimension: fecha_max {
    type: yesno
    sql:  ${fecha_transferencia_key} = (SELECT MAX(f.fecha_key) FROM fct_transferencias s
      LEFT JOIN lkp_fechas f ON s.fecha_transferencia_key = f.fecha_key) ;;
  }

  dimension: banca_origen_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banca_origen_key ;;
  }

  dimension: banca_receptor_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banca_receptor_key ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: banco_origen_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_origen_key ;;
  }

  dimension: banco_receptor_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_receptor_key ;;
  }

  dimension: causal_gastos_source {
    hidden: no
    type: number
    sql: ${TABLE}.causal_gastos_source ;;
  }

  dimension: causal_key {
    hidden: yes
    type: number
    sql: ${TABLE}.causal_key ;;
  }

  dimension: causal_source {
    hidden: no
    type: number
    sql: ${TABLE}.causal_source ;;
  }

  dimension: cbu_origen {
    hidden: no
    type: string
    sql: ${TABLE}.cbu_origen ;;
  }

  dimension: cbu_receptor {
    hidden: no
    type: string
    sql: ${TABLE}.cbu_receptor ;;
  }

  dimension: cliente_origen_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_origen_key ;;
  }

  dimension: cliente_receptor_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_receptor_key ;;
  }

  dimension: comision_transferencia {
    hidden: no
    type: number
    sql: ${TABLE}.comision_transferencia ;;
  }

  dimension: convenio_key {
    hidden: yes
    type: number
    sql: ${TABLE}.convenio_key ;;
  }

  dimension: cotizacion_concentrador {
    hidden: no
    type: number
    sql: ${TABLE}.cotizacion_concentrador ;;
  }

  dimension: cotizacion_valor_cierre {
    hidden: no
    type: number
    sql: ${TABLE}.cotizacion_valor_cierre ;;
  }

  dimension: cuenta_origen_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_origen_key ;;
  }

  dimension: cuenta_origen_source {
    hidden: no
    type: string
    sql: ${TABLE}.cuenta_origen_source ;;
  }

  dimension: cuenta_receptor_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_receptor_key ;;
  }

  dimension: cuenta_receptor_source {
    hidden: no
    type: string
    sql: ${TABLE}.cuenta_receptor_source ;;
  }

  dimension: cuit_origen {
    hidden: no
    type: number
    sql: ${TABLE}.cuit_origen ;;
  }

  dimension: cuit_receptor {
    hidden: no
    type: number
    sql: ${TABLE}.cuit_receptor ;;
  }

  dimension: debito_credito {
    type: string
    sql: ${TABLE}.debito_credito ;;
  }

  dimension: especie_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_key ;;
  }

  dimension: estado_transferencia_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_transferencia_key ;;
  }

  dimension: fecha_compensacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_compensacion_key ;;
  }

  dimension: fecha_proceso_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_proceso_key ;;
  }

  dimension_group: fecha_transferencia {
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
    sql: ${TABLE}.fecha_transferencia ;;
  }

  dimension: fecha_transferencia_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_transferencia_key ;;
  }

  dimension: hora_transferencia_key {
    hidden: yes
    type: number
    sql: ${TABLE}.hora_transferencia_key ;;
  }

  dimension: importe {
    hidden: no
    type: number
    sql: ${TABLE}.importe ;;
  }

  dimension: marca_prospecto {
    hidden: no
    type: string
    sql: ${TABLE}.marca_prospecto ;;
  }

  dimension: medio_transferencia_key {
    hidden: yes
    type: number
    sql: ${TABLE}.medio_transferencia_key ;;
  }

  dimension: motivo_rechazo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.motivo_rechazo_key ;;
  }

  dimension: origen_transferencia {
    hidden: no
    type: string
    sql: ${TABLE}.origen_transferencia ;;
  }

  dimension: secuencial_source {
    hidden: no
    type: string
    sql: ${TABLE}.secuencial_source ;;
  }

  dimension: sucursal_origen_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_origen_key ;;
  }

  dimension: sucursal_origen_source {
    hidden: no
    type: number
    sql: ${TABLE}.sucursal_origen_source ;;
  }

  dimension: sucursal_receptor_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_receptor_key ;;
  }

  dimension: sucursal_receptor_source {
    hidden: no
    type: number
    sql: ${TABLE}.sucursal_receptor_source ;;
  }

  dimension: tipo_debin {
    hidden: no
    type: string
    sql: ${TABLE}.tipo_debin ;;
  }

  dimension: tipologia_transferencia_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipologia_transferencia_key ;;
  }

  dimension: transferencia_source {
    hidden: no
    type: number
    sql: ${TABLE}.transferencia_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
