include: "/views/views_fct/fct_crm_seguimiento_atenciones.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_crm_seguimiento_atenciones {
  label: "Clientes | CRM Seguimiento Atenciones Diaria"
  conditionally_filter: {
    filters: [fct_crm_seguimiento_atenciones.fecha_max: "yes"]
    unless: [lkp_fechas_actualizacion.fecha, lkp_fechas_actualizacion.periodo, lkp_fechas_creacion.fecha, lkp_fechas_creacion.periodo]
  }
  join: lkp_crm_tipologias_atenciones {
    type: inner
    sql_on: ${fct_crm_seguimiento_atenciones.crm_tipologia_atencion_key} = ${lkp_crm_tipologias_atenciones.crm_tipologia_atencion_key} ;;
  relationship: many_to_one
  }
  join: lkp_crm_canales {
    type: inner
    sql_on: ${fct_crm_seguimiento_atenciones.crm_canal_key} = ${lkp_crm_canales.crm_canal_key} ;;
  relationship: many_to_one
  }
  join: lkp_crm_operadores_ingreso {
    type: inner
    sql_on: ${fct_crm_seguimiento_atenciones.crm_operador_ingreso_key} = ${lkp_crm_operadores_ingreso.crm_operador_key} ;;
  relationship: many_to_one
  }
  join: lkp_crm_operadores_procesamiento {
    type: inner
    sql_on: ${fct_crm_seguimiento_atenciones.crm_operador_procesamiento_key} = ${lkp_crm_operadores_procesamiento.crm_operador_key} ;;
    relationship: many_to_one
  }
  # join: lkp_crm_otros_atributos_postventa {
  #   type: inner
  #   sql_on: fct_crm_seguimiento_atenciones ;;
  # relationship: many_to_one
  # }
  join: lkp_crm_productos {
    type: inner
    sql_on: ${fct_crm_seguimiento_atenciones.crm_producto_key} = ${lkp_crm_productos.crm_producto_key} ;;
  relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_crm_seguimiento_atenciones.banco_key} = ${lkp_bancos.banco_key} ;;
  relationship: many_to_one
  }
  join: lkp_campanias {
    type: inner
    sql_on: ${fct_crm_seguimiento_atenciones.campania_key} = ${lkp_campanias.campania_key} ;;
  relationship: many_to_one
  }
  join: lkp_horas {
    type: inner
    sql_on: ${fct_crm_seguimiento_atenciones.crm_hora_ingreso_key} = ${lkp_horas.hora_key} ;;
  relationship: many_to_one
  }
  join: lkp_crm_estados_atenciones {
    type: inner
    sql_on: ${fct_crm_seguimiento_atenciones.crm_estado_atencion_key} = ${lkp_crm_estados_atenciones.crm_estado_atencion_key} ;;
  relationship: many_to_one
  }
  join: lkp_crm_clasificaciones_contacto {
    type: inner
    sql_on: ${fct_crm_seguimiento_atenciones.crm_clasificacion_contacto_key} = ${lkp_crm_clasificaciones_contacto.crm_clasificacion_contacto_key} ;;
  relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_crm_seguimiento_atenciones.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
  relationship: many_to_one
  }
  join: lkp_crm_contactos {
    type: inner
    sql_on: ${fct_crm_seguimiento_atenciones.crm_contacto_key} = ${lkp_crm_contactos.crm_contacto_key} ;;
  relationship: many_to_one
  }
  join: lkp_fechas_creacion {
    type: inner
    sql_on: ${fct_crm_seguimiento_atenciones.fecha_creacion_key} = ${lkp_fechas_creacion.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas_actualizacion {
    type: inner
    sql_on: ${fct_crm_seguimiento_atenciones.fecha_actualizacion_key} = ${lkp_fechas_actualizacion.fecha_key} ;;
    relationship: many_to_one
  }
}
