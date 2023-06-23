include: "/views/views_fct/fct_situacion_diaria_actividades_reclamos.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_situacion_diaria_actividades_reclamos {
  label: "Reclamos | Actividad Diaria"
  conditionally_filter: {
    filters: [fct_situacion_diaria_actividades_reclamos.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_reclamos {
    type: inner
    sql_on: ${fct_situacion_diaria_actividades_reclamos.actividad_reclamo_key} = ${lkp_reclamos.reclamo_key} ;;
    relationship: many_to_one
  }
  join: lkp_tipologias_reclamos {
    type: inner
    sql_on: ${fct_situacion_diaria_actividades_reclamos.tipologia_reclamo_key} = ${lkp_tipologias_reclamos.tipologia_reclamo_key} ;;
    relationship: many_to_one
  }
  join: lkp_actividades_reclamos {
    type: inner
    sql_on: ${fct_situacion_diaria_actividades_reclamos.actividad_reclamo_key} = ${lkp_actividades_reclamos.actividad_reclamo_key} ;;
    relationship: many_to_one
  }
  join: lkp_analistas_reclamos {
    type: inner
    sql_on: ${fct_situacion_diaria_actividades_reclamos.analista_reclamo_actividad_key} = ${lkp_analistas_reclamos.analista_reclamo_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_actividades {
    type: inner
    sql_on: ${fct_situacion_diaria_actividades_reclamos.estado_actividad_key} = ${lkp_estados_actividades.estado_actividad_key} ;;
    relationship: many_to_one
  }
  join: lkp_tipos_actividades {
    type: inner
    sql_on: ${fct_situacion_diaria_actividades_reclamos.tipo_actividad_key} = ${lkp_tipos_actividades.tipo_actividad_key} ;;
    relationship: many_to_one
  }
  join: lkp_sectores_reclamos {
    type: inner
    sql_on: ${fct_situacion_diaria_actividades_reclamos.sector_reclamo_actividad_key} = ${lkp_sectores_reclamos.sector_reclamo_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_situacion_diaria_actividades_reclamos.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancas {
    type: inner
    sql_on: ${fct_situacion_diaria_actividades_reclamos.banca_key} = ${lkp_bancas.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_situacion_diaria_actividades_reclamos.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_situacion_diaria_actividades_reclamos.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
}
