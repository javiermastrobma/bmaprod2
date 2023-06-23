include: "/views/views_fct/fct_movimientos_titulos.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_movimientos_titulos {
  label: "Inversiones | Movimientos Títulos Diaria"

  conditionally_filter: {
    filters: [fct_movimientos_titulos.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_movimientos_titulos.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  # join: lkp_tipos_movimientos_titulos {
  #   type: inner
  #   sql_on: fct_movimientos_titulos =   ;;
  #   relationship: many_to_one
  # }
  join: lkp_cuentas {
    type: inner
    sql_on: ${fct_movimientos_titulos.cuenta_key} = ${lkp_cuentas.cuenta_key}  ;;
    relationship: many_to_one
  }
  join: lkp_plan_cuentas {
    type: inner
    sql_on: ${fct_movimientos_titulos.plan_cuentas_key} = ${lkp_plan_cuentas.plan_cuentas_key}  ;;
    relationship: many_to_one
  }
  join: lkp_especies {
    type: inner
    sql_on: ${fct_movimientos_titulos.especie_key} = ${lkp_especies.especie_key}  ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_movimientos_titulos.banco_key} = ${lkp_bancos.banco_key}  ;;
    relationship: many_to_one
  }
  join: lkp_bancas {
    type: inner
    sql_on: ${fct_movimientos_titulos.banca_key} = ${lkp_bancas.banca_key}  ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_movimientos_titulos.sucursal_cuenta_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key}  ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key}  ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_movimientos_titulos.cliente_key} = ${lkp_clientes_completa.cliente_key}  ;;
    relationship: many_to_one
  }
  join: lkp_tipos_operacion_titulos {
    type: inner
    sql_on: ${fct_movimientos_titulos.tipo_operacion_titulo_key} = ${lkp_tipos_operacion_titulos.tipo_operacion_titulos_key}  ;;
    relationship: many_to_one
  }
}
