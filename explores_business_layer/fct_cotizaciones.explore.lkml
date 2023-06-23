include: "/views/views_fct/fct_cotizaciones.view.lkml"
include: "/views/views_lkp/lkp_especies.view.lkml"
include: "/views/views_lkp/lkp_fechas.view.lkml"
include: "/views/views_lkp/lkp_bancos.view.lkml"

explore: fct_cotizaciones {
  label: "Otros Cotizaciones Diarias"
  conditionally_filter: {
    filters: [fct_cotizaciones.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_especies {
    type: inner
    sql_on: ${fct_cotizaciones.especie_key} = ${lkp_especies.especie_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_cotizaciones.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_cotizaciones.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
}
