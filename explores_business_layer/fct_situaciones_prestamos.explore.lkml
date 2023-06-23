include: "/views/views_fct/fct_situaciones_prestamos.view"
include: "/views/views_lkp/*.view"

explore: fct_situaciones_prestamos {
  label: "Activas | Situacion Préstamos Mensual"
  conditionally_filter: {
    filters: [fct_situaciones_prestamos.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_situaciones_prestamos.fecha_key} = ${lkp_fechas.fecha_key} ;;
  relationship: many_to_one
  }
  join: lkp_prestamos {
    type: inner
    sql_on: ${fct_situaciones_prestamos.cuenta_key} = ${lkp_prestamos.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_situaciones_prestamos.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_cuenta {
    type: inner
    sql_on: ${fct_situaciones_prestamos.estado_cuenta_key} = ${lkp_estados_cuenta.estado_cuenta_key}  ;;
    relationship: many_to_one
  }
  join: lkp_companias_seguros {
    type: inner
    sql_on: ${fct_situaciones_prestamos.compania_seguro_vida_key} = ${lkp_companias_seguros.compania_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: inner
    sql_on: ${fct_situaciones_prestamos.producto_key} = ${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_cuenta {
    type: inner
    sql_on: ${fct_situaciones_prestamos.oficial_cuenta_key} = ${lkp_oficiales_cuenta.oficial_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_mercados {
    type: inner
    sql_on: ${fct_situaciones_prestamos.mercado_key} = ${lkp_mercados.mercado_key} ;;
    relationship: many_to_one
  }
  join: lkp_especies {
    type: inner
    sql_on: ${fct_situaciones_prestamos.especie_key} = ${lkp_especies.especie_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancas {
    type: inner
    sql_on: ${fct_situaciones_prestamos.banca_key} = ${lkp_bancas.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_situaciones_prestamos.sucursal_cuenta_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
}
