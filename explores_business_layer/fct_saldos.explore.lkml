include: "/views/views_fct/fct_saldos.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_saldos {
  persist_with: fct_saldos_datagroup
  label: "Pasivas | Saldos Diarios"
  description: "Detalle de saldos diarios de caja de ahorro, cuenta corriente, plazo fijo y adelantos en cuenta corriente (utilizados). PK: Fecha, Código Cuenta"
  conditionally_filter: {
    filters: [fct_saldos.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo, pop_fanout.fecha_date]
  }
  sql_always_where: {% if pop_fanout.pop._in_query or pop_fanout.dia_base._in_query or pop_fanout.dia_ant._in_query or pop_fanout.fin_anio_ant._in_query or pop_fanout.fin_mes_ant._in_query or pop_fanout.mismo_mes_anio_ant._in_query %}
            ${lkp_fechas.fecha_key} = ${pop_fanout.fecha_key}
            {% else %}
            ${lkp_fechas.fecha_key} = ${fct_saldos.fecha_key}
            {% endif %}
             ;;

  join: lkp_cuentas {
    type: left_outer
    sql_on: ${fct_saldos.cuenta_key} = ${lkp_cuentas.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: left_outer
    sql_on: ${fct_saldos.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_tipos_persona {
    type: left_outer
    sql_on: ${fct_saldos.tipo_persona_key} = ${lkp_tipos_persona.tipo_persona_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas {
    type: inner ##left_outer
    sql_on:${lkp_fechas.fecha_key} = ${pop_fanout.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_fecha_vencimiento {
    type: left_outer
    sql_on: ${fct_saldos.fecha_vencimiento_key} = ${lkp_fecha_vencimiento.fecha_vencimiento_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: left_outer
    sql_on: ${fct_saldos.producto_key} = ${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
  #Banca Histórica
  join: lkp_bancas {
    type: left_outer
    sql_on: ${fct_saldos.banca_key} = ${lkp_bancas.banca_key} ;;
    relationship: many_to_one
  }
  #Banca Comite
  join: lkp_bancas_comite {
    type: left_outer
    sql_on: ${lkp_clientes_completa.banca_comite_key} = ${lkp_bancas_comite.banca_key} ;;
    relationship: many_to_one
  }
  #Banca Actual
  join: lkp_banca_actual {
    type: left_outer
    sql_on: ${lkp_clientes_completa.banca_key} = ${lkp_banca_actual.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_cuenta {
    type: left_outer
    sql_on: ${fct_saldos.oficial_cuenta_key} = ${lkp_oficiales_cuenta.oficial_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_sectores {
    type: left_outer
    sql_on: ${fct_saldos.sector_key} = ${lkp_sectores.sector_key} ;;
    relationship: many_to_one
  }
  join: lkp_actividades {
    type: left_outer
    sql_on: ${fct_saldos.actividad_key} = ${lkp_actividades.actividad_key} ;;
    relationship: many_to_one
  }
  join: lkp_residencias {
    type: left_outer
    sql_on: ${fct_saldos.residencia_key} = ${lkp_residencias.residencia_key} ;;
    relationship: many_to_one
  }
  join: lkp_tipos_cartera {
    type: left_outer
    sql_on: ${fct_saldos.tipo_cartera_key} = ${lkp_tipos_cartera.tipo_cartera_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: left_outer
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
  join: lkp_situaciones_deudor_banco {
    type: left_outer
    sql_on: ${fct_saldos.situacion_deudor_banco_key} = ${lkp_situaciones_deudor_banco.situacion_deudor_banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_situaciones_deudor_bcra {
    type: left_outer
    sql_on: ${fct_saldos.situacion_deudor_bcra_key} = ${lkp_situaciones_deudor_bcra.situacion_deudor_bcra_key} ;;
    relationship: many_to_one
  }
  join: lkp_tipos_cuenta {
    type: left_outer
    sql_on: ${fct_saldos.tipo_cuenta_key} = ${lkp_tipos_cuenta.tipo_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_abonos {
    type: left_outer
    sql_on: ${fct_saldos.abono_key} = ${lkp_abonos.abono_key} ;;
    relationship: many_to_one
  }
  join: lkp_categorias_cuenta {
    type: left_outer
    sql_on: ${fct_saldos.categoria_cuenta_key} = ${lkp_categorias_cuenta.categoria_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_bloqueos {
    type: left_outer
    sql_on: ${fct_saldos.bloqueo_key} = ${lkp_bloqueos.bloqueo_key} ;;
    relationship: many_to_one
  }
  join: lkp_inactividad {
    type: left_outer
    sql_on: ${fct_saldos.inactividad_key} = ${lkp_inactividad.inactividad_key} ;;
    relationship: many_to_one
  }
  join: lkp_especies {
    type: left_outer
    sql_on: ${fct_saldos.especie_key} = ${lkp_especies.especie_key} ;;
    relationship: many_to_one
  }
  join: lkp_clasificaciones_contables {
    type: inner
    sql_on: ${fct_saldos.clasificacion_contable_key} = ${lkp_clasificaciones_contables.clasificacion_contable_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_cuenta {
    type: left_outer
    sql_on: ${fct_saldos.estado_cuenta_key} = ${lkp_estados_cuenta.estado_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: left_outer
    sql_on: ${fct_saldos.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_acuerdos {
    type: left_outer
    sql_on: ${fct_saldos.acuerdo_key} = ${lkp_acuerdos.acuerdo_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: left_outer
    sql_on: ${fct_saldos.sucursal_cuenta_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
  join: pop_fanout {
    type: inner
    sql_on: ${fct_saldos.fecha_key} = ${pop_fanout.fecha_pop_key} ;;
    relationship: many_to_one
  }
}
