include: "/views/views_fct/fct_situaciones_indicadores_plan_sueldos.view"
include: "/views/views_fct/fct_situaciones_estados_capita_ps.view"
include: "/views/views_lkp/lkp_fechas.view"
include: "/views/views_lkp/lkp_clientes_completa.view"
include: "/views/views_lkp/lkp_bancas.view"
include: "/views/views_lkp/lkp_capitas_plan_sueldo.view"
include: "/views/views_lkp/lkp_oficiales_cuenta.view"
include: "/views/views_lkp/lkp_sucursales_cuenta.view"
include: "/views/views_lkp/lkp_estados_ps.view"
include: "/views/views_lkp/lkp_convenios_cuenta.view"
include: "/views/views_lkp/lkp_bancos.view"


explore: fct_situaciones_indicadores_plan_sueldos {
  label: "Plan Sueldo | Situaciones Mensual"
  join: lkp_oficiales_cuenta {
    type: inner
    sql_on: ${fct_situaciones_indicadores_plan_sueldos.oficial_empleador_key} = ${lkp_oficiales_cuenta.oficial_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancas_comite_convenio {
    type: inner
    sql_on: ${fct_situaciones_indicadores_plan_sueldos.banca_comite_convenio_key} = ${lkp_bancas_comite_convenio.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancas_comite_capita {
    type: inner
    sql_on: ${fct_situaciones_indicadores_plan_sueldos.banca_comite_capita_key} = ${lkp_bancas_comite_capita.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion_convenio {
    type: inner
    sql_on: ${fct_situaciones_indicadores_plan_sueldos.sucursal_radicacion_convenio_key} = ${lkp_sucursales_radicacion_convenio.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion_capita {
    type: inner
    sql_on: ${fct_situaciones_indicadores_plan_sueldos.sucursal_radicacion_capita_key} = ${lkp_sucursales_radicacion_capita.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_situaciones_indicadores_plan_sueldos.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_situaciones_indicadores_plan_sueldos.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_capitas_plan_sueldo {
    type: inner
    sql_on: ${fct_situaciones_indicadores_plan_sueldos.capita_key} = ${lkp_capitas_plan_sueldo.capita_key} ;;
    relationship: many_to_one
  }
  join: fct_situaciones_estados_capita_ps {
    type: inner
    sql_on: ${fct_situaciones_indicadores_plan_sueldos.capita_key} = ${fct_situaciones_estados_capita_ps.capita_key} AND
            ${fct_situaciones_indicadores_plan_sueldos.fecha_key} = ${fct_situaciones_estados_capita_ps.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_ps {
    type: inner
    sql_on: ${fct_situaciones_estados_capita_ps.estado_monitor_ps_key} = ${lkp_estados_ps.estado_monitor_ps_key} ;;
    relationship: many_to_one
  }
  #join: lkp_secuencias_ps {}
  join: lkp_convenios_cuenta {
    type: inner
    sql_on: ${lkp_capitas_plan_sueldo.capita_key} = ${lkp_convenios_cuenta.capita_key} ;;
    relationship: many_to_one
  }
}
