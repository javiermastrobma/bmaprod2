include: "/views/views_fct/fct_rpc_clientes.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_rpc_clientes {
  label: "Riesgos | Responsabilidad Patrimonial Computable Mensual"

  conditionally_filter: {
    filters: [fct_rpc_clientes.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_oficiales_cuenta {
    type: inner
    sql_on: ${fct_rpc_clientes.oficial_cuenta_key} = ${lkp_oficiales_cuenta.oficial_cuenta_key}  ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_rpc_clientes.cliente_key} = ${lkp_clientes_completa.cliente_key}  ;;
    relationship: many_to_one
  }
  join: lkp_residencias {
    type: inner
    sql_on: ${fct_rpc_clientes.residencia_key} =  ${lkp_residencias.residencia_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_rpc_clientes.banco_key} = ${lkp_bancos.banco_key}  ;;
    relationship: many_to_one
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_rpc_clientes.fecha_key} = ${lkp_fechas.fecha_key}  ;;
    relationship: many_to_one
  }
  join: lkp_sectores {
    type: inner
    sql_on: ${fct_rpc_clientes.sector_key} = ${lkp_sectores.sector_key}  ;;
    relationship: many_to_one
  }
  join: lkp_situaciones_deudor_bcra {
    type: inner
    sql_on: ${fct_rpc_clientes.situacion_deudor_bcra_key} = ${lkp_situaciones_deudor_bcra.situacion_deudor_bcra_key}  ;;
    relationship: many_to_one
  }
  join: lkp_situaciones_deudor_banco {
    type: inner
    sql_on: ${fct_rpc_clientes.situacion_deudor_banco_key} = ${lkp_situaciones_deudor_banco.situacion_deudor_banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_actividades {
    type: inner
    sql_on: ${fct_rpc_clientes.actividad_key} = ${lkp_actividades.actividad_key}  ;;
    relationship: many_to_one
  }
  join: lkp_bancas {
    type: inner
    sql_on: ${fct_rpc_clientes.banca_key} = ${lkp_bancas.banca_key}  ;;
    relationship: many_to_one
  }

}
