include: "/views/views_fct/fct_transacciones.view.lkml"
include: "/views/views_lkp/*.view.lkml"


explore: fct_transacciones {
  label: "Pasivas | Transacciones Diarias"
  description: "Detalle de todas las transacciones monetarias en caja de ahorro y cuenta corriente."
  fields: [ALL_FIELDS*, fct_transacciones.filtro_flag_reversa, fct_transacciones.causal_tipo_transferencia]
  conditionally_filter: {
    filters: [fct_transacciones.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }

  join: lkp_causales {
    type: inner
    sql_on: ${fct_transacciones.causal_key} = ${lkp_causales.causal_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas {
    type: inner
    sql_on: ${fct_transacciones.cuenta_key} = ${lkp_cuentas.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_tipos_transferencia {
    type: inner
    sql_on: ${fct_transacciones.tipo_transferencia_key} = ${lkp_tipos_transferencia.tipo_transferencia_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_transacciones.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_sectores {
    type: inner
    sql_on: ${fct_transacciones.sector_key} = ${lkp_sectores.sector_key} ;;
    relationship: many_to_one
  }
  join: lkp_residencias {
    type: inner
    sql_on: ${fct_transacciones.residencia_key} = ${lkp_residencias.residencia_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: inner
    sql_on: ${fct_transacciones.producto_key} = ${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_transacciones.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_horas {
    type: inner
    sql_on: ${fct_transacciones.hora_transaccion_key} = ${lkp_horas.hora_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${lkp_cuentas.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_transacciones.sucursal_key} ${lkp_sucursales_cuenta.sucursal_cuenta_key}  ;;
    relationship: many_to_one
  }
  join: lkp_categorias_cuenta {
    type: inner
    sql_on: ${fct_transacciones.categoria_cuenta_key} = ${lkp_categorias_cuenta.categoria_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_origen {
    type: inner
    sql_on: ${fct_transacciones.sucursal_origen_key} = ${lkp_sucursales_origen.sucursal_origen_key} ;;
    relationship: many_to_one
  }
  # join: lkp_convenios {
  #   type: inner
  #   sql_on: ${fct_transacciones.convenio_key} = ${lkp_convenios.convenio_key} ;;
  #   relationship: many_to_one
  # }
  # join: lkp_canales {
  #   type: inner
  #   sql_on: ${fct_transacciones.canal_key} = ${lkp_canales.canal_key} ;;
  #   relationship: many_to_one
  # }
  join: lkp_especies {
    type: inner
    sql_on: ${fct_transacciones.especie_key} = ${lkp_especies.especie_key} ;;
    relationship: many_to_one
  }
}
