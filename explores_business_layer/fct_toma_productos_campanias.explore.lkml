include: "/views/views_fct/fct_toma_productos_campanias.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_toma_productos_campanias {
  label: "Campañas | Toma de Productos"
  conditionally_filter: {
    filters: [fct_toma_productos_campanias.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
join: lkp_campanias {
  type: inner
  sql_on: ${fct_toma_productos_campanias.campania_key} = ${lkp_campanias.campania_key} ;;
  relationship:many_to_one
}
join: lkp_clientes_completa {
  type: inner
  sql: ${fct_toma_productos_campanias.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
  relationship:many_to_one
}
join: lkp_sucursales_cuenta  {
  type: inner
  sql: ${fct_toma_productos_campanias.sucursal_cuenta_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
  relationship:many_to_one
}
join: lkp_sucursales_radicacion {
  type: inner
  sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
  relationship:many_to_one
}
join: lkp_bancos {
  type: inner
  sql_on: ${fct_toma_productos_campanias.banco_key} = ${lkp_bancos.banco_key} ;;
  relationship:many_to_one
}
join: lkp_bancas {
  type: inner
  sql_on: ${fct_toma_productos_campanias.banca_key} = ${lkp_bancas.banca_key} ;;
  relationship:many_to_one
}
join: lkp_productos {
  type: inner
  sql_on: ${fct_toma_productos_campanias.producto_key} = ${lkp_productos.producto_key} ;;
  relationship:many_to_one
}
join: lkp_paquetes {
  type: inner
  sql_on: ${fct_toma_productos_campanias.paquete_key} = ${lkp_paquetes.paquete_key} ;;
  relationship:many_to_one
}
join: lkp_polizas {
  type: inner
  sql_on: ${fct_toma_productos_campanias.poliza_key} = ${lkp_polizas.poliza_key} ;;
  relationship:many_to_one
}
join: lkp_cuentas_tc {
  type: inner
  sql_on: ${fct_toma_productos_campanias.cuenta_tc_key} = ${lkp_cuentas_tc.cuenta_tc_key} ;;
  relationship:many_to_one
}
join: lkp_cuentas {
  type: inner
  sql_on: ${fct_toma_productos_campanias.cuenta_key} = ${lkp_cuentas.cuenta_key} ;;
  relationship:many_to_one
}
join: lkp_prestamos {
  type: inner
  sql_on: ${fct_toma_productos_campanias.cuenta_key} = ${lkp_prestamos.cuenta_key} ;;
  relationship:many_to_one
}
join: lkp_objetivos_campania {
  type: inner
  sql_on: ${fct_toma_productos_campanias.objetivo_campania_key} = ${lkp_objetivos_campania.objetivo_campania_key} ;;
  relationship:many_to_one
}
join: lkp_fechas {
  type: inner
  sql_on: ${fct_toma_productos_campanias.fecha_key} = ${lkp_fechas.fecha_key} ;;
  relationship:many_to_one
  }
 }
