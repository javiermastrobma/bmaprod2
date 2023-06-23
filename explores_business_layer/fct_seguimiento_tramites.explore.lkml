include: "/views/views_fct/fct_seguimiento_tramites.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_seguimiento_tramites {
  label: "Clientes | Seguimiento Trámites Diaria"
  conditionally_filter: {
    filters: [fct_seguimiento_tramites.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_seguimiento_tramites.fecha_alta_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos_asociados_tramites {
    type: inner
    sql_on: ${fct_seguimiento_tramites.tramite_key} = ${lkp_productos_asociados_tramites.tramite_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas {
    type: inner
    sql_on: ${lkp_productos_asociados_tramites.cuenta_key} = ${lkp_cuentas.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: inner
    sql_on: ${lkp_productos_asociados_tramites.producto_key} = ${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
  #join: lkp_clasificacion_clientes_tramite {}
  join: lkp_estados_tramite {
    type: inner
    sql_on: ${fct_seguimiento_tramites.estado_tramite_key} = ${lkp_estados_tramite.estado_tramite_key} ;;
    relationship: many_to_one
  }
  #join: lkp_funciones_tramite {}
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_seguimiento_tramites.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_campanias {
    type: inner
    sql_on: ${fct_seguimiento_tramites.campania_key} = ${lkp_campanias.campania_key} ;;
    relationship: many_to_one
  }
  join: lkp_motivos_rechazo {
    type: inner
    sql_on: ${fct_seguimiento_tramites.motivo_rechazo_key} = ${lkp_motivos_rechazo.motivo_rechazo_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancas {
    type: inner
    sql_on: ${fct_seguimiento_tramites.banca_key} = ${lkp_bancas.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_ingreso {
    type: inner
    sql_on: ${fct_seguimiento_tramites.sucursal_ingreso_key} = ${lkp_sucursales_ingreso.sucursal_ingreso_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_venta {
    type: inner
    sql_on: ${fct_seguimiento_tramites.sucursal_venta_key} = ${lkp_sucursales_venta.sucursal_venta_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_seguimiento_tramites.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_vendedores {
    type: inner
    sql_on: ${fct_seguimiento_tramites.vendedor_key} = ${lkp_vendedores.vendedor_key} ;;
    relationship: many_to_one
  }
  join: lkp_canales_venta {
    type: inner
    sql_on: ${fct_seguimiento_tramites.canal_venta_key} = ${lkp_canales_venta.canal_venta_key} ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_venta {
    type: inner
    sql_on: ${fct_seguimiento_tramites.oficial_venta_key} = ${lkp_oficiales_venta.oficial_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_ingreso {
    type: inner
    sql_on: ${fct_seguimiento_tramites.oficial_ingreso_key} = ${lkp_oficiales_ingreso.oficial_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_aprobacion_nivel_1 {
    type: inner
    sql_on: ${fct_seguimiento_tramites.oficial_aprobacion_nivel1_key} = ${lkp_oficiales_aprobacion_nivel_1.oficial_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_aprobacion_nivel_2 {
    type: inner
    sql_on: ${fct_seguimiento_tramites.oficial_aprobacion_nivel2_key} = ${lkp_oficiales_aprobacion_nivel_2.oficial_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_aprobacion_nivel_3 {
    type: inner
    sql_on: ${fct_seguimiento_tramites.oficial_aprobacion_nivel3_key} = ${lkp_oficiales_aprobacion_nivel_3.oficial_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
}
