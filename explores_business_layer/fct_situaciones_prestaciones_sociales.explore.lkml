include: "/views/views_fct/fct_situaciones_prestaciones_sociales.view"
include: "/views/views_lkp/*.view"

explore: fct_situaciones_prestaciones_sociales {
  label: "Pasivas | Prestaciones Sociales Mensual"
  conditionally_filter: {
    filters: [fct_situaciones_prestaciones_sociales.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_situaciones_prestaciones_sociales.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_prestaciones_sociales {
    type: inner
    sql_on: ${fct_situaciones_prestaciones_sociales.cuenta_key} = ${lkp_prestaciones_sociales.cuenta_key};;
    relationship: many_to_one
  }
  join: lkp_entidades_prestadoras {
    type: inner
    sql_on: ${fct_situaciones_prestaciones_sociales.entidad_prestadora_key} = ${lkp_entidades_prestadoras.entidad_prestadora_key} ;;
    relationship: many_to_one
  }
  #join: lkp_otros_atributos_prestaciones {}
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_situaciones_prestaciones_sociales.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancas {
    type: inner
    sql_on: ${fct_situaciones_prestaciones_sociales.banca_key} = ${lkp_bancas.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas {
    type: inner
    sql_on: ${fct_situaciones_prestaciones_sociales.cuenta_key} = ${lkp_cuentas.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: inner
    sql_on: ${fct_situaciones_prestaciones_sociales.producto_key} = ${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_pago {
    type: inner
    sql_on: ${fct_situaciones_prestaciones_sociales.sucursal_pago_key} = ${lkp_sucursales_pago.sucursal_pago_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_beneficio {
    type: inner
    sql_on: ${fct_situaciones_prestaciones_sociales.sucursal_beneficio_key} = ${lkp_sucursales_beneficio.sucursal_beneficio_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_situaciones_prestaciones_sociales.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
}
