include: "/views/views_fct/fct_transacciones_leasing.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_transacciones_leasing {
  label: "Activas | Transacciones Leasing Diaria"
  conditionally_filter: {
    filters: [fct_transacciones_leasing.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_transacciones_leasing.fecha_key} = ${lkp_fechas.fecha_key}  ;;
    relationship: many_to_one
  }
  join: lkp_contratos_leasing {
    type: inner
    sql_on: ${fct_transacciones_leasing.contrato_leasing_key} = ${lkp_contratos_leasing.contrato_leasing_key}  ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_transacciones_leasing.banco_key} = ${lkp_bancos.banco_key}  ;;
    relationship: many_to_one
  }
  join: lkp_especies {
    type: inner
    sql_on: ${fct_transacciones_leasing.especie_key} = ${lkp_especies.especie_key}  ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: inner
    sql_on: ${fct_transacciones_leasing.producto_key} =  ${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_captacion {
    type: inner
    sql_on: ${fct_transacciones_leasing.sucursal_captacion_key} = ${lkp_sucursales_captacion.sucursal_captacion_key}  ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_transacciones_leasing.sucursal_cuenta_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key}  ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key}  ;;
    relationship: many_to_one
  }
  join: lkp_cuentas {
    type: inner
    sql_on: ${fct_transacciones_leasing.cuenta_key} = ${lkp_cuentas.cuenta_key}  ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_transacciones_leasing.cliente_key} =  ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  # join: lkp_tipos_transaccion_leasing {
  #   type: inner
  #   sql_on: fct_transacciones_leasing = lkp_tipos_transaccion_leasing  ;;
  #   relationship: many_to_one
  # }
  join: lkp_tipos_leasing {
    type: inner
    sql_on: ${fct_transacciones_leasing.tipo_leasing_key} = ${lkp_tipos_leasing.tipo_leasing_key}  ;;
    relationship: many_to_one
  }
  join: lkp_estados_leasing {
    type: inner
    sql_on: ${fct_transacciones_leasing.estado_leasing_key} = ${lkp_estados_leasing.estado_leasing_key}  ;;
    relationship: many_to_one
  }


}
