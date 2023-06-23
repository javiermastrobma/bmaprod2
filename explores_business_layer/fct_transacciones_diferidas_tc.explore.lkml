include: "/views/views_fct/fct_transacciones_diferidas_tc.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_transacciones_diferidas_tc {
  label: "Medios de Pago | Transacciones Diferidas TC Diaria"
  conditionally_filter: {
    filters: [fct_transacciones_diferidas_tc.fecha_max: "yes"]
    unless: [lkp_fechas_cierre.fecha, lkp_fechas_cierre.periodo, lkp_fechas_generacion.fecha, lkp_fechas_generacion.periodo, lkp_fechas_pago.fecha, lkp_fechas_pago.periodo, lkp_fechas_evento.fecha, lkp_fechas_evento.periodo]
  }
  join: lkp_tipos_movimiento_tc {
    type: inner
    sql_on: ${fct_transacciones_diferidas_tc.tipo_movimiento_tc_key} = ${lkp_tipos_movimiento_tc.tipo_movimiento_tc_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas_tc {
    type: inner
    sql_on: ${fct_transacciones_diferidas_tc.cuenta_tc_key} = ${lkp_cuentas_tc.cuenta_tc_key} ;;
    relationship: many_to_one
  }
  join: lkp_comercios_completa {
    type: inner
    sql_on: ${fct_transacciones_diferidas_tc.comercio_key} = ${lkp_comercios_completa.comercio_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_transacciones_diferidas_tc.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_rubros {
    type: inner
    sql_on: ${fct_transacciones_diferidas_tc.rubro_key} = ${lkp_rubros.rubro_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas_cierre {
    type: inner
    sql_on: ${fct_transacciones_diferidas_tc.fecha_cierre_key} = ${lkp_fechas_cierre.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas_generacion {
    type: inner
    sql_on: ${fct_transacciones_diferidas_tc.fecha_generacion_key} = ${lkp_fechas_generacion.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas_pago {
    type: inner
    sql_on: ${fct_transacciones_diferidas_tc.fecha_pago_key} = ${lkp_fechas_pago.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas_evento {
    type: inner
    sql_on: ${fct_transacciones_diferidas_tc.fecha_evento_key} = ${lkp_fechas_evento.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_especies {
    type: inner
    sql_on: ${fct_transacciones_diferidas_tc.especie_key} = ${lkp_especies.especie_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: inner
    sql_on: ${fct_transacciones_diferidas_tc.producto_key} = ${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancas {
    type: inner
    sql_on: ${fct_transacciones_diferidas_tc.banca_key} = ${lkp_bancas.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_marcas {
    type: inner
    sql_on: ${fct_transacciones_diferidas_tc.marca_key} = ${lkp_marcas.marca_key} ;;
    relationship: many_to_one
  }
  join: lkp_formas_cobro_tc {
    type: inner
    sql_on: ${fct_transacciones_diferidas_tc.forma_cobro_tc_key} = ${lkp_formas_cobro_tc.forma_cobro_tc_key}.forma_cobro_key} ;;
    relationship: many_to_one
  }
  join: lkp_tarjetas_credito{
    type: inner
    sql_on: ${fct_transacciones_diferidas_tc.tarjeta_credito_key} = ${lkp_tarjetas_credito.tarjeta_credito_key} ;;
    relationship: many_to_one
  }
  }
