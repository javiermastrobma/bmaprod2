include: "/views/views_fct/fct_crm_detalles_atencion_consultas.view.lkml"
include: "/views/views_lkp/lkp_fechas.view.lkml"
include: "/views/views_lkp/lkp_crm_tipologias_atenciones.view.lkml"
include: "/views/views_lkp/lkp_bancos.view.lkml"
include: "/views/views_lkp/lkp_crm_contactos.view.lkml"

explore: fct_crm_detalles_atencion_consultas {
  label: "Clientes | CRM Detalle Atencion Consultas Semanal"
  conditionally_filter: {
    filters: [fct_crm_detalles_atencion_consultas.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_crm_detalles_atencion_consultas.fecha_alta_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_crm_tipologias_atenciones {
    type: inner
    sql_on: ${fct_crm_detalles_atencion_consultas.crm_tipologia_atencion_key} = ${lkp_crm_tipologias_atenciones.crm_tipologia_atencion_key} ;;
    relationship: many_to_one
  }

  #join: lkp_crm_motivos_consulta {}

  join: lkp_bancos {
    type: inner
    sql_on: ${fct_crm_detalles_atencion_consultas.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_crm_contactos {
    type: inner
    sql_on: ${fct_crm_detalles_atencion_consultas.crm_contacto_key} = ${lkp_crm_contactos.crm_contacto_key} ;;
    relationship: many_to_one
  }
}
