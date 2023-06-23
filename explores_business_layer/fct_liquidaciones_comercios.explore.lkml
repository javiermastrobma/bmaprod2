include: "/views/views_fct/fct_liquidaciones_comercios.view.lkml"
include: "/views/views_lkp/lkp_fechas.view.lkml"
include: "/views/views_lkp/lkp_comercios_completa.view.lkml"
include: "/views/views_lkp/lkp_bancos.view.lkml"
include: "/views/views_lkp/lkp_marcas.view.lkml"
include: "/views/views_lkp/lkp_tipos_liquidacion_tc.view.lkml"
include: "/views/views_lkp/lkp_rubros.view.lkml"

explore: fct_liquidaciones_comercios {
  label: "Comercios | Liquidaciones"
  conditionally_filter: {
    filters: [fct_liquidaciones_comercios.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_liquidaciones_comercios.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_comercios_completa {
    type: inner
    sql_on: ${fct_liquidaciones_comercios.comercio_key} = ${lkp_comercios_completa.comercio_key} ;;
    relationship: many_to_one
  }
  #join: lkp_sucursales_comercios_tc {}
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_liquidaciones_comercios.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  #join: lkp_promociones_tc {}
  join: lkp_marcas {
    type: inner
    sql_on: ${fct_liquidaciones_comercios.marca_key} = ${lkp_marcas.marca_key} ;;
    relationship: many_to_one
  }
  join: lkp_tipos_liquidacion_tc {
    type: inner
    sql_on: ${fct_liquidaciones_comercios.tipo_liquidacion_tc_key} = ${lkp_tipos_liquidacion_tc.tipo_liquidacion_tc_key} ;;
    relationship: many_to_one
  }
  join: lkp_rubros {
    type: inner
    sql_on: ${fct_liquidaciones_comercios.rubro_key} = ${lkp_rubros.rubro_key} ;;
    relationship: many_to_one
  }
}
