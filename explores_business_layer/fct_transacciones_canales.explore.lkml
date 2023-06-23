include: "/views/views_fct/fct_transacciones_canales.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_transacciones_canales {
  label: "Canales | Transacciones Canales"
  conditionally_filter: {
    filters: [fct_transacciones_canales.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_canales {
    type: inner
    sql_on: ${fct_transacciones_canales.canal_key} = ${lkp_canales.canal_key} ;;
    relationship: many_to_one
  }
  join: lkp_transacciones_canales {
    type: inner
    sql_on: ${lkp_transacciones_canales.transaccion_canal_key} = ${lkp_transacciones_canales.transaccion_canal_key} ;;
    relationship: many_to_one
  }
  join: lkp_unidad_de_acceso {
    type: inner
    sql_on: ${fct_transacciones_canales.unidad_acceso_key} = ${lkp_unidad_de_acceso.unidad_acceso_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_transaccion_canal {
    type: inner
    sql_on: ${fct_transacciones_canales.sucursal_canal_key} = ${lkp_sucursales_transaccion_canal.sucursal_canal_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_transacciones_canales.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_transacciones_canales.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_transacciones_canales.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancas {
    type: inner
    sql_on: ${fct_transacciones_canales.banca_key} = ${lkp_bancas.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_especies {
    type: inner
    sql_on: ${fct_transacciones_canales.especie_key} = ${lkp_especies.especie_key} ;;
    relationship: many_to_one
  }
  join: lkp_horas {
    type: inner
    sql_on: ${fct_transacciones_canales.hora_key} = ${lkp_horas.hora_key} ;;
    relationship: many_to_one
  }
  join: lkp_otros_atributos_transacciones_canales {
    type: inner
    sql_on: ${fct_transacciones_canales.otros_atributos_transacciones_key} = ${lkp_otros_atributos_transacciones_canales.otros_atributos_transacciones_canales_key} ;;
    relationship: many_to_many
  }
  join: lkp_logins {
    type: inner
    sql_on: ${fct_transacciones_canales.login_key} = ${lkp_logins.login_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
}
