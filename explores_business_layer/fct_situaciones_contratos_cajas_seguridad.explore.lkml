include: "/views/views_fct/fct_situaciones_contratos_cajas_seguridad.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore:fct_situaciones_contratos_cajas_seguridad  {
  label: "Servicios | Contratos Cajas de Seguridad Diaria"
  conditionally_filter: {
    filters: [fct_situaciones_contratos_cajas_seguridad.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_situaciones_contratos_cajas_seguridad.fecha_key} = ${lkp_fechas.fecha_key} ;;
  relationship: many_to_one
  }
  join: lkp_cajas_seguridad {
    type: inner
    sql_on: ${fct_situaciones_contratos_cajas_seguridad.caja_seguridad_key} = ${lkp_cajas_seguridad.caja_seguridad_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_contrato_cajas_seguridad {
    type: inner
    sql_on: ${fct_situaciones_contratos_cajas_seguridad.estado_contrato_cs_key} = ${lkp_estados_contrato_cajas_seguridad.estado_contrato_cs_key} ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_cuenta {
    type: inner
    sql_on: ${fct_situaciones_contratos_cajas_seguridad.oficial_cuenta_key} = ${lkp_oficiales_cuenta.oficial_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_situaciones_contratos_cajas_seguridad.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_situaciones_contratos_cajas_seguridad.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_situaciones_contratos_cajas_seguridad.sucursal_cuenta_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: inner
    sql_on: ${fct_situaciones_contratos_cajas_seguridad.producto_key} = ${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancas {
    type: inner
    sql_on: ${fct_situaciones_contratos_cajas_seguridad.banca_key} = ${lkp_bancas.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas {
    type: inner
    sql_on: ${fct_situaciones_contratos_cajas_seguridad.cuenta_key} = ${lkp_cuentas.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas_debito {
    type: inner
    sql_on: ${fct_situaciones_contratos_cajas_seguridad.cuenta_debito_key} = ${lkp_cuentas_debito.cuenta_key} ;;
    relationship: many_to_one
  }




}
