include: "/views/views_fct/fct_minutas_titulos.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_minutas_titulos {
  label: "Inversiones | Minutas Títulos Diaria"
  conditionally_filter: {
    filters: [fct_minutas_titulos.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  #join: lkp_mercados_titulos {}
  join: lkp_tipos_minuta_titulos {
    type: inner
    sql_on: ${fct_minutas_titulos.tipo_minuta_titulos_key} = ${lkp_tipos_minuta_titulos.tipo_minuta_titulos_key} ;;
    relationship: many_to_one
  }
  join: lkp_tipos_operacion_titulos {
    type: inner
    sql_on: ${fct_minutas_titulos.tipo_operacion_titulos_key} = ${lkp_tipos_operacion_titulos.tipo_operacion_titulos_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_minutas_titulos.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: inner
    sql_on: ${fct_minutas_titulos.producto_key} = ${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_minutas_titulos.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_tipos_cuenta {
    type: inner
    sql_on: ${fct_minutas_titulos.tipo_cuenta_key} = ${lkp_tipos_cuenta.tipo_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_especies {
    type: inner
    sql_on: ${fct_minutas_titulos.especie_key} = ${lkp_especies.especie_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_captacion {
    type: inner
    sql_on: ${fct_minutas_titulos.sucursal_captacion_key} = ${lkp_sucursales_captacion.sucursal_captacion_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_minutas_titulos.sucursal_cuenta_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_minutas_titulos.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas {
    type: inner
    sql_on: ${fct_minutas_titulos.cuenta_key} = ${lkp_cuentas.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
}
