include: "/views/views_fct/fct_transacciones_branch.view.lkml"
include: "/views/views_lkp/*.view.lkml"


explore: fct_transacciones_branch {
  label: "Canales | Transacciones Branch"
  conditionally_filter: {
    filters: [fct_transacciones_branch.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_causales_branch {
    type: inner
    sql_on: ${fct_transacciones_branch.causal_branch_key} = ${lkp_causales_branch.causal_branch_key} ;;
    relationship: many_to_one
  }
  join: lkp_unidad_de_acceso {
    type: inner
    sql_on: ${fct_transacciones_branch.unidad_acceso_key} = ${lkp_unidad_de_acceso.unidad_acceso_key} ;;
    relationship: many_to_one
  }
  join: lkp_operadores_branch {
    type: inner
    sql_on: ${fct_transacciones_branch.operador_branch_key} = ${lkp_operadores_branch.operador_branch_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_transacciones_branch.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_transacciones_canales {
    type: inner
    sql_on: ${fct_transacciones_branch.transaccion_canal_key} = ${lkp_transacciones_canales.transaccion_canal_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_transacciones_branch.sucursal_canal_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_especies {
    type: inner
    sql_on: ${fct_transacciones_branch.especie_key} = ${lkp_especies.especie_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_transacciones_branch.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_personal {
    type: inner
    sql_on: ${lkp_operadores_branch.personal_key} = ${lkp_personal.personal_key} ;;
    relationship: many_to_one
  }
}
