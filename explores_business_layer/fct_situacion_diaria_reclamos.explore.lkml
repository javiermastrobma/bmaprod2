include: "/views/views_fct/fct_situacion_diaria_reclamos.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_situacion_diaria_reclamos {
  label: "Reclamos | Situación Diaria"
  conditionally_filter: {
    filters: [fct_situacion_diaria_reclamos.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_reclamos {
    type: inner
    sql_on: ${fct_situacion_diaria_reclamos.reclamo_key} = ${lkp_reclamos.reclamo_key} ;;
    relationship: many_to_one
  }
  join: lkp_tipologias_reclamos {
    type: inner
    sql_on: ${fct_situacion_diaria_reclamos.tipologia_reclamo_key} = ${lkp_tipologias_reclamos.tipologia_reclamo_key} ;;
    relationship: many_to_one
  }
  join: lkp_actividades_reclamos {
    type: inner
    sql_on: ${fct_situacion_diaria_reclamos.actividad_actual_reclamo_key} = ${lkp_actividades_reclamos.actividad_reclamo_key} ;;
    relationship: many_to_one
  }
  join: lkp_analistas_reclamos {
    type: inner
    sql_on: ${fct_situacion_diaria_reclamos.analista_reclamo_asignado_key} = ${lkp_analistas_reclamos.analista_reclamo_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_reclamos {
    type: inner
    sql_on: ${fct_situacion_diaria_reclamos.estado_reclamo_key} = ${lkp_estados_reclamos.estado_reclamo_key} ;;
    relationship: many_to_one
  }
  join: lkp_motivos_cierre_reclamos {
    type: inner
    sql_on: ${fct_situacion_diaria_reclamos.motivo_cierre_reclamo_key} = ${lkp_motivos_cierre_reclamos.motivo_cierre_reclamo_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos_genericos_reclamos {
    type: inner
    sql_on: ${fct_situacion_diaria_reclamos.producto_generico_key} = ${lkp_productos_genericos_reclamos.producto_generico_key} ;;
    relationship: many_to_one
  }
  join: lkp_sectores_reclamos_ingresados {
    type: inner
    sql_on: ${fct_situacion_diaria_reclamos.sector_reclamo_ingresado_key} = ${lkp_sectores_reclamos_ingresados.sector_reclamo_ingresado_key} ;;
    relationship: many_to_one
  }
  join: lkp_sectores_reclamos_asignados {
    type: inner
    sql_on: ${fct_situacion_diaria_reclamos.sector_reclamo_asignado_key} = ${lkp_sectores_reclamos_asignados.sector_reclamo_asignado_key} ;;
    relationship: many_to_one
  }
  join: lkp_sectores_reclamos_derivados {
    type: inner
    sql_on: ${fct_situacion_diaria_reclamos.sector_reclamo_derivado_key} = ${lkp_sectores_reclamos_derivados.sector_reclamo_derivado_key} ;;
    relationship: many_to_one
  }
  join: lkp_sectores_reclamos_cierre {
    type: inner
    sql_on: ${fct_situacion_diaria_reclamos.sector_reclamo_cierre_key} = ${lkp_sectores_reclamos_cierre.sector_reclamo_cierre_key} ;;
    relationship: many_to_one
  }
  join: lkp_tipos_fraude_reclamos {
    type: inner
    sql_on: ${fct_situacion_diaria_reclamos.tipo_fraude_reclamo_key} = ${lkp_tipos_fraude_reclamos.tipo_fraude_reclamo_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_fraude {
    type: inner
    sql_on: ${fct_situacion_diaria_reclamos.estado_fraude_key} = ${lkp_estados_fraude.estado_fraude_key} ;;
    relationship: many_to_one
  }
  join: lkp_tipos_resolucion_fraude {
    type: inner
    sql_on: ${fct_situacion_diaria_reclamos.tipo_resolucion_fraude_key} = ${lkp_tipos_resolucion_fraude.tipo_resolucion_fraude_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_situacion_diaria_reclamos.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas {
    type: inner
    sql_on: ${fct_situacion_diaria_reclamos.cuenta_key} = ${lkp_cuentas.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas_tc {
    type: inner
    sql_on: ${fct_situacion_diaria_reclamos.cuenta_tc_key} = ${lkp_cuentas_tc.cuenta_tc_key} ;;
    relationship: many_to_one
  }
  join: lkp_convenios {
    type: inner
    sql_on: ${fct_situacion_diaria_reclamos.convenio_key} = ${lkp_convenios.convenio_key} ;;
    relationship: many_to_one
  }
  join: lkp_contratos_leasing {
    type: inner
    sql_on: ${fct_situacion_diaria_reclamos.contrato_leasing_key} = ${lkp_contratos_leasing.contrato_leasing_key} ;;
    relationship: many_to_one
  }
  join: lkp_polizas {
    type: inner
    sql_on: ${fct_situacion_diaria_reclamos.poliza_key} = ${lkp_polizas.poliza_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_situacion_diaria_reclamos.sucursal_cuenta_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancas {
    type: inner
    sql_on: ${fct_situacion_diaria_reclamos.banca_key} = ${lkp_bancas.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_situacion_diaria_reclamos.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_situacion_diaria_reclamos.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
}
