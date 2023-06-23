include: "/views/views_fct/fct_situaciones_personas.view.lkml"
include: "/views/views_lkp/lkp_fechas.view.lkml"
include: "/views/views_lkp/lkp_clientes_completa.view.lkml"
include: "/views/views_lkp/lkp_bancos.view.lkml"
include: "/views/views_lkp/lkp_bancas.view.lkml"
include: "/views/views_lkp/lkp_clasificacion_especial.view.lkml"
include: "/views/views_lkp/lkp_oficiales_cuenta.view.lkml"
include: "/views/views_lkp/lkp_situaciones_deudor_bcra.view.lkml"

explore: fct_situaciones_personas {
  label: "Clientes | Situaciones Personas Mensual"
  conditionally_filter: {
    filters: [fct_situaciones_personas.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_situaciones_personas.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_situaciones_personas.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_situaciones_personas.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancas {
    type: inner
    sql_on: ${fct_situaciones_personas.banca_key} = ${lkp_bancas.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_clasificacion_especial {
    type: inner
    sql_on: ${fct_situaciones_personas.clasificacion_especial_key} = ${lkp_clasificacion_especial.clasificacion_especial_key} ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_cuenta {
    type: inner
    sql_on: ${fct_situaciones_personas.oficial_cuenta_key} = ${lkp_oficiales_cuenta.oficial_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_situaciones_deudor_bcra {
    type: inner
    sql_on: ${fct_situaciones_personas.situacion_deudor_bcra_key} = ${lkp_situaciones_deudor_bcra.situacion_deudor_bcra_key} ;;
    relationship: many_to_one
  }
  #join: lkp_canasta_productos {}
}
