include: "/views/views_fct/fct_tarjetas_credito_cuentas.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_tarjetas_credito_cuentas {
  label: "Medios de Pago | TC Mensual"
  conditionally_filter: {
    filters: [fct_tarjetas_credito_cuentas.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join:  lkp_clientes_completa{
    type: inner
    sql_on: ${fct_tarjetas_credito_cuentas.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_campanias {
    type: inner
    sql_on: ${fct_tarjetas_credito_cuentas.campania_key} = ${lkp_campanias.campania_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_tarjetas_credito_cuentas.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas_tc {
    type: inner
    sql_on: ${fct_tarjetas_credito_cuentas.cuenta_tc_key} = ${lkp_cuentas_tc.cuenta_tc_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_tarjetas_credito_cuentas.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: inner
    sql_on: ${fct_tarjetas_credito_cuentas.producto_key} = ${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
  join: lkp_habilitaciones_atm {
    type: inner
    sql_on: ${fct_tarjetas_credito_cuentas.habilitacion_atm_key} = ${lkp_habilitaciones_atm.habilitacion_atm_key} ;;
    relationship: many_to_one
  }
  join: lkp_codigos_inhabilitacion_tc {
    type: inner
    sql_on: ${fct_tarjetas_credito_cuentas.codigo_inhabilitacion_tc_key} = ${lkp_codigos_inhabilitacion_tc.codigo_inhabilitacion_tc_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_tarjetas {
    type: inner
    sql_on: ${fct_tarjetas_credito_cuentas.estado_tarjeta_key} = ${lkp_estados_tarjetas.estado_tarjeta_key} ;;
    relationship: many_to_one
  }
  join: lkp_tarjetas_credito {
    type: inner
    sql_on: ${fct_tarjetas_credito_cuentas.tarjeta_credito_key} = ${lkp_tarjetas_credito.tarjeta_credito_key} ;;
    relationship: many_to_one
  }
}
