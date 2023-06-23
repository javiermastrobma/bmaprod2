include: "/views/views_fct/fct_transacciones_guru.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_transacciones_guru {
  label: "Canales | Transacciones GURU"
  conditionally_filter: {
    filters: [fct_transacciones_guru.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_pasos_operacion {
    type: inner
    sql_on: ${fct_transacciones_guru.paso_operacion_key} = ${lkp_pasos_operacion.paso_operacion_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_transacciones_guru.sucursal_transaccion_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
  join: lkp_dispositivos_iniciativa {
    type: inner
    sql_on: ${fct_transacciones_guru.dispositivo_iniciativa_key} = ${lkp_dispositivos_iniciativa.dispositivo_iniciativa_key}  ;;
    relationship: many_to_one
  }
  join: lkp_iniciativas_canal_digital {
    type: inner
    sql_on: ${fct_transacciones_guru.iniciativa_canal_digital_key} = ${lkp_iniciativas_canal_digital.iniciativa_canal_digital_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_transacciones_guru.fecha_transaccion_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_transacciones_guru.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_transacciones_guru.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_vendedores {
    type: inner
    sql_on: ${fct_transacciones_guru.vendedor_key} = ${lkp_vendedores.vendedor_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas_td {
    type: inner
    sql_on: ${fct_transacciones_guru.cuenta_key} = ${lkp_cuentas_td.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_operacion_canal_digital {
    type: inner
    sql_on: ${fct_transacciones_guru.estado_operacion_canal_digital_key} = ${lkp_estados_operacion_canal_digital.estado_operacion_canal_digital_key} ;;
    relationship: many_to_one
  }
  join: lkp_tipos_operacion_canal_digital {
    type: inner
    sql_on: ${fct_transacciones_guru.tipo_operacion_canal_digital_key} = ${lkp_tipos_operacion_canal_digital.tipo_operacion_canal_digital_key} ;;
    relationship: many_to_one
  }

}
