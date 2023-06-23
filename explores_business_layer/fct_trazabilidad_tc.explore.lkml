include: "/views/views_fct/fct_trazabilidad_tc.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_trazabilidad_tc {
  label: "Medios de Pago | Trazabilidad TC"
  conditionally_filter: {
    filters: [fct_trazabilidad_tc.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_movimientos_trazabilidad {
    type: inner
    sql_on: ${fct_trazabilidad_tc.movimiento_trazabilidad_key} = ${lkp_movimientos_trazabilidad.movimiento_trazabilidad_key} ;;
  relationship: many_to_one
}
  join:  lkp_tarjetas_credito{
    type: inner
    sql_on: ${fct_trazabilidad_tc.tarjeta_credito_key} = ${lkp_tarjetas_credito.tarjeta_credito_key} ;;
  relationship: many_to_one
}
  join: lkp_bancas {
    type: inner
    sql_on: ${fct_trazabilidad_tc.banca_key} = ${lkp_bancas.banca_key};;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_trazabilidad_tc.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
}
  join: lkp_residencias {
    type: inner
    sql_on: ${fct_trazabilidad_tc.residencia_key} = ${lkp_residencias.residencia_key};;
  relationship: many_to_one
}
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_trazabilidad_tc.sucursal_cuenta_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
  relationship: many_to_one
}
  join: lkp_productos {
    type: inner
    sql_on: ${fct_trazabilidad_tc.producto_key} = ${lkp_productos.producto_key} ;;
  relationship: many_to_one
}
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_trazabilidad_tc.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
  relationship: many_to_one
}
  join: lkp_cuentas_tc {
    type: inner
    sql_on: ${fct_trazabilidad_tc.cuenta_tc_key} = ${lkp_cuentas_tc.cuenta_tc_key} ;;
  relationship: many_to_one
}
  join: lkp_marcas {
    type: inner
    sql_on: ${fct_trazabilidad_tc.marca_key} = ${lkp_marcas.marca_key} ;;
  relationship: many_to_one
}
  join: lkp_permisionarios_trazabilidad {
    type: inner
    sql_on: ${fct_trazabilidad_tc.permisionario_key} = ${lkp_permisionarios_trazabilidad.permisionario_key};;
  relationship: many_to_one
}
  join: lkp_sectores{
    type: inner
    sql_on: ${fct_trazabilidad_tc.sector_key} = ${lkp_sectores.sector_key} ;;
  relationship: many_to_one
}
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_trazabilidad_tc.fecha_key} = ${lkp_fechas.fecha_key} ;;
  relationship: many_to_one
}

}
