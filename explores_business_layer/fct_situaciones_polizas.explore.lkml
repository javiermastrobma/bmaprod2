include: "/views/views_fct/fct_situaciones_polizas.view"
include: "/views/views_lkp/*.view"

explore: fct_situaciones_polizas {
  label: "Seguros | Situacion Semanal"
  conditionally_filter: {
    filters: [fct_situaciones_polizas.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_situaciones_polizas.banco_key} = ${lkp_bancos.banco_key} ;;
  relationship: many_to_one
  }
  join: lkp_bancas {
    type: inner
    sql_on: ${fct_situaciones_polizas.banca_key} = ${lkp_bancas.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_situaciones_polizas.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_polizas {
    type: inner
    sql_on: ${fct_situaciones_polizas.poliza_key} = ${lkp_polizas.poliza_key} ;;
    relationship: many_to_one
  }
  join: lkp_companias_seguros {
    type: inner
    sql_on: ${fct_situaciones_polizas.compania_key} = ${lkp_companias_seguros.compania_key} ;;
    relationship: many_to_one
  }
  join: lkp_coberturas_seguros {
    type: inner
    sql_on: ${fct_situaciones_polizas.cobertura_key} = ${lkp_coberturas_seguros.cobertura_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: inner
    sql_on: ${fct_situaciones_polizas.producto_key} = ${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_captacion {
    type: inner
    sql_on: ${fct_situaciones_polizas.sucursal_captacion_key} = ${lkp_sucursales_captacion.sucursal_captacion_key} ;;
    relationship: many_to_one
  }
  join: lkp_vendedores {
    type: inner
    sql_on: ${fct_situaciones_polizas.vendedor_key} = ${lkp_vendedores.vendedor_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_situaciones_polizas.sucursal_cuenta_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_motivos_rechazo {
    type: inner
    sql_on: ${fct_situaciones_polizas.motivo_rechazo_key} = ${lkp_motivos_rechazo.motivo_rechazo_key} ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_cuenta {
    type: inner
    sql_on: ${fct_situaciones_polizas.oficial_cuenta_key} = ${lkp_oficiales_cuenta.oficial_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_tomador {
    type: inner
    sql_on: ${fct_situaciones_polizas.cliente_tomador_key} = ${lkp_clientes_tomador.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_asegurado {
    type: inner
    sql_on: ${fct_situaciones_polizas.cliente_asegurado_key} = ${lkp_clientes_asegurado.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_especies {
    type: inner
    sql_on: ${fct_situaciones_polizas.especie_key} = ${lkp_especies.especie_key} ;;
    relationship: many_to_one
  }
  join: lkp_formas_pago {
    type: inner
    sql_on: ${fct_situaciones_polizas.forma_pago_key} = ${lkp_formas_pago.forma_pago_key} ;;
    relationship: many_to_one
  }
  join: lkp_mercados {
    type: inner
    sql_on: ${fct_situaciones_polizas.mercado_key} = ${lkp_mercados.mercado_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_polizas {
    type: inner
    sql_on: ${fct_situaciones_polizas.estado_poliza_key} = ${lkp_estados_polizas.estado_poliza_key} ;;
    relationship: many_to_one
  }
  #join: lkp_tipos_bienes_asegurados {}
  join: lkp_clasificacion_seguros {
    type: inner
    sql_on: ${fct_situaciones_polizas.clasificacion_seguros_key} = ${lkp_clasificacion_seguros.clasificacion_seguros_key} ;;
    relationship: many_to_one
  }
  join: lkp_canales_venta {
    type: inner
    sql_on: ${fct_situaciones_polizas.canal_venta_key} = ${lkp_canales_venta.canal_venta_key} ;;
    relationship: many_to_one
  }
  #join: lkp_brokers_seguros {}
}
