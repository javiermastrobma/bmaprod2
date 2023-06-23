include: "/views/views_fct/fct_detalle_situaciones_valores.view.lkml"
include: "/views/views_lkp/lkp_fechas.view.lkml"
include: "/views/views_lkp/lkp_valores.view.lkml"
include: "/views/views_lkp/lkp_bancos.view.lkml"
include: "/views/views_lkp/lkp_sectores.view.lkml"
include: "/views/views_lkp/lkp_especies.view.lkml"
include: "/views/views_lkp/lkp_productos.view.lkml"
include: "/views/views_lkp/lkp_clasificaciones_contables.view.lkml"

explore: fct_detalle_situaciones_valores {
  label: "Remesas | Detalle Situaciones Valores Mensual"
  conditionally_filter: {
    filters: [fct_detalle_situaciones_valores.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_detalle_situaciones_valores.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_valores {
    type: inner
    sql_on: ${fct_detalle_situaciones_valores.valor_key} = ${lkp_valores.valor_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_detalle_situaciones_valores.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_sectores {
    type: inner
    sql_on: ${fct_detalle_situaciones_valores.sector_key} = ${lkp_sectores.sector_key} ;;
    relationship: many_to_one
  }
  join: lkp_especies {
    type: inner
    sql_on: ${fct_detalle_situaciones_valores.especie_key} = ${lkp_especies.especie_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: inner
    sql_on: ${fct_detalle_situaciones_valores.producto_key} = ${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
  join: lkp_clasificaciones_contables {
    type: inner
    sql_on: ${fct_detalle_situaciones_valores.clasificacion_contable_key} = ${lkp_clasificaciones_contables.clasificacion_contable_key} ;;
    relationship: many_to_one
  }


}
