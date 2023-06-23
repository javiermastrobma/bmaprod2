include: "/views/views_fct/fct_deuda_publicada.view.lkml"
include: "/views/views_lkp/lkp_fechas.view.lkml"
include: "/views/views_lkp/lkp_clientes_completa.view.lkml"
include: "/views/views_lkp/lkp_bancos.view.lkml"
include: "/views/views_lkp/lkp_convenios.view.lkml"
include: "/views/views_lkp/lkp_especies.view.lkml"

explore: fct_deuda_publicada {
  label: "Convenios | Recaudaciones Deuda Publicada"
  conditionally_filter: {
    filters: [fct_deuda_publicada.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_deuda_publicada.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
}
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_deuda_publicada.cliente_deudor_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa_convenio {
    from: lkp_clientes_completa_convenio_ps
    type: inner
    sql_on: ${fct_deuda_publicada.cliente_convenio_key} = ${lkp_clientes_completa_convenio.cliente_key} ;;
    relationship: many_to_one
  }
#   join: lkp_prospectos {
#     type: inner
#     sql_on:  ;;
#   relationship: many_to_one
# }
#   join: lkp_estados_deuda_publicada {
#     type: inner
#     sql_on:  ;;
#   relationship: many_to_one
# }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_deuda_publicada.banco_key} = ${lkp_bancos.banco_key} ;;
  relationship: many_to_one
}
  join: lkp_convenios {
    type: inner
    sql_on: ${fct_deuda_publicada.convenio_key} = ${lkp_convenios.convenio_key} ;;
    relationship: many_to_one
}
  join: lkp_especies {
    type: inner
    sql_on: ${fct_deuda_publicada.especie_key}  = ${lkp_especies.especie_key};;
    relationship: many_to_one
}
}
