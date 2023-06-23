include: "/views/views_fct/fct_situaciones_cuentas_tc.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_situaciones_cuentas_tc {
  label: "Medios de Pago | Cuentas TC"
  conditionally_filter: {
    filters: [fct_situaciones_cuentas_tc.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_situaciones_cuentas_tc.fecha_key} =  ${lkp_fechas.fecha_key};;
    relationship: many_to_one
  }
  join: lkp_cuentas_tc {
    type: inner
    sql_on: ${fct_situaciones_cuentas_tc.cuenta_tc_key} = ${lkp_cuentas_tc.cuenta_tc_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_situaciones_cuentas_tc.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_sectores {
    type: inner
    sql_on: ${fct_situaciones_cuentas_tc.sector_key} = ${lkp_sectores.sector_key} ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_cuenta {
    type: inner
    sql_on: ${fct_situaciones_cuentas_tc.oficial_cuenta_key} = ${lkp_oficiales_cuenta.oficial_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_companias_seguros {
    type: inner
    sql_on: ${fct_situaciones_cuentas_tc.compania_seguro_vida_key} = ${lkp_companias_seguros.compania_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_paquetes {
    type: inner
    sql_on: ${fct_situaciones_cuentas_tc.estado_paquete_key} = ${lkp_estados_paquetes.estado_paquete_key} ;;
    relationship: many_to_one
  }
  join: lkp_tipos_paquete {
    type: inner
    sql_on: ${fct_situaciones_cuentas_tc.tipo_paquete_key} = ${lkp_tipos_paquete.tipos_paquete_key} ;;
    relationship: many_to_one
  }
   join: lkp_paquetes {
     type: inner
     sql_on: ${fct_situaciones_cuentas_tc.cuenta_paquete_key} = ${lkp_paquetes.paquete_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: inner
    sql_on: ${fct_situaciones_cuentas_tc.producto_key} = ${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
  join: lkp_residencias {
    type: inner
    sql_on: ${fct_situaciones_cuentas_tc.residencia_key} = ${lkp_residencias.residencia_key} ;;
    relationship: many_to_one
  }
  join:  lkp_sucursales_cuenta{
    type: inner
    sql_on: ${fct_situaciones_cuentas_tc.sucursal_cuenta_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_situaciones_cuentas_tc.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_actividades {
    type: inner
    sql_on: ${fct_situaciones_cuentas_tc.actividad_key} = ${lkp_actividades.actividad_key} ;;
    relationship: many_to_one
  }
  join: lkp_campanias {
    type: inner
    sql_on: ${fct_situaciones_cuentas_tc.campania_key}= ${lkp_campanias.campania_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancas {
    type: inner
    sql_on: ${fct_situaciones_cuentas_tc.banca_key} = ${lkp_bancas.banca_key} ;;
    relationship: many_to_one
  }
#   join: lkp_cliente_cumplidor {
#     type: inner
#     sql_on:  ;;
#   relationship: many_to_one
# }
  join: lkp_grupos_afinidad_1 {
    type: inner
    sql_on: ${fct_situaciones_cuentas_tc.grupo_afinidad_key} = ${lkp_grupos_afinidad_1.grupo_afinidad_key} ;;
    relationship: many_to_one
  }
  join: lkp_modelos_liquidacion_tc {
    type: inner
    sql_on: ${fct_situaciones_cuentas_tc.modelo_liquidacion_tc_key} = ${lkp_modelos_liquidacion_tc.modelo_liquidacion_tc_key} ;;
    relationship: many_to_one
  }
#   join: lkp_otros_atributos_cuentas_tc {
#     type: inner
#     sql_on:  ;;
#   relationship: many_to_one
# }
  join: lkp_debitos_tc {
    type: inner
    sql_on: ${fct_situaciones_cuentas_tc.debitos_tc_key} = ${lkp_debitos_tc.debitos_tc_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_cuentas_tc {
    type: inner
    sql_on: ${fct_situaciones_cuentas_tc.estado_cuenta_tc_key} = ${lkp_estados_cuentas_tc.estado_cuenta_tc_key} ;;
    relationship: many_to_one
  }
  join: lkp_carteras_tc {
    type: inner
    sql_on: ${fct_situaciones_cuentas_tc.cartera_tc_key} = ${lkp_carteras_tc.cartera_tc_key} ;;
  relationship: many_to_one
  }
}
