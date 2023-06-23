include: "/views/views_fct/fct_crm_relacion_atencion_actividad.view.lkml"
include: "/views/views_lkp/lkp_fechas.view.lkml"
include: "/views/views_lkp/lkp_crm_tipologias_atenciones.view.lkml"
include: "/views/views_lkp/lkp_bancos.view.lkml"
include: "/views/views_lkp/lkp_crm_contactos.view.lkml"

explore: fct_crm_relacion_atencion_actividad {
  label: "Clientes | CRM Relacion Atención Actividad Diaria"
  conditionally_filter: {
    filters: [fct_crm_relacion_atencion_actividad.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_crm_relacion_atencion_actividad.fecha_alta_key} = ${lkp_fechas.fecha_key}   ;;
    relationship: many_to_one
  }
  join: lkp_crm_tipologias_atenciones {
    type: inner
    sql_on: ${fct_crm_relacion_atencion_actividad.crm_tipologia_atencion_key} = ${lkp_crm_tipologias_atenciones.crm_tipologia_atencion_key}   ;;
    relationship: many_to_one
  }

  #join: lkp_crm_tipologias_actividades {}

  join: lkp_bancos {
    type: inner
    sql_on: ${fct_crm_relacion_atencion_actividad.banco_key} = ${lkp_bancos.banco_key}   ;;
    relationship: many_to_one
  }
  join: lkp_crm_contactos {
    type: inner
    sql_on: ${fct_crm_relacion_atencion_actividad.crm_contacto_key} = ${lkp_crm_contactos.crm_contacto_key}   ;;
    relationship: many_to_one
  }
  }
