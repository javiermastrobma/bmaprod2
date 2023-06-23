include: "/views/views_fct/fct_puntajes_macropremia.view.lkml"
include: "/views/views_lkp/lkp_clientes_completa.view.lkml"
include: "/views/views_lkp/lkp_marcas.view.lkml"
include: "/views/views_lkp/lkp_bancos.view.lkml"
include: "/views/views_lkp/lkp_tipos_puntaje.view.lkml"
include: "/views/views_lkp/lkp_fechas.view.lkml"

explore: fct_puntajes_macropremia {
  label: "Servicios | Puntajes Macropremia Mensual"
  conditionally_filter: {
    filters: [fct_puntajes_macropremia.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_puntajes_macropremia.cliente_key} =  ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_marcas {
    type: inner
    sql_on: ${fct_puntajes_macropremia.marca_key} = ${lkp_marcas.marca_key}  ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_puntajes_macropremia.banco_key} = ${lkp_bancos.banco_key}  ;;
    relationship: many_to_one
  }
  join: lkp_tipos_puntaje {
    type: inner
    sql_on: ${fct_puntajes_macropremia.tipo_puntaje_key} = ${lkp_tipos_puntaje.tipo_puntaje_key}  ;;
    relationship: many_to_one
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_puntajes_macropremia.fecha_key} = ${lkp_fechas.fecha_key}  ;;
    relationship: many_to_one
  }

}
