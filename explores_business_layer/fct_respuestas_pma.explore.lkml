include: "/views/views_fct/fct_respuestas_pma.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_respuestas_pma {
  label: "Campañas | Respuestas PMA"
  conditionally_filter: {
    filters: [fct_respuestas_pma.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_respuestas_pma.fecha_key} =  ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_respuestas_pma.cliente_key} = ${lkp_clientes_completa.cliente_key}  ;;
    relationship: many_to_one
  }
  # join: lkp_prospectos {
  #   type: inner
  #   sql_on: fct_respuestas_pma =   ;;
  #   relationship: many_to_one
  # }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_respuestas_pma.sucursal_pma_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key}  ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key}  ;;
    relationship: many_to_one
  }
  join: lkp_convenios {
    type: inner
    sql_on: ${fct_respuestas_pma.convenio_key} = ${lkp_convenios.convenio_key}  ;;
    relationship: many_to_one
  }
  join: lkp_bancas {
    type: inner
    sql_on: ${fct_respuestas_pma.banca_key} = ${lkp_bancas.banca_key}  ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_respuestas_pma.banco_key} =  ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_tipos_respuesta_pma {
    type: inner
    sql_on: ${fct_respuestas_pma.tipo_respuesta_pma_key} = ${lkp_tipos_respuesta_pma.tipo_respuesta_pma_key}  ;;
    relationship: many_to_one
  }
  join: lkp_pma {
    type: inner
    sql_on: ${fct_respuestas_pma.pma_key} = ${lkp_pma.pma_key}  ;;
    relationship: many_to_one
  }
  join: lkp_dotacion_rrhh {
    type: inner
    sql_on: ${fct_respuestas_pma.dotacion_rrhh_key} = ${lkp_dotacion_rrhh.dotacion_rrhh_key}  ;;
    relationship: many_to_one
  }
  join: lkp_horas {
    type: inner
    sql_on: ${fct_respuestas_pma.hora_respuesta_key} = ${lkp_horas.hora_key}  ;;
    relationship: many_to_one
  }

}
