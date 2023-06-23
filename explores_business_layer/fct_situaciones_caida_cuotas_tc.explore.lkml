include: "/views/views_fct/fct_situaciones_caida_cuotas_tc.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_situaciones_caida_cuotas_tc {
  label: "Activas | Caída Cuotas TC Mensual"
  conditionally_filter: {
    filters: [fct_situaciones_caida_cuotas_tc.fecha_max: "yes"]
    unless: [lkp_fechas_cierre.fecha, lkp_fechas_cierre.periodo]
  }
  join: lkp_tramos_vencimientos_cuotas {
    type: inner
    sql_on: ${fct_situaciones_caida_cuotas_tc.tramo_vencimiento_cuota_key} = ${lkp_tramos_vencimientos_cuotas.tramo_vencimiento_cuota_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas_tc {
    type: inner
    sql_on: ${fct_situaciones_caida_cuotas_tc.cuenta_tc_key} = ${lkp_cuentas_tc.cuenta_tc_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancas {
    type: inner
    sql_on: ${fct_situaciones_caida_cuotas_tc.banca_key} = ${lkp_bancas.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_situaciones_caida_cuotas_tc.cliente_key} = ${lkp_clientes_completa.cliente_key}  ;;
    relationship: many_to_one
  }
  join: lkp_clientes_tarjeta {
    type: inner
    sql_on: ${fct_situaciones_caida_cuotas_tc.cliente_tarjeta_key} = ${lkp_clientes_tarjeta.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_especies {
    type: inner
    sql_on: ${fct_situaciones_caida_cuotas_tc.especie_key} = ${lkp_especies.especie_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_situaciones_caida_cuotas_tc.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas_cierre {
    type: inner
    sql_on: ${fct_situaciones_caida_cuotas_tc.fecha_cierre_key} = ${lkp_fechas_cierre.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas_mes_caida_cierre {
    type: inner
    sql_on: ${fct_situaciones_caida_cuotas_tc.fecha_mes_caida_cierre_key} = ${lkp_fechas_mes_caida_cierre.fecha_key} ;;
    relationship: many_to_one
  }

  join: lkp_productos {
    type: inner
    sql_on: ${fct_situaciones_caida_cuotas_tc.producto_key} = ${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_situaciones_caida_cuotas_tc.sucursal_cuenta_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
  join: lkp_marcas {
    type: inner
    sql_on: ${fct_situaciones_caida_cuotas_tc.marca_key} = ${lkp_marcas.marca_key} ;;
    relationship: many_to_one
  }
  join: lkp_rubros {
    type: inner
    sql_on: ${fct_situaciones_caida_cuotas_tc.rubro_key} = ${lkp_rubros.rubro_key} ;;
    relationship: many_to_one
  }
  join: lkp_tarjetas_credito {
    type: inner
    sql_on: ${fct_situaciones_caida_cuotas_tc.tarjeta_credito_key} = ${lkp_tarjetas_credito.tarjeta_credito_key} ;;
    relationship: many_to_one
  }
  join: lkp_comercios_completa {
    type: inner
    sql_on: ${fct_situaciones_caida_cuotas_tc.comercio_key} = ${lkp_comercios_completa.comercio_key} ;;
    relationship: many_to_one
  }
}
