include: "/views/views_fct/fct_seguimiento_cheques.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_seguimiento_cheques {
  label: "Remesas | Cheques (Cámara Enviada) Diaria"
  conditionally_filter: {
    filters: [fct_seguimiento_cheques.fecha_max: "yes"]
    unless: [lkp_fechas_deposito.fecha, lkp_fechas_deposito.periodo, lkp_fechas_cancelacion.fecha, lkp_fechas_cancelacion.periodo]
  }
  join: lkp_fechas_deposito {
    type: inner
    sql_on: ${fct_seguimiento_cheques.fecha_deposito_key} = ${lkp_fechas_deposito.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas_cancelacion {
    type: inner
    sql_on: ${fct_seguimiento_cheques.fecha_cancelacion_key} = ${lkp_fechas_cancelacion.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_cheque {
    type: inner
    sql_on: ${fct_seguimiento_cheques.estado_cheque_key} = ${lkp_estados_cheque.estado_cheque_key} ;;
    relationship: many_to_one
  }
  #join: lkp_tipos_cheque {}
  #join: lkp_tipos_deposito {}
  join: lkp_origenes_captura {
    type: inner
    sql_on: ${fct_seguimiento_cheques.origen_captura_key} = ${lkp_origenes_captura.origen_captura_key} ;;
    relationship: many_to_one
  }
  join: lkp_tipos_canje  {
    type: inner
    sql_on: ${fct_seguimiento_cheques.tipo_canje_key} = ${lkp_tipos_canje.tipo_canje_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos  {
    type: inner
    sql_on: ${fct_seguimiento_cheques.banco_key} = ${lkp_bancos.banco_key};;
  relationship: many_to_one
  }
  join: lkp_sectores  {
    type: inner
    sql_on: ${fct_seguimiento_cheques.sector_key} = ${lkp_sectores.sector_key};;
  relationship: many_to_one
  }
  join: lkp_residencias {
    type: inner
    sql_on: ${fct_seguimiento_cheques.residencia_key} = ${lkp_residencias.residencia_key};;
  relationship: many_to_one
  }
  join: lkp_productos  {
    type: inner
    sql_on: ${fct_seguimiento_cheques.producto_key} = ${lkp_productos.producto_key};;
  relationship: many_to_one
  }
  join: lkp_bancas {
    type: inner
    sql_on: ${fct_seguimiento_cheques.banca_key} = ${lkp_bancas.banca_key};;
  relationship: many_to_one
  }
  join: lkp_especies  {
    type: inner
    sql_on: ${fct_seguimiento_cheques.especie_key} = ${lkp_especies.especie_key};;
  relationship: many_to_one
  }
  join: lkp_sucursales_cuenta  {
    type: inner
    sql_on: ${fct_seguimiento_cheques.sucursal_cuenta_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
  relationship: many_to_one
  }
  join: lkp_cuentas  {
    type: inner
    sql_on: ${fct_seguimiento_cheques.cuenta_key} = ${lkp_cuentas.cuenta_key};;
  relationship: many_to_one
  }
  join: lkp_clientes_completa  {
    type: inner
    sql_on: ${fct_seguimiento_cheques.cliente_key} = ${lkp_clientes_completa.cliente_key};;
  relationship: many_to_one
  }
  join: lkp_causas_devolucion {
    type: inner
    sql_on: ${fct_seguimiento_cheques.causa_devolucion_key} = ${lkp_causas_devolucion.causa_devolucion_key} ;;
    relationship: many_to_one
  }
  join: lkp_entidades_pagadoras  {
    type: inner
    sql_on: ${fct_seguimiento_cheques.entidad_pagadora_key} = ${lkp_entidades_pagadoras.entidad_pagadora_key};;
  relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
}
