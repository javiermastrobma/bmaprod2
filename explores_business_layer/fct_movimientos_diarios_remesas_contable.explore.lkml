include: "/views/views_fct/fct_movimientos_diarios_remesas_contable.view"
include: "/views/views_lkp/lkp_fechas.view"
include: "/views/views_lkp/lkp_especies.view"
include: "/views/views_lkp/lkp_unidad_de_acceso.view"
include: "/views/views_lkp/lkp_bancos.view"
include: "/views/views_lkp/lkp_plan_cuentas.view"
include: "/views/views_lkp/lkp_sucursales_cuenta.view"

explore: fct_movimientos_diarios_remesas_contable {
  label: "Remesas | Movimientos Diarios"
  conditionally_filter: {
    filters: [fct_movimientos_diarios_remesas_contable.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
    }
    join: lkp_fechas {
      type: inner
      sql_on: ${fct_movimientos_diarios_remesas_contable.fecha_key} = ${lkp_fechas.fecha_key} ;;
      relationship: many_to_one
    }
  join: lkp_especies {
    type: inner
    sql_on: ${fct_movimientos_diarios_remesas_contable.especie_key} = ${lkp_especies.especie_key} ;;
    relationship: many_to_one
  }
  #join: lkp_tipos_unidad_remesa {}
  #join: lkp_tipos_movimiento_remesa {}
  #join: lkp_unidades_remesa {}
  join: lkp_unidad_de_acceso {
    type: inner
    sql_on: ${fct_movimientos_diarios_remesas_contable.unidad_acceso_key} = ${lkp_unidad_de_acceso.unidad_acceso_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_movimientos_diarios_remesas_contable.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_plan_cuentas {
    type: inner
    sql_on: ${fct_movimientos_diarios_remesas_contable.plan_cuentas_key} = ${lkp_plan_cuentas.plan_cuentas_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_emisora {
    type: inner
    sql_on: ${fct_movimientos_diarios_remesas_contable.sucursal_emisora_key} = ${lkp_sucursales_emisora.sucursal_emisora_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_receptora {
    type: inner
    sql_on: ${fct_movimientos_diarios_remesas_contable.sucursal_receptora_key} = ${lkp_sucursales_receptora.sucursal_receptora_key} ;;
    relationship: many_to_one
  }
}
