include: "/views/views_fct/fct_volumenes_permisionarios_reclamos.view.lkml"
include: "/views/views_lkp/lkp_fechas.view.lkml"
include: "/views/views_lkp/lkp_permisionarios_trazabilidad.view.lkml"
include: "/views/views_lkp/lkp_productos_permisionario.view.lkml"
include: "/views/views_lkp/lkp_bancos.view.lkml"
include: "/views/views_lkp/lkp_tipos_permisionario.view.lkml"
include: "/views/views_lkp/lkp_clasificaciones_permisionario.view.lkml"

explore: fct_volumenes_permisionarios_reclamos {
  label: "Reclamos | Volúmenes Permisionarias Diaria"
  conditionally_filter: {
    filters: [fct_volumenes_permisionarios_reclamos.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_volumenes_permisionarios_reclamos.fecha_key} = ${lkp_fechas.fecha_key}  ;;
    relationship: many_to_one
  }
  join: lkp_permisionarios_trazabilidad {
    type: inner
    sql_on: ${fct_volumenes_permisionarios_reclamos.permisionario_key} = ${lkp_permisionarios_trazabilidad.permisionario_key}  ;;
    relationship: many_to_one
  }
  join: lkp_productos_permisionario {
    type: inner
    sql_on: ${fct_volumenes_permisionarios_reclamos.producto_permisionario_key} = ${lkp_productos_permisionario.producto_permisionario_key}  ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_volumenes_permisionarios_reclamos.banco_key} = ${lkp_bancos.banco_key}  ;;
    relationship: many_to_one
  }
  join: lkp_tipos_permisionario {
    type: inner
    sql_on: ${fct_volumenes_permisionarios_reclamos.tipo_permisionario_key} = ${lkp_tipos_permisionario.tipo_permisionario_key}  ;;
    relationship: many_to_one
  }
  join: lkp_clasificaciones_permisionario {
    type: inner
    sql_on: ${fct_volumenes_permisionarios_reclamos.clasificacion_permisionario_key} = ${lkp_clasificaciones_permisionario.clasificacion_permisionario_key}  ;;
    relationship: many_to_one
  }
}
