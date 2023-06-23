include: "/views/views_fct/fct_pagos.view.lkml"
include: "/views/views_lkp/lkp_fechas.view.lkml"
include: "/views/views_lkp/lkp_areas_origen.view.lkml"
include: "/views/views_lkp/lkp_contratos_glm.view.lkml"
include: "/views/views_lkp/lkp_bancos.view.lkml"
include: "/views/views_lkp/lkp_actividad_proveedor.view.lkml"
include: "/views/views_lkp/lkp_plan_cuentas.view.lkml"
include: "/views/views_lkp/lkp_areas_destino.view.lkml"

explore: fct_pagos {
  label: "Contabilidad | Pagos Diaria"
  conditionally_filter: {
    filters: [fct_pagos.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_pagos.fecha_valor_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_areas_origen {
    type: inner
    sql_on: ${fct_pagos.area_origen_key} = ${lkp_areas_origen.area_origen_key} ;;
    relationship: many_to_one
  }
  join: lkp_contratos_glm {
    type: inner
    sql_on: ${fct_pagos.contrato_glm_key} = ${lkp_contratos_glm.contrato_glm_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_pagos.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_actividad_proveedor {
    type: inner
    sql_on: ${fct_pagos.actividad_proveedor_key} = ${lkp_actividad_proveedor.actividad_proveedor_key} ;;
    relationship: many_to_one
  }
  join: lkp_plan_cuentas {
    type: inner
    sql_on: ${fct_pagos.plan_cuenta_key} = ${lkp_plan_cuentas.plan_cuentas_key} ;;
    relationship: many_to_one
  }
  join: lkp_areas_destino {
    type: inner
    sql_on: ${fct_pagos.area_destino_key} = ${lkp_areas_destino.area_destino_key} ;;
    relationship: many_to_one
  }
}
