include: "/views/views_fct/fct_ordenes_pago_proveedores.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_ordenes_pago_proveedores {
  label: "Convenios | Pago a Proveedores Diaria"
  conditionally_filter: {
    filters: [fct_ordenes_pago_proveedores.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_ordenes_pago_proveedores.fecha_ultima_actualizacion_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_ordenes_pago_proveedores.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_ordenes_pago_proveedores.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas_debito {
    type: inner
    sql_on: ${fct_ordenes_pago_proveedores.cuenta_debito_key} = ${lkp_cuentas_debito.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas_acreditacion {
    type: inner
    sql_on: ${fct_ordenes_pago_proveedores.cuenta_debito_key} = ${lkp_cuentas_acreditacion.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_ordenes_pago_proveedores.sucursal_cuenta_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
  #join: lkp_estado_ordenes_pago {}
  join: lkp_oficiales_cuenta {
    type: inner
    sql_on: ${fct_ordenes_pago_proveedores.oficial_cuenta_key} = ${lkp_oficiales_cuenta.oficial_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: inner
    sql_on: ${fct_ordenes_pago_proveedores.producto_key} = ${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
  join: lkp_modalidades_pago {
    type: inner
    sql_on: ${fct_ordenes_pago_proveedores.modalidad_pago_key} = ${lkp_modalidades_pago.modalidad_pago_key} ;;
    relationship: many_to_one
  }
}
