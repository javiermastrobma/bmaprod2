include: "/views/views_fct/fct_transacciones_mandatos_web.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_transacciones_mandatos_web {
  label: "Canales | Transacciones Mandatos Web"
  conditionally_filter: {
    filters: [fct_transacciones_mandatos_web.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_tipos_operacion_canal_digital {
    type: inner
    sql_on: ${fct_transacciones_mandatos_web.tipo_operacion_canal_digital_key} = ${lkp_tipos_operacion_canal_digital.tipo_operacion_canal_digital_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_operacion_canal_digital {
    type: inner
    sql_on: ${fct_transacciones_mandatos_web.estado_operacion_canal_digital_key} = ${lkp_estados_operacion_canal_digital.estado_operacion_canal_digital_key} ;;
    relationship: many_to_one
  }
  join: lkp_iniciativas_canal_digital {
    type: inner
    sql_on: ${fct_transacciones_mandatos_web.iniciativa_canal_digital_key} = ${lkp_iniciativas_canal_digital.iniciativa_canal_digital_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_transacciones_mandatos_web.fecha_transaccion_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_transacciones_mandatos_web.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_horas {
    type: inner
    sql_on: ${fct_transacciones_mandatos_web.hora_transaccion_key} = ${lkp_horas.hora_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_transacciones_mandatos_web.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancas {
    type: inner
    sql_on: ${fct_transacciones_mandatos_web.banca_key} = ${lkp_bancas.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas {
    type: inner
    sql_on: ${fct_transacciones_mandatos_web.cuenta_key} = ${lkp_cuentas.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_transacciones_mandatos_web.sucursal_radicacion_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
}
