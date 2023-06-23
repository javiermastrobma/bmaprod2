include: "/views/views_fct/fct_situaciones_resumenes_cuenta.view"
include: "/views/views_lkp/*.view"

explore: fct_situaciones_resumenes_cuenta  {
  label: "Otros | Resumen Cuenta"
  conditionally_filter: {
    filters: [fct_situaciones_resumenes_cuenta.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_cuentas {
    type: inner
    sql_on: ${fct_situaciones_resumenes_cuenta.cuenta_key} = ${lkp_cuentas.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_situaciones_resumenes_cuenta.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: inner
    sql_on: ${fct_situaciones_resumenes_cuenta.producto_key} = ${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_resumen_vw {
    type: inner
    sql_on: ${fct_situaciones_resumenes_cuenta.sucursal_resumen_key} = ${lkp_sucursales_resumen_vw.sucursal_resumen_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_retenido_vw {
    type: inner
    sql_on: ${fct_situaciones_resumenes_cuenta.sucursal_retenido_key} = ${lkp_sucursales_retenido_vw.sucursal_retenido_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas_tc {
    type: inner
    sql_on: ${fct_situaciones_resumenes_cuenta.cuenta_tc_key} = ${lkp_cuentas_tc.cuenta_tc_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_situaciones_resumenes_cuenta.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_situaciones_resumenes_cuenta.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  }
