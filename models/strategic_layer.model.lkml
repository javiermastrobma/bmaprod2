connection: "gcp-cdw-prod"

include: "/explores_strategic_layer/plan_sueldo/*.explore.lkml"
include: "/explores_strategic_layer/cash_management/*.explore.lkml"
include: "/explores_strategic_layer/clientes_activos_digitales/*.explore.lkml"
include: "/explores_strategic_layer/plazo_fijo/*.explore.lkml"
include: "/monitor_plan_sueldo_lookml.dashboard.lookml"



datagroup: plan_sueldo_datagroup {
  sql_trigger: SELECT MAX(fecha_key) FROM fct_situaciones_indicadores_plan_sueldos ;;
  max_cache_age: "24 hour"
}

datagroup: transacciones_y_acred_conv_datagroup {
  sql_trigger: SELECT MAX(fecha_key) FROM fct_transacciones ;;
  max_cache_age: "24 hour"
}

datagroup: relaciones_convenio_datagroup {
  sql_trigger: SELECT MAX(capita_key) FROM lkp_capitas_plan_sueldo ;;
  max_cache_age: "24 hour"
}

datagroup: cross_sell_datagroup {
  sql_trigger: SELECT MAX(fecha_key) FROM fct_situaciones_personas_fisicas ;;
}
datagroup: pago_a_proveedores_datagroup {
  sql_trigger: SELECT MAX(fecha_ultima_actualizacion_key) FROM fct_ordenes_pago_proveedores;;
  max_cache_age: "24 hour"
}

datagroup: recaudaciones_datagroup {
  sql_trigger: SELECT MAX(fecha_pago_key) FROM fct_recaudaciones;;
  max_cache_age: "24 hour"
}

datagroup: recaudaciones_acreditaciones_dia_datagroup {
  sql_trigger: SELECT MAX(fecha_pago_key) FROM fct_recaudaciones;;
  max_cache_age: "24 hour"
}

datagroup: situaciones_convenio_datagroup {
  sql_trigger: SELECT MAX(fecha_key) FROM fct_situaciones_convenios;;
  max_cache_age: "24 hour"
}

datagroup: trx_causal_datagroup {
  sql_trigger: SELECT MAX(fecha_key) FROM fct_transacciones;;
  max_cache_age: "24 hour"
}

datagroup: valores_al_cobro_datagroup {
  sql_trigger: SELECT MAX(fecha_cancelacion_key) FROM fct_seguimiento_cheques;;
  max_cache_age: "24 hour"
}

#JOIN PDT POP_FANOUT CON PS
datagroup: fct_saldos_datagroup {
  sql_trigger: SELECT MAX(fecha_key) FROM fct_saldos ;;
  max_cache_age: "24 hour"
}
