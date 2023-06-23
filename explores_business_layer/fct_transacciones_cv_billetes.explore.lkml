include: "/views/views_fct/fct_transacciones_cv_billetes.view.lkml"
include: "/views/views_lkp/lkp_fechas.view.lkml"
include: "/views/views_lkp/lkp_especies.view.lkml"
include: "/views/views_lkp/lkp_clientes_completa.view.lkml"
include: "/views/views_lkp/lkp_bancos.view.lkml"
include: "/views/views_lkp/lkp_sucursales_cuenta.view.lkml"


explore: fct_transacciones_cv_billetes {
  label: "Servicios | Compra Venta Billetes Mensual"
  conditionally_filter: {
    filters: [fct_transacciones_cv_billetes.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_transacciones_cv_billetes.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
    }
  join: lkp_especies {
    type: inner
    sql_on: ${fct_transacciones_cv_billetes.especie_key} = ${lkp_especies.especie_key}  ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_transacciones_cv_billetes.banco_key} =  ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_transacciones_cv_billetes.cliente_key} = ${lkp_clientes_completa.cliente_key}  ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_transacciones_cv_billetes.sucursal_cuenta_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key}  ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key}  ;;
    relationship: many_to_one
  }


}
