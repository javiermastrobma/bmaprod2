include: "/views/views_fct/fct_situacion_diaria_ri_calificaciones.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_situacion_diaria_ri_calificaciones {
  label: "Riesgos | Calificaciones Diaria"
  conditionally_filter: {
    filters: [fct_situacion_diaria_ri_calificaciones.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_situacion_diaria_ri_calificaciones.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  #join: lkp_ri_clasificaciones_nivel {}

  # join: lkp_ri_calificaciones {
  #   type: inner
  #   sql_on: fct_situacion_diaria_ri_calificaciones =  ;;
  #   relationship: many_to_one
  # }

  join: lkp_actividad_extendida {
    type: inner
    sql_on: ${fct_situacion_diaria_ri_calificaciones.actividad_extendida_key} = ${lkp_actividad_extendida.actividad_extendida_key} ;;
    relationship: many_to_one
  }

  join: lkp_oficiales_cuenta {
    type: inner
    sql_on: ${fct_situacion_diaria_ri_calificaciones.oficial_cliente_key} = ${lkp_oficiales_cuenta.oficial_cliente_key} ;;
    relationship: many_to_one
  }

  join: lkp_bancas {
    type: inner
    sql_on: ${fct_situacion_diaria_ri_calificaciones.banca_key} = ${lkp_bancas.banca_key} ;;
    relationship: many_to_one
  }

  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_situacion_diaria_ri_calificaciones.sucursal_oficial_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }

  join: lkp_especies_linea {
    type: inner
    sql_on: ${fct_situacion_diaria_ri_calificaciones.especie_linea_key} = ${lkp_especies_linea.especie_key} ;;
    relationship: many_to_one
  }
  join: lkp_especies_sublinea {
    sql_on: ${fct_situacion_diaria_ri_calificaciones.especie_sublinea_key} = ${lkp_especies_sublinea.especie_key} ;;
    relationship: many_to_one
  }

  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_situacion_diaria_ri_calificaciones.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }

  # join: lkp_ri_calificaciones_operacion {
  #   type: inner
  #   sql_on: fct_situacion_diaria_ri_calificaciones =  ;;
  #   relationship: many_to_one
  # }

  # join: lkp_ri_tipos_clasificacion {
  #   type: inner
  #   sql_on: fct_situacion_diaria_ri_calificaciones =  ;;
  #   relationship: many_to_one
  # }

  # join: lkp_ri_calificaciones_garantia {
  #   type: inner
  #   sql_on: fct_situacion_diaria_ri_calificaciones =  ;;
  #   relationship: many_to_one
  # }

  join: lkp_ri_calificaciones_detalle {
    type: inner
    sql_on: ${fct_situacion_diaria_ri_calificaciones.calificacion_key} = ${lkp_ri_calificaciones_detalle.calificacion_key}  ;;
    relationship: many_to_one
  }

  join: lkp_ri_calificaciones_estado {
    type: inner
    sql_on: ${fct_situacion_diaria_ri_calificaciones.calificacion_estado_key} = ${lkp_ri_calificaciones_estado.calificacion_estado_key} ;;
    relationship: many_to_one
  }

  join: lkp_ri_calificaciones_lineas_sl {
    type: inner
    sql_on: ${fct_situacion_diaria_ri_calificaciones.calificacion_linea_sl_key} = ${lkp_ri_calificaciones_lineas_sl.calificacion_linea_sl_key}  ;;
    relationship: many_to_one
  }



}
