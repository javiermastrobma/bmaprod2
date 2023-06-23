include: "/views/views_fct/fct_transacciones_tc.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_transacciones_tc {
  label: "Medios de Pago | Transacciones TC Diaria"
  conditionally_filter: {
    filters: [fct_transacciones_tc.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_tipos_movimiento_tc {
    type: inner
    sql_on: ${fct_transacciones_tc.tipo_movimiento_tc_key} = ${lkp_tipos_movimiento_tc.tipo_movimiento_tc_key};;
    relationship: many_to_one
  }
  join: lkp_cuentas_tc {
    type: inner
    sql_on: ${fct_transacciones_tc.cuenta_tc_key} = ${lkp_cuentas_tc.cuenta_tc_key};;
    relationship: many_to_one
  }
  join: lkp_comercios_completa {
    type: inner
    sql_on: ${fct_transacciones_tc.comercio_key} = ${lkp_comercios_completa.comercio_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_transacciones_tc.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_rubros {
    type: inner
    sql_on: ${fct_transacciones_tc.rubro_key} = ${lkp_rubros.rubro_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_transacciones_tc.fecha_transaccion_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_especies {
    type: inner
    sql_on: ${fct_transacciones_tc.especie_key} = ${lkp_especies.especie_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: inner
    sql_on: ${fct_transacciones_tc.producto_key} = ${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancas {
    type: inner
    sql_on: ${fct_transacciones_tc.banca_key} = ${lkp_bancas.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_marcas {
    type: inner
    sql_on: ${fct_transacciones_tc.marca_key} = ${lkp_marcas.marca_key} ;;
    relationship: many_to_one
  }
  join: lkp_formas_cobro_tc {
    type: inner
    sql_on: ${fct_transacciones_tc.forma_cobro_tc_key} = ${lkp_formas_cobro_tc.forma_cobro_tc_key} ;;
    relationship: many_to_one
  }
  join: lkp_tarjetas_credito {
    type: inner
    sql_on: ${fct_transacciones_tc.tarjeta_credito_key} = ${lkp_tarjetas_credito.tarjeta_credito_key} ;;
    relationship: many_to_one
  }



}
