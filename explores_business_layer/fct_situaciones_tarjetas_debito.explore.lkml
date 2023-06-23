include: "/views/views_fct/fct_situaciones_tarjetas_debito.view"
include: "/views/views_lkp/*.view"

explore: fct_situaciones_tarjetas_debito {
  label: "Medios de Pago | Situaciones TD Mensual"
  conditionally_filter: {
    filters: [fct_situaciones_tarjetas_debito.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas{
    type: inner
    sql_on: ${fct_situaciones_tarjetas_debito.fecha_key} = ${lkp_fechas.fecha_key}  ;;
    relationship: many_to_one
  }
  join: lkp_cuentas_td {
    type: inner
    sql_on: ${fct_situaciones_tarjetas_debito.cuenta_key} = ${lkp_cuentas_td.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_tarjetas {
    type: inner
    sql_on: ${fct_situaciones_tarjetas_debito.estado_tarjeta_key} = ${lkp_estados_tarjetas.estado_tarjeta_key} ;;
    relationship: many_to_one
  }
  join:lkp_bancos {
    type: inner
    sql_on: ${fct_situaciones_tarjetas_debito.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_cuenta {
    type: inner
    sql_on: ${fct_situaciones_tarjetas_debito.oficial_cuenta_key} = ${lkp_oficiales_cuenta.oficial_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_sectores {
    type: inner
    sql_on: ${fct_situaciones_tarjetas_debito.sector_key} = ${lkp_sectores.sector_key} ;;
    relationship: many_to_one
  }
  join: lkp_actividades {
    type: inner
    sql_on: ${fct_situaciones_tarjetas_debito.actividad_key} = ${lkp_actividades.actividad_key} ;;
    relationship: many_to_one
  }
  join: lkp_tipos_persona {
    type: inner
    sql_on: ${fct_situaciones_tarjetas_debito.tipo_persona_key} = ${lkp_tipos_persona.tipo_persona_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_situaciones_tarjetas_debito.sucursal_cuenta_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_categorias_cuenta {
    type: inner
    sql_on: ${fct_situaciones_tarjetas_debito.categoria_cuenta_key} = ${lkp_categorias_cuenta.categoria_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: inner
    sql_on: ${fct_situaciones_tarjetas_debito.producto_key} = ${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancas {
    type: inner
    sql_on: ${fct_situaciones_tarjetas_debito.banca_key} = ${lkp_bancas.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_situaciones_tarjetas_debito.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
}
