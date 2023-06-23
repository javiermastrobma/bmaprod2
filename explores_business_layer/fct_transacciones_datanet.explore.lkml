include: "/views/views_fct/fct_transacciones_datanet.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_transacciones_datanet {
  label: "Pasivas | Transacciones Datanet Diaria"
  conditionally_filter: {
    filters: [fct_transacciones_datanet.fecha_max: "yes"]
    unless: [lkp_fechas_solicitud.fecha, lkp_fechas_solicitud.periodo, lkp_fechas_envio_credito.fecha,
      lkp_fechas_envio_credito.periodo, lkp_fechas_envio_debito.fecha, lkp_fechas_envio_debito.periodo ]
  }
  join: lkp_fechas_solicitud {
    type: inner
    sql_on: ${fct_transacciones_datanet.fecha_solicitud_key} = ${lkp_fechas_solicitud.fecha_key};;
  relationship: many_to_one
  }
  join: lkp_fechas_envio_credito {
    type: inner
    sql_on: ${fct_transacciones_datanet.fecha_envio_credito_key} = ${lkp_fechas_envio_credito.fecha_key};;
    relationship: many_to_one
  }
  join: lkp_fechas_envio_debito {
    type: inner
    sql_on: ${fct_transacciones_datanet.fecha_envio_debito_key} = ${lkp_fechas_envio_debito.fecha_key};;
    relationship: many_to_one
  }
  #join: lkp_abonados_datanet {}
  join: lkp_tipos_movimiento_datanet {
    type: inner
    sql_on: ${fct_transacciones_datanet.tipo_movimiento_datanet_key} = ${lkp_tipos_movimiento_datanet.tipo_movimiento_datanet_key} ;;
    relationship: many_to_one
  }
  #join: lkp_motivos_rechazo_datanet {}
  join: lkp_estados_transferencias_datanet {
    type: inner
    sql_on: ${fct_transacciones_datanet.estado_transferencia_key} = ${lkp_estados_transferencias_datanet.estado_transferencia_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_transacciones_datanet.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_actividades {
    type: inner
    sql_on: ${fct_transacciones_datanet.actividad_key} = ${lkp_actividades.actividad_key} ;;
    relationship: many_to_one
  }
  join: lkp_residencias {
    type: inner
    sql_on: ${fct_transacciones_datanet.residencia_key} = ${lkp_residencias.residencia_key} ;;
    relationship: many_to_one
  }
  join: lkp_tipos_persona {
    type: inner
    sql_on: ${fct_transacciones_datanet.tipo_persona_key} = ${lkp_tipos_persona.tipo_persona_key} ;;
    relationship: many_to_one
  }
  join: lkp_sectores {
    type: inner
    sql_on: ${fct_transacciones_datanet.sector_key} = ${lkp_sectores.sector_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancas {
    type: inner
    sql_on: ${fct_transacciones_datanet.banca_key} = ${lkp_bancas.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_credito {
    type: inner
    sql_on: ${fct_transacciones_datanet.sucursal_credito_key} = ${lkp_sucursales_credito.sucursal_credito_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_debito {
    type: inner
    sql_on: ${fct_transacciones_datanet.sucursal_debito_key} = ${lkp_sucursales_debito.sucursal_debito_key} ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_cuenta {
    type: inner
    sql_on: ${fct_transacciones_datanet.oficial_cuenta_key} = ${lkp_oficiales_cuenta.oficial_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas_credito {
    type: inner
    sql_on: ${fct_transacciones_datanet.cuenta_credito_key} = ${lkp_cuentas_credito.cuenta_key};;
    relationship: many_to_one
  }
  join: lkp_cuentas_debito {
    type: inner
    sql_on: ${fct_transacciones_datanet.cuenta_debito_key} = ${lkp_cuentas_debito.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_tipos_operacion_datanet {
    type: inner
    sql_on: ${fct_transacciones_datanet.tipo_operacion_datanet_key} = ${lkp_tipos_operacion_datanet.tipo_operacion_datanet_key};;
    relationship: many_to_one
  }
  join: lkp_clientes_credito {
    type: inner
    sql_on: ${fct_transacciones_datanet.cliente_credito_key} = ${lkp_clientes_credito.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_debito {
    type: inner
    sql_on: ${fct_transacciones_datanet.cliente_debito_key} = ${lkp_clientes_debito.cliente_key} ;;
    relationship: many_to_one
  }
  #join: lkp_sucursales_radicacion {}
}
