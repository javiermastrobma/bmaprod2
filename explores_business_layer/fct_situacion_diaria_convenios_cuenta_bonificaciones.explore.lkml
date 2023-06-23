include: "/views/views_fct/fct_situacion_diaria_convenios_cuenta_bonificaciones.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_situacion_diaria_convenios_cuenta_bonificaciones {
  label: "Pasivas | Bonificaciones Convenios"
  conditionally_filter: {
    filters: [fct_situacion_diaria_convenios_cuenta_bonificaciones.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  # join: lkp_sucursales  {
  #   type: inner
  #   sql_on: fct_situacion_diaria_convenios_cuenta_bonificaciones =   ;;
  #   relationship: many_to_one
  # }
  join: lkp_cuentas  {
    type: inner
    sql_on: ${fct_situacion_diaria_convenios_cuenta_bonificaciones.cuenta_key} =  ${lkp_cuentas.cuenta_key}  ;;
    relationship: many_to_one
  }
  join: lkp_paquetes {
    type: inner
    sql_on: ${fct_situacion_diaria_convenios_cuenta_bonificaciones.paquete_key} = ${lkp_paquetes.paquete_key}  ;;
    relationship: many_to_one
  }
  join: lkp_convenios_cuenta_bonificaciones  {
    type: inner
    sql_on: ${fct_situacion_diaria_convenios_cuenta_bonificaciones.convenio_cuenta_key} = ${lkp_convenios_cuenta_bonificaciones.convenio_cuenta_key}   ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa  {
    type: inner
    sql_on: ${fct_situacion_diaria_convenios_cuenta_bonificaciones.cliente_key} = ${lkp_clientes_completa.cliente_key}   ;;
    relationship: many_to_one
  }
  join: lkp_rubros_bonificacion  {
    type: inner
    sql_on: ${fct_situacion_diaria_convenios_cuenta_bonificaciones.rubro_bonificacion_key} = ${lkp_rubros_bonificacion.rubros_bonificacion_key}  ;;
    relationship: many_to_one
  }
  join: lkp_productos  {
    type: inner
    sql_on: ${fct_situacion_diaria_convenios_cuenta_bonificaciones.producto_key} =  ${lkp_productos.producto_key}  ;;
    relationship: many_to_one
  }
  join: lkp_categorias_cuenta  {
    type: inner
    sql_on: ${fct_situacion_diaria_convenios_cuenta_bonificaciones.categoria_convenio_cuenta_key} = ${lkp_categorias_cuenta.categoria_cuenta_key}   ;;
    relationship: many_to_one
  }
  join: lkp_bancos  {
    type: inner
    sql_on: ${fct_situacion_diaria_convenios_cuenta_bonificaciones.banco_key} = ${lkp_bancos.banco_key}   ;;
    relationship: many_to_one
  }
  join: lkp_estados_paquetes  {
    type: inner
    sql_on: ${fct_situacion_diaria_convenios_cuenta_bonificaciones.estado_paquete_key} = ${lkp_estados_paquetes.estado_paquete_key}   ;;
    relationship: many_to_one
  }
  join: lkp_estados_convenios_cuenta  {
    type: inner
    sql_on: ${fct_situacion_diaria_convenios_cuenta_bonificaciones.estado_convenio_cuenta_key} = ${lkp_estados_convenios_cuenta.estado_convenio_cuenta_key}   ;;
    relationship: many_to_one
  }
  join: lkp_convenios  {
    type: inner
    sql_on: ${fct_situacion_diaria_convenios_cuenta_bonificaciones.convenio_key} = ${lkp_convenios.convenio_key}   ;;
    relationship: many_to_one
  }
  join: lkp_fechas  {
    type: inner
    sql_on: ${fct_situacion_diaria_convenios_cuenta_bonificaciones.fecha_key} = ${lkp_fechas.fecha_key}   ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_situacion_diaria_convenios_cuenta_bonificaciones.sucursal_cuenta_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
}
