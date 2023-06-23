include: "/views/views_fct/fct_situaciones_datanet.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_situaciones_datanet {
  label: "Pasivas | Transferencias Datanet"
  conditionally_filter: {
    filters: [fct_situaciones_datanet.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_situaciones_datanet.fecha_key} = ${lkp_fechas.fecha_key}  ;;
    relationship: many_to_one
  }
  #join: lkp_abonados_datanet {}
  #join: lkp_esquemas_comision_datanet {}
  join: lkp_productos {
    type: inner
    sql_on: ${fct_situaciones_datanet.producto_key} = ${lkp_productos.producto_key}  ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_situaciones_datanet.banco_key} = ${lkp_bancos.banco_key}  ;;
    relationship: many_to_one
  }
  join: lkp_actividades {
    type: inner
    sql_on: ${fct_situaciones_datanet.actividad_key} = ${lkp_actividades.actividad_key}  ;;
    relationship: many_to_one
  }
  join: lkp_residencias {
    type: inner
    sql_on: ${fct_situaciones_datanet.residencia_key} = ${lkp_residencias.residencia_key}  ;;
    relationship: many_to_one
  }
  join: lkp_tipos_persona {
    type: inner
    sql_on: ${fct_situaciones_datanet.tipo_persona_key} = ${lkp_tipos_persona.tipo_persona_key}  ;;
    relationship: many_to_one
  }
  join: lkp_sectores {
    type: inner
    sql_on: ${fct_situaciones_datanet.sector_key} = ${lkp_sectores.sector_key}  ;;
    relationship: many_to_one
  }
  join: lkp_bancas {
    type: inner
    sql_on: ${fct_situaciones_datanet.banca_key} = ${lkp_bancas.banca_key}  ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_situaciones_datanet.sucursal_cuenta_transferida_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key}  ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_cuenta {
    type: inner
    sql_on: ${fct_situaciones_datanet.oficial_cuenta_key} = ${lkp_oficiales_cuenta.oficial_cuenta_key}  ;;
    relationship: many_to_one
  }
  join: lkp_cuentas {
    type: inner
    sql_on: ${fct_situaciones_datanet.cuenta_key} = ${lkp_cuentas.cuenta_key}  ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_situaciones_datanet.cliente_key} = ${lkp_clientes_completa.cliente_key}  ;;
    relationship: many_to_one
  }
  join: lkp_tipos_operacion_datanet {
    type: inner
    sql_on: ${fct_situaciones_datanet.tipo_operacion_datanet_key} = ${lkp_tipos_operacion_datanet.tipo_operacion_datanet_key}  ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
}
