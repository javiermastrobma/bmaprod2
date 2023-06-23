include: "/views/views_fct/fct_seguimiento_campanias.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_seguimiento_campanias {
  label: "Campañas | Seguimiento"
  conditionally_filter: {
    filters: [fct_seguimiento_campanias.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_campanias {
    type: inner
    sql_on: ${fct_seguimiento_campanias.campania_key} = ${lkp_campanias.campania_key} ;;
    relationship: many_to_one
  }
  join: lkp_objetivos_campania {
    type: inner
    sql_on: ${fct_seguimiento_campanias.objetivo_campania_key} = ${lkp_objetivos_campania.objetivo_campania_key} ;;
    relationship: many_to_one
  }
  join: lkp_tratamientos {
    type: inner
    sql_on: ${fct_seguimiento_campanias.tratamiento_key} = ${lkp_tratamientos.tratamiento_key} ;;
    relationship: many_to_one
  }
  join: lkp_resultados_campania {
    type: inner
    sql_on: ${fct_seguimiento_campanias.ultimo_resultado_key} = ${lkp_resultados_campania.resultado_campania_key} ;;
    relationship: many_to_one
  }
  join: lkp_programas_campania {
    type: inner
    sql_on: ${fct_seguimiento_campanias.programa_campania_key} = ${lkp_programas_campania.programa_campania_key} ;;
    relationship: many_to_one
  }
  join: lkp_oficinas_gestion_campania {
    type: inner
    sql_on: ${fct_seguimiento_campanias.oficina_gestion_campania_key} = ${lkp_oficinas_gestion_campania.oficina_gestion_campania_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos_ofertados_vigente {
    type: inner
    #VER
    sql_on: ${fct_seguimiento_campanias.campania_key} = ${lkp_productos_ofertados_vigente.catalogo_producto_crm_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_seguimiento_campanias.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_cuenta {
    type: inner
    sql_on: ${fct_seguimiento_campanias.oficial_campania_key} = ${lkp_oficiales_cuenta.oficial_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancas {
    type: inner
    sql_on: ${fct_seguimiento_campanias.banca_key} = ${lkp_bancas.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_seguimiento_campanias.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_seguimiento_campanias.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
}
