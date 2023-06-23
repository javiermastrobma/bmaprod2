include: "/views/views_fct/fct_solicitudes_tc.view.lkml"
include: "/views/views_lkp/lkp_cuentas_tc.view.lkml"
include: "/views/views_lkp/lkp_bancos.view.lkml"
include: "/views/views_lkp/lkp_convenios.view.lkml"
include: "/views/views_lkp/lkp_clientes_completa.view.lkml"
include: "/views/views_lkp/lkp_marcas.view.lkml"
include: "/views/views_lkp/lkp_estados_solicitud_tc.view.lkml"
include: "/views/views_lkp/lkp_fechas.view.lkml"

explore: fct_solicitudes_tc {
  label: "Medios de Pago | Solicitud TC"
  conditionally_filter: {
    filters: [fct_solicitudes_tc.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_cuentas_tc {
    type: inner
    sql_on: ${fct_solicitudes_tc.cuenta_tc_key} = ${lkp_cuentas_tc.cuenta_tc_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_solicitudes_tc.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_convenios {
    type: inner
    sql_on: ${fct_solicitudes_tc.convenio_key} = ${lkp_convenios.convenio_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_solicitudes_tc.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_marcas {
    type: inner
    sql_on: ${fct_solicitudes_tc.marca_key} = ${lkp_marcas.marca_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_solicitud_tc {
    type: inner
    sql_on: ${fct_solicitudes_tc.estado_solicitud_key} = ${lkp_estados_solicitud_tc.estado_solicitud_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_solicitudes_tc.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
}
