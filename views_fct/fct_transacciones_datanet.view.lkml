view: fct_transacciones_datanet {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_transacciones_datanet`
    ;;
    view_label: " Fct Transacciones Datanet"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_envio_credito_key} = (SELECT MAX(f.fecha_envio_credito_key) FROM fct_transacciones_datanet s
      LEFT JOIN lkp_fechas f ON s.fecha_envio_credito_key = f.fecha_key) ;;
    }

  dimension: abonado {
    type: string
    sql: ${TABLE}.abonado ;;
  }

  dimension: abonado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.abonado_key ;;
  }

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

  dimension: banco_credito_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_credito_key ;;
  }

  dimension: banco_debito_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_debito_key ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: cliente_credito_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_credito_key ;;
  }

  dimension: cliente_debito_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_debito_key ;;
  }

  dimension: cuenta_credito {
    type: string
    sql: ${TABLE}.cuenta_credito ;;
  }

  dimension: cuenta_credito_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_credito_key ;;
  }

  dimension: cuenta_debito {
    type: string
    sql: ${TABLE}.cuenta_debito ;;
  }

  dimension: cuenta_debito_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_debito_key ;;
  }

  dimension: cuit_credito {
    type: string
    sql: ${TABLE}.cuit_credito ;;
  }

  dimension: cuit_debito {
    type: string
    sql: ${TABLE}.cuit_debito ;;
  }

  dimension: estado_transferencia_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_transferencia_key ;;
  }

  dimension: fecha_envio_credito_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_envio_credito_key ;;
  }

  dimension: fecha_envio_debito_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_envio_debito_key ;;
  }

  dimension: fecha_solicitud_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_solicitud_key ;;
  }

  dimension: id_proceso {
    type: number
    sql: ${TABLE}.id_proceso ;;
  }

  dimension: importe {
    type: number
    sql: ${TABLE}.importe ;;
  }

  dimension: motivo_rechazo_credito_key {
    hidden: yes
    type: number
    sql: ${TABLE}.motivo_rechazo_credito_key ;;
  }

  dimension: motivo_rechazo_debito_key {
    hidden: yes
    type: number
    sql: ${TABLE}.motivo_rechazo_debito_key ;;
  }

  dimension: numero_referencia {
    type: number
    sql: ${TABLE}.numero_referencia ;;
  }

  dimension: numero_transferencia {
    type: number
    sql: ${TABLE}.numero_transferencia ;;
  }

  dimension: oficial_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_cuenta_key ;;
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

  dimension: sucursal_credito {
    type: string
    sql: ${TABLE}.sucursal_credito ;;
  }

  dimension: sucursal_credito_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_credito_key ;;
  }

  dimension: sucursal_debito {
    type: string
    sql: ${TABLE}.sucursal_debito ;;
  }

  dimension: sucursal_debito_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_debito_key ;;
  }

  dimension: tipo_movimiento_datanet_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_movimiento_datanet_key ;;
  }

  dimension: tipo_operacion_datanet_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_operacion_datanet_key ;;
  }

  dimension: tipo_persona_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_persona_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
