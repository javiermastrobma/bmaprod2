include: "/views/views_fct/fct_situaciones_comercios.view"
include: "/views/views_lkp/lkp_comercios_completa.view"
include: "/views/views_lkp/lkp_fechas.view"
include: "/views/views_lkp/lkp_bancos.view"
include: "/views/views_lkp/lkp_rubros.view"
include: "/views/views_lkp/lkp_marcas.view"
include: "/views/views_lkp/lkp_clientes_completa.view"
include: "/views/views_lkp/lkp_sucursales_cuenta.view"

explore: fct_situaciones_comercios {
  label: "Clientes | Situaciones Comercios Mensual"
  conditionally_filter: {
    filters: [fct_situaciones_comercios.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_comercios_completa {
    type: inner
    sql_on: ${fct_situaciones_comercios.comercio_key} = ${lkp_comercios_completa.comercio_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_situaciones_comercios.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_situaciones_comercios.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_rubros {
    type: inner
    sql_on: ${fct_situaciones_comercios.rubro_key} = ${lkp_rubros.rubro_key} ;;
    relationship: many_to_one
  }
  join: lkp_marcas {
    type: inner
    sql_on: ${fct_situaciones_comercios.marca_key} = ${lkp_marcas.marca_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_situaciones_comercios.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_comercios_tc {
    type: inner
    sql_on: ${fct_situaciones_comercios.sucursal_comercio_key} = ${lkp_sucursales_comercios_tc.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
}
