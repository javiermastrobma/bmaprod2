include: "/views/views_fct/fct_crm_respuestas_campania.view.lkml"
include: "/views/views_lkp/lkp_fechas.view.lkml"
include: "/views/views_lkp/lkp_campanias.view.lkml"
include: "/views/views_lkp/lkp_oficinas_gestion_campania.view.lkml"
include: "/views/views_lkp/lkp_bancos.view.lkml"
include: "/views/views_lkp/lkp_resultados_campania.view.lkml"
include: "/views/views_lkp/lkp_tratamientos.view.lkml"
include: "/views/views_lkp/lkp_objetivos_campania.view.lkml"

explore: fct_crm_respuestas_campania {
  label: "Campañas | CRM Respuestas"
  conditionally_filter: {
    filters: [fct_crm_respuestas_campania.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }

  join: lkp_fechas {
    type: inner
    sql_on: ${fct_crm_respuestas_campania.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_campanias {
    type: inner
    sql_on: ${fct_crm_respuestas_campania.campania_key} = ${lkp_campanias.campania_key} ;;
    relationship: many_to_one
  }
  join: lkp_oficinas_gestion_campania {
    type: inner
    sql_on: ${fct_crm_respuestas_campania.oficina_generadora_key} = ${lkp_oficinas_gestion_campania.oficina_gestion_campania_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_crm_respuestas_campania.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_resultados_campania {
    type: inner
    sql_on: ${fct_crm_respuestas_campania.resultado_campania_key} = ${lkp_resultados_campania.resultado_campania_key} ;;
    relationship: many_to_one
  }
  join: lkp_tratamientos {
    type: inner
    sql_on: ${fct_crm_respuestas_campania.tratamiento_key} = ${lkp_tratamientos.tratamiento_key} ;;
    relationship: many_to_one
  }
  join: lkp_objetivos_campania {
    type: inner
    sql_on: ${fct_crm_respuestas_campania.objetivo_campania_key} = ${lkp_objetivos_campania.objetivo_campania_key} ;;
    relationship: many_to_one
  }
}
