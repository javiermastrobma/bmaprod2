include: "/views/views_fct/fct_situaciones_cajas_ahorro.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_situaciones_cajas_ahorro {
  label: "Pasivas | Stock Cajas de Ahorro Mensual"
  description: "Información a fin de mes de las cajas de ahorro incluyendo su último estado y saldo promedio. Indica si está paquetizada o no."
  conditionally_filter: {
    filters: [fct_situaciones_cajas_ahorro.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_cuentas {
    type: inner
    sql_on: ${fct_situaciones_cajas_ahorro.cuenta_key} = ${lkp_cuentas.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_situaciones_cajas_ahorro.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_especies {
    type: inner
    sql_on: ${fct_situaciones_cajas_ahorro.especie_key} = ${lkp_especies.especie_key} ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_cuenta {
    type: inner
    sql_on: ${fct_situaciones_cajas_ahorro.oficial_cuenta_key} = ${lkp_oficiales_cuenta.oficial_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_situaciones_cajas_ahorro.sucursal_cuenta_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_cuenta {
    type: inner
    sql_on: ${fct_situaciones_cajas_ahorro.estado_cuenta_key} = ${lkp_estados_cuenta.estado_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: inner
    sql_on: ${fct_situaciones_cajas_ahorro.producto_key} = ${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancas {
    type: inner
    sql_on: ${fct_situaciones_cajas_ahorro.banca_key} = ${lkp_bancas.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_categorias_cuenta {
    type: inner
    sql_on: ${fct_situaciones_cajas_ahorro.categoria_cuenta_key} = ${lkp_categorias_cuenta.categoria_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_situaciones_cajas_ahorro.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
}
