include: "/views/views_fct/fct_saldos_deudor_fv.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_saldos_deudor_fv {
  label: "Activas | Saldos Deudor Cuenta Corriente Diarios"
  description: "Detalle de saldos deudores diarios de las Cuentas Corrientes incluyendo ajustes fecha valor."
  conditionally_filter: {
    filters: [fct_saldos_deudor_fv.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_saldos_deudor_fv.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas {
    type: inner
    sql_on: ${fct_saldos_deudor_fv.cuenta_key} = ${lkp_cuentas.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_cuenta {
    type: inner
    sql_on: ${fct_saldos_deudor_fv.oficial_cuenta_key} = ${lkp_oficiales_cuenta.oficial_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_saldos_deudor_fv.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: inner
    sql_on: ${fct_saldos_deudor_fv.producto_key} = ${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_saldos_deudor_fv.sucursal_cuenta_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_saldos_deudor_fv.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_sectores {
    type: inner
    sql_on: ${fct_saldos_deudor_fv.sector_key} = ${lkp_sectores.sector_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
}
