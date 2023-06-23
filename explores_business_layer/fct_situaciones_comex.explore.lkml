include: "/views/views_fct/fct_situaciones_comex.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_situaciones_comex {
  label: "Comex | Situacion Mensual"
  conditionally_filter: {
    filters: [fct_situaciones_comex.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_situaciones_comex.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  #join: lkp_operaciones_comex {}
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_situaciones_comex.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_especies {
    type: inner
    sql_on: ${fct_situaciones_comex.especie_key} = ${lkp_especies.especie_key} ;;
    relationship: many_to_one
  }
  #join: lkp_plan_cuentas {}
  join: lkp_cuentas {
    type: inner
    sql_on: ${fct_situaciones_comex.cuenta_key} = ${lkp_cuentas.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: inner
    sql_on: ${fct_situaciones_comex.producto_key} = ${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_situaciones_comex.sucursal_cuenta_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_cuenta {
    type: inner
    sql_on: ${fct_situaciones_comex.oficial_cuenta_key} = ${lkp_oficiales_cuenta.oficial_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancas {
    type: inner
    sql_on: ${fct_situaciones_comex.banca_key} = ${lkp_bancas.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_situaciones_comex.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_otros_codigos_comex {
    type: inner
    sql_on: ${fct_situaciones_comex.otros_codigos_comex_key} = ${lkp_otros_codigos_comex.otros_codigos_comex_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key}  ;;
    relationship: many_to_one
  }
}
