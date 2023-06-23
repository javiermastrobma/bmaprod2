include: "/views/views_fct/fct_situaciones_plazo_fijo.view"
include: "/views/views_lkp/*.view"

explore: fct_situaciones_plazo_fijo {
  label: "Pasivas | Situaciones Plazo Fijo Mensual"
  conditionally_filter: {
    filters: [fct_situaciones_plazo_fijo.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_situaciones_plazo_fijo.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas {
    type: inner
    sql_on: ${fct_situaciones_plazo_fijo.cuenta_key} = ${lkp_cuentas.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_situaciones_plazo_fijo.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_fecha_vencimiento {
    type: inner
    sql_on: ${fct_situaciones_plazo_fijo.fecha_vencimiento_key} = ${lkp_fecha_vencimiento.fecha_vencimiento_key} ;;
    relationship: many_to_one
  }
  join: lkp_especies {
    type: inner
    sql_on: ${fct_situaciones_plazo_fijo.especie_key} = ${lkp_especies.especie_key} ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_cuenta {
    type: inner
    sql_on: ${fct_situaciones_plazo_fijo.oficial_cuenta_key} = ${lkp_oficiales_cuenta.oficial_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_situaciones_plazo_fijo.sucursal_cuenta_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_cuenta {
    type: inner
    sql_on: ${fct_situaciones_plazo_fijo.estado_cuenta_key} = ${lkp_estados_cuenta.estado_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: inner
    sql_on: ${fct_situaciones_plazo_fijo.producto_key} = ${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancas {
    type: inner
    sql_on: ${fct_situaciones_plazo_fijo.banca_key} = ${lkp_bancas.banca_key} ;;
    relationship: many_to_one
  }
}
