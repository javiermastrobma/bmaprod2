include: "/views/views_fct/fct_saldos_contables.view.lkml"
include: "/views/views_lkp/lkp_plan_cuentas.view.lkml"
include: "/views/views_lkp/lkp_fechas.view.lkml"
include: "/views/views_lkp/lkp_bancos.view.lkml"
include: "/views/views_lkp/lkp_sucursales_cuenta.view.lkml"
include: "/views/views_lkp/lkp_especies.view.lkml"

explore: fct_saldos_contables {
  label: "Contabilidad | Saldos Diarios"
  description: "Detalle de cuentas contables con su saldo diario en moneda nacional y moneda de origen."
  conditionally_filter: {
    filters: [fct_saldos_contables.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_plan_cuentas {
    type: inner
    sql_on:${fct_saldos_contables.plan_cuentas_key} =  ${lkp_plan_cuentas.plan_cuentas_key}  ;;
    relationship: many_to_one
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_saldos_contables.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type:  inner
    sql_on: ${fct_saldos_contables.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_saldos_contables.sucursal_cuenta_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_especies {
    type: inner
    sql_on: ${fct_saldos_contables.especie_key} = ${lkp_especies.especie_key} ;;
    relationship: many_to_one
  }
  }
