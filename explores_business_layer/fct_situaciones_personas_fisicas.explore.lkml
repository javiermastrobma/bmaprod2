include: "/views/views_fct/fct_situaciones_personas_fisicas.view"
include: "/views/views_lkp/*.view"

explore: fct_situaciones_personas_fisicas {
  label: "Clientes | Situaciones Personas Físicas"
  conditionally_filter: {
    filters: [fct_situaciones_personas_fisicas.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_situaciones_personas_fisicas.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_mezcla_productos {
    type: inner
    sql_on: ${fct_situaciones_personas_fisicas.mezcla_productos_key} = ${lkp_mezcla_productos.mezcla_productos_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_situaciones_personas_fisicas.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_situaciones_personas_fisicas.sucursal_radicacion_key} =${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
}
join: lkp_sucursales_radicacion {
  type: inner
  sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
  relationship: many_to_one
}
join: lkp_bancos {
  type: inner
  sql_on: ${fct_situaciones_personas_fisicas.banco_key} = ${lkp_bancos.banco_key} ;;
  relationship: many_to_one
}
join: lkp_bancas {
  type: inner
  sql_on: ${fct_situaciones_personas_fisicas.banca_key} = ${lkp_bancas.banca_key} ;;
  relationship: many_to_one
}
#join: lkp_personas {}
#join: lkp_zonas {}
#join: lkp_tipos_persona {}
#join: lkp_tipos_localidad {}
}
