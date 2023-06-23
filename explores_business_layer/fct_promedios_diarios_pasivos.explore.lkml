include: "/views/views_fct/fct_promedios_diarios_pasivos.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_promedios_diarios_pasivos {
  label: "Pasivas | Promedios Diarios"
  description: "Detalle de saldos y promedios diarios de caja de ahorro, cuenta corriente y plazo fijo. El promedio diario se calcula como el acumulado de saldos al día dividido la cantidad de días transcurridos del mes. Contiene ajustes fecha valor."
  conditionally_filter: {
    filters: [fct_promedios_diarios_pasivos.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  sql_always_where: {% if pop_fanout.pop._in_query %}
  ${lkp_fechas.fecha_key} = ${pop_fanout.fecha_key}
  {% else %}
  ${lkp_fechas.fecha_key} = ${fct_promedios_diarios_pasivos.fecha_key}
  {% endif %}
  ;;
  join: lkp_clientes_completa {
    type: left_outer
    sql_on: ${fct_promedios_diarios_pasivos.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas {
    type: left_outer
    sql_on: ${fct_promedios_diarios_pasivos.cuenta_key} = ${lkp_cuentas.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancas {
    type: left_outer
    sql_on: ${fct_promedios_diarios_pasivos.banca_key} = ${lkp_bancas.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_cuenta {
    type: left_outer
    sql_on: ${fct_promedios_diarios_pasivos.oficial_cuenta_key} = ${lkp_oficiales_cuenta.oficial_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: left_outer
    sql_on: ${fct_promedios_diarios_pasivos.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: left_outer
    sql_on: ${fct_promedios_diarios_pasivos.producto_key} = ${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: left_outer
    sql_on: ${fct_promedios_diarios_pasivos.sucursal_cuenta_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: left_outer
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
  join: lkp_sectores {
    type: left_outer
    sql_on: ${fct_promedios_diarios_pasivos.sector_key} = ${lkp_sectores.sector_key} ;;
    relationship: many_to_one
  }
  join: lkp_residencias {
    type: left_outer
    sql_on: ${fct_promedios_diarios_pasivos.residencia_key} = ${lkp_residencias.residencia_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${lkp_fechas.fecha_key} = ${pop_fanout.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_tipos_persona {
    type: left_outer
    sql_on: ${fct_promedios_diarios_pasivos.tipo_persona_key} = ${lkp_tipos_persona.tipo_persona_key} ;;
    relationship: many_to_one
  }
  join: lkp_actividades {
    type: left_outer
    sql_on: ${fct_promedios_diarios_pasivos.actividad_key} = ${lkp_actividades.actividad_key} ;;
    relationship: many_to_one
  }
  join: lkp_especies {
    type: left_outer
    sql_on: ${fct_promedios_diarios_pasivos.especie_key} = ${lkp_especies.especie_key} ;;
    relationship: many_to_one
  }
  join: pop_fanout {
    type: inner
    sql_on: ${fct_promedios_diarios_pasivos.fecha_key} = ${pop_fanout.fecha_pop_key} ;;
  relationship: many_to_one
  }
}
