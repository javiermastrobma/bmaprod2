include: "/views/views_fct/fct_situacion_diaria_convenios_cuenta.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_situacion_diaria_convenios_cuenta {
  label: "Convenios | Situacion Convenios Cuenta Diaria"
  conditionally_filter: {
    filters: [fct_situacion_diaria_convenios_cuenta.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_situacion_diaria_convenios_cuenta.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_convenios {
    type: inner
    sql_on: ${fct_situacion_diaria_convenios_cuenta.convenio_key} = ${lkp_convenios.convenio_key} ;;
    relationship: many_to_one
  }
  join: lkp_grupos_convenio {
    type: inner
    sql_on: ${lkp_convenios.grupo_convenio_key} = ${lkp_grupos_convenio.grupo_convenio_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_cuenta {
    type: inner
    sql_on: ${fct_situacion_diaria_convenios_cuenta.estado_cuenta_key} = ${lkp_estados_cuenta.estado_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_situacion_diaria_convenios_cuenta.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_situacion_diaria_convenios_cuenta.sucursal_cuenta_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas {
    type: inner
    sql_on: ${fct_situacion_diaria_convenios_cuenta.cuenta_key} = ${lkp_cuentas.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_situacion_diaria_convenios_cuenta.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: inner
    sql_on: ${fct_situacion_diaria_convenios_cuenta.producto_key} = ${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_convenios_cuenta {
    type: inner
    sql_on: ${fct_situacion_diaria_convenios_cuenta.estado_convenio_cuenta_key} = ${lkp_estados_convenios_cuenta.estado_convenio_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_convenios_cuenta {
    type: inner
    sql_on: ${fct_situacion_diaria_convenios_cuenta.convenio_cuenta_key} = ${lkp_convenios_cuenta.convenio_cuenta_key} ;;
    relationship: many_to_one
  }
}
