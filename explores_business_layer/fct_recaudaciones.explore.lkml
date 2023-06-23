include: "/views/views_fct/fct_recaudaciones.view"
include: "/views/views_lkp/*.view"

explore: fct_recaudaciones {
  label: "Convenios | Recaudaciones Diaria"
  conditionally_filter: {
    filters: [fct_recaudaciones.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_recaudaciones.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
#   join: lkp_prospectos {
#     type: inner
#     sql_on:  ;;
#   relationship: many_to_one
# }
  join: lkp_grupos_convenio {
    type: inner
    sql_on: ${fct_recaudaciones.grupo_convenio_key} = ${lkp_convenios.grupo_convenio_key} ;;
    relationship: many_to_one
  }
  join: lkp_convenios {
    type: inner
    sql_on: ${fct_recaudaciones.convenio_key} = ${lkp_convenios.convenio_key} ;;
    relationship: many_to_one
  }
  # join: lkp_canales_cobro_recaudacion {
  #   type: inner
  #   sql_on: fct_recaudaciones ;;
  #   relationship: many_to_one
  # }
  # join: lkp_modalidades_recaudacion {
  #   type: inner
  #   sql_on: fct_recaudaciones ;;
  #   relationship: many_to_one
  # }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_recaudaciones.sucursal_pago_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_recaudaciones.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_formas_pago_recaudacion {
    type: inner
    sql_on: ${fct_recaudaciones.forma_pago_recaudacion_key} = ${lkp_formas_pago_recaudacion.forma_pago_recaudacion_key} ;;
    relationship: many_to_one
  }
  join: lkp_entidades_pagadoras {
    type: inner
    sql_on: ${fct_recaudaciones.entidad_pagadora_key} = ${lkp_entidades_pagadoras.entidad_pagadora_key};;
    relationship: many_to_one
  }
  join: lkp_especies {
    type: inner
    sql_on: ${fct_recaudaciones.especie_key} = ${lkp_especies.especie_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_recaudaciones.cliente_deudor_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa_convenio_ps {
    type: inner
    sql_on: ${fct_recaudaciones.cliente_convenio_key} = ${lkp_clientes_completa_convenio_ps.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
}
