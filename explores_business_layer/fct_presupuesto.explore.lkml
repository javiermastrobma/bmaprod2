include: "/views/views_fct/fct_presupuesto.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_presupuesto {
  label: "Control de Gestión | Presupuesto Anual"
  conditionally_filter: {
    filters: [fct_presupuesto.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_presupuesto.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_areas_destino {
    type: inner
    sql_on: ${fct_presupuesto.area_destino_key} = ${lkp_areas_destino.area_destino_key} ;;
    relationship: many_to_one
  }
  join: lkp_versiones_presupuesto {
    type: inner
    sql_on: ${fct_presupuesto.version_presupuesto_key} = ${lkp_versiones_presupuesto.version_presupuesto_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_presupuesto.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_especies {
    type: inner
    sql_on: ${fct_presupuesto.especie_key} = ${lkp_especies.especie_key} ;;
    relationship: many_to_one
  }
  join: lkp_plan_cuentas {
    type: inner
    sql_on: ${fct_presupuesto.plan_cuentas_key} = ${lkp_plan_cuentas.plan_cuentas_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_presupuesto {
    type: inner
    sql_on: ${fct_presupuesto.estado_presupuesto_key} = ${lkp_estados_presupuesto.estado_presupuesto_key} ;;
    relationship: many_to_one
  }
  join: lkp_escenarios_presupuesto {
    type: inner
    sql_on: ${fct_presupuesto.escenario_presupuesto_key} = ${lkp_escenarios_presupuesto.escenario_presupuesto_key} ;;
    relationship: many_to_one
  }
}
