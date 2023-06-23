include: "/views/views_fct/fct_situacion_diaria_cajas_seguridad.view.lkml"
include: "/views/views_lkp/lkp_fechas.view.lkml"
include: "/views/views_lkp/lkp_cajas_seguridad.view.lkml"
include: "/views/views_lkp/lkp_estados_cajas_seguridad.view.lkml"
include: "/views/views_lkp/lkp_bancos.view.lkml"
include: "/views/views_lkp/lkp_sucursales_cuenta.view.lkml"
include: "/views/views_lkp/lkp_productos.view.lkml"
include: "/views/views_lkp/lkp_cuentas.view.lkml"

explore: fct_situacion_diaria_cajas_seguridad {
  label: "Servicios | Cajas de Seguridad Diaria"

  conditionally_filter: {
    filters: [fct_situacion_diaria_cajas_seguridad.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_situacion_diaria_cajas_seguridad.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_cajas_seguridad {
    type: inner
    sql_on: ${fct_situacion_diaria_cajas_seguridad.caja_seguridad_key} = ${lkp_cajas_seguridad.caja_seguridad_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_cajas_seguridad {
    type: inner
    sql_on: ${fct_situacion_diaria_cajas_seguridad.estado_caja_seguridad_key} = ${lkp_estados_cajas_seguridad.estado_caja_seguridad_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_situacion_diaria_cajas_seguridad.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_situacion_diaria_cajas_seguridad.sucursal_cuenta_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: inner
    sql_on: ${fct_situacion_diaria_cajas_seguridad.producto_key} = ${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas {
    type: inner
    sql_on: ${fct_situacion_diaria_cajas_seguridad.cuenta_key} = ${lkp_cuentas.cuenta_key} ;;
    relationship: many_to_one
  }

}
