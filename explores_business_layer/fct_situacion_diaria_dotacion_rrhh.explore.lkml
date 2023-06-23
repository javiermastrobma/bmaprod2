include: "/views/views_fct/fct_situacion_diaria_dotacion_rrhh.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_situacion_diaria_dotacion_rrhh {
  label: "RRHH | Situaciones Dotacion Diaria"
  conditionally_filter: {
    filters: [fct_situacion_diaria_dotacion_rrhh.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_situacion_diaria_dotacion_rrhh.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_dotacion_rrhh {
    type: inner
    sql_on: ${fct_situacion_diaria_dotacion_rrhh.dotacion_rrhh_key} = ${lkp_dotacion_rrhh.dotacion_rrhh_key}  ;;
    relationship: many_to_one
  }
  join: lkp_areas_destino {
    type: inner
    sql_on: ${fct_situacion_diaria_dotacion_rrhh.area_destino_key} = ${lkp_areas_destino.area_destino_key}  ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_situacion_diaria_dotacion_rrhh.banco_key} = ${lkp_bancos.banco_key}  ;;
    relationship: many_to_one
  }
  #join: lkp_afiliacion_sindical_rrhh {}
  #join: lkp_categorias_rrhh {}
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_situacion_diaria_dotacion_rrhh.sucursal_cuenta_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key}  ;;
    relationship: many_to_one
  }
  join: lkp_tipos_contrato_rrhh {
    type: inner
    sql_on: ${fct_situacion_diaria_dotacion_rrhh.tipo_contrato_rrhh_key} = ${lkp_tipos_contrato_rrhh.tipo_contrato_rrhh_key} ;;
    relationship: many_to_one
  }
  join: lkp_seccionales_gremiales_rrhh {
    type: inner
    sql_on: ${fct_situacion_diaria_dotacion_rrhh.seccional_gremial_rrhh_key} = ${lkp_seccionales_gremiales_rrhh.seccional_gremial_rrhh_key} ;;
    relationship: many_to_one
  }
  join: lkp_puestos_rrhh {
    type: inner
    sql_on: ${fct_situacion_diaria_dotacion_rrhh.puesto_rrhh_key} = ${lkp_puestos_rrhh.puesto_rrhh_key} ;;
    relationship: many_to_one
  }
  join: lkp_unidades_eo_rrhh {
    type: inner
    sql_on: ${fct_situacion_diaria_dotacion_rrhh.unidad_eo_rrhh_key} = ${lkp_unidades_eo_rrhh.unidad_eo_rrhh_key} ;;
    relationship: many_to_one
  }
  join: lkp_motivos_baja_rrhh {
    type: inner
    sql_on: ${lkp_dotacion_rrhh.motivo_baja_rrhh_key} = ${lkp_motivos_baja_rrhh.motivo_baja_rrhh_key} ;;
    relationship: many_to_one
  }
  #join: lkp_motivos_alta_rrhh {}
}
