include: "/views/views_fct/fct_crm_seguimiento_actividades.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_crm_seguimiento_actividades {
  label: "Clientes | CRM Seguimiento Actividades Diaria"

  join: lkp_fechas_creacion {
    type: inner
    sql_on: ${fct_crm_seguimiento_actividades.fecha_creacion_key} = ${lkp_fechas_creacion.fecha_key};;
    relationship: many_to_one
  }
  join: lkp_fechas_actualizacion {
    type: inner
    sql_on: ${fct_crm_seguimiento_actividades.fecha_actualizacion_key} = ${lkp_fechas_actualizacion.fecha_key};;
    relationship: many_to_one
  }

  #join: lkp_crm_tipologias_actividades {}

  #join: lkp_crm_estados_actividades {}

  join: lkp_crm_canales {
    type: inner
    sql_on: ${fct_crm_seguimiento_actividades.crm_canal_key} = ${lkp_crm_canales.crm_canal_key}    ;;
    relationship: many_to_one
    }
  join: lkp_crm_operadores_ingreso {
    type: inner
    sql_on: ${fct_crm_seguimiento_actividades.crm_operador_ingreso_key} = ${lkp_crm_operadores_ingreso.crm_operador_key};;
    relationship: many_to_one
  }
  join: lkp_crm_operadores_actualizacion {
    type: inner
    sql_on: ${fct_crm_seguimiento_actividades.crm_operador_actualizacion_key} = ${lkp_crm_operadores_actualizacion.crm_operador_key};;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_crm_seguimiento_actividades.banco_key} = ${lkp_bancos.banco_key}   ;;
    relationship: many_to_one
  }
  join: lkp_horas {
    type: inner
    sql_on: ${fct_crm_seguimiento_actividades.crm_hora_inicio_key} = ${lkp_horas.hora_key}    ;;
    relationship: many_to_one
  }
  join: lkp_crm_clasificaciones_contacto {
    type: inner
    sql_on: ${fct_crm_seguimiento_actividades.crm_clasificacion_contacto_key} = ${lkp_crm_clasificaciones_contacto.crm_clasificacion_contacto_key}    ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_crm_seguimiento_actividades.cliente_key} = ${lkp_clientes_completa.cliente_key}    ;;
    relationship: many_to_one
  }
  join: lkp_crm_contactos {
    type: inner
    sql_on: ${fct_crm_seguimiento_actividades.crm_contacto_key} = ${lkp_crm_contactos.crm_contacto_key}    ;;
    relationship: many_to_one
  }
  }
