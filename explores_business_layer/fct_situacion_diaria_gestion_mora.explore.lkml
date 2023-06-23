include: "/views/views_fct/fct_situacion_diaria_gestion_mora.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_situacion_diaria_gestion_mora {
  label: "Riesgos | Gestion Mora Diaria"
  conditionally_filter: {
    filters: [fct_situacion_diaria_gestion_mora.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_situacion_diaria_gestion_mora.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  # join: lkp_tramos_mora {
  #   type: inner
  #   sql_on: fct_situacion_diaria_gestion_mora = lkp_tramos_mora ;;
  #   relationship: many_to_one
  # }
  join: lkp_estados_gestion_mora {
    type: inner
    sql_on: ${fct_situacion_diaria_gestion_mora.estado_gestion_mora_key} = ${lkp_estados_gestion_mora.estado_gestion_mora_key} ;;
    relationship: many_to_one
  }
  # join: lkp_agencias_gestion_mora {
  #   type: inner
  #   sql_on: fct_situacion_diaria_gestion_mora = lkp_agencias_gestion_mora ;;
  #   relationship: many_to_one
  # }
  join: lkp_cuentas_tc {
    type: inner
    sql_on: ${fct_situacion_diaria_gestion_mora.cuenta_tc_key} = ${lkp_cuentas_tc.cuenta_tc_key}   ;;
    relationship: many_to_one
  }
  join: lkp_valores {
    type: inner
    sql_on: ${fct_situacion_diaria_gestion_mora.valor_key} = ${lkp_valores.valor_key} ;;
    relationship: many_to_one
  }
  join: lkp_residencias {
    type: inner
    sql_on: ${fct_situacion_diaria_gestion_mora.residencia_key} = ${lkp_residencias.residencia_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_situacion_diaria_gestion_mora.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_sectores {
    type: inner
    sql_on: ${fct_situacion_diaria_gestion_mora.sector_key} = ${lkp_sectores.sector_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_situacion_diaria_gestion_mora.sucursal_cuenta_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_situacion_tributaria {
    type: inner
    sql_on: ${fct_situacion_diaria_gestion_mora.situacion_tributaria_key} = ${lkp_situacion_tributaria.situacion_tributaria_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancas {
    type: inner
    sql_on: ${fct_situacion_diaria_gestion_mora.banca_key} = ${lkp_bancas.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_especies {
    type: inner
    sql_on: ${fct_situacion_diaria_gestion_mora.especie_key} = ${lkp_especies.especie_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: inner
    sql_on: ${fct_situacion_diaria_gestion_mora.producto_key} = ${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_situacion_diaria_gestion_mora.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas {
    type: inner
    sql_on: ${fct_situacion_diaria_gestion_mora.cuenta_key} = ${lkp_cuentas.cuenta_key} ;;
    relationship: many_to_one
  }
  # join: lkp_cartera_gestion_mora {
  #   type: inner
  #   sql_on: fct_situacion_diaria_gestion_mora = lkp_cartera_gestion_mora ;;
  #   relationship: many_to_one
  # }
  join: lkp_escenarios_gestion_mora {
    type: inner
    sql_on: ${fct_situacion_diaria_gestion_mora.escenario_key} = ${lkp_escenarios_gestion_mora.escenario_gestion_mora_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_sucursales_radicacion.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
}
