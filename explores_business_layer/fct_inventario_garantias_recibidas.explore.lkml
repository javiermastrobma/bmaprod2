include: "/views/views_fct/fct_inventario_garantias_recibidas.view.lkml"
include: "/views/views_lkp/lkp_fechas.view.lkml"
include: "/views/views_lkp/lkp_garantias_recibidas.view.lkml"
include: "/views/views_lkp/lkp_bancos.view.lkml"
include: "/views/views_lkp/lkp_especies.view.lkml"
include: "/views/views_lkp/lkp_sucursales_cuenta.view.lkml"

explore: fct_inventario_garantias_recibidas {
  label: "Activas | Inventario Garantías Recibidas Diaria"
  conditionally_filter: {
    filters: [fct_inventario_garantias_recibidas.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_inventario_garantias_recibidas.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_garantias_recibidas {
    type: inner
    sql_on: ${fct_inventario_garantias_recibidas.garantia_recibida_key} = ${lkp_garantias_recibidas.garantia_recibida_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_inventario_garantias_recibidas.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_especies {
    type: inner
    sql_on: ${fct_inventario_garantias_recibidas.especie_key} = ${lkp_especies.especie_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_inventario_garantias_recibidas.sucursal_cuenta_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
}
