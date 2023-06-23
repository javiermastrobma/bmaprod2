include: "/views/views_fct/fct_tenencias_titulos.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_tenencias_titulos {
  label: "Inversiones | Tenencia Títulos Diaria"
  conditionally_filter: {
    filters: [fct_tenencias_titulos.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_tenencias_titulos.fecha_key} = ${lkp_fechas.fecha_key}  ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: inner
    sql_on: ${fct_tenencias_titulos.producto_key} = ${lkp_productos.producto_key}  ;;
    relationship: many_to_one
  }
  join: lkp_cuentas {
    type: inner
    sql_on: ${fct_tenencias_titulos.cuenta_key} = ${lkp_cuentas.cuenta_key}  ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_tenencias_titulos.cliente_key} = ${lkp_clientes_completa.cliente_key}  ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_tenencias_titulos.banco_key} = ${lkp_bancos.banco_key}  ;;
    relationship: many_to_one
  }
  join: lkp_tipos_cuenta {
    type: inner
    sql_on: ${fct_tenencias_titulos.tipo_cuenta_key} = ${lkp_tipos_cuenta.tipo_cuenta_key}  ;;
    relationship: many_to_one
  }
  join: lkp_especies {
    type: inner
    sql_on: ${fct_tenencias_titulos.especie_key} = ${lkp_especies.especie_key}  ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_captacion {
    type: inner
    sql_on: ${fct_tenencias_titulos.sucursal_captacion_key} = ${lkp_sucursales_captacion.sucursal_captacion_key}  ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_tenencias_titulos.sucursal_cuenta_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key}  ;;
    relationship: many_to_one
  }

}
