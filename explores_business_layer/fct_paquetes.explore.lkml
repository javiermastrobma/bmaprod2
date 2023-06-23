include: "/views/views_fct/fct_paquetes.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_paquetes {
  label: "Pasivas | Paquetes Stock Diario"
  description:"Detalle de paquetes y cuentas pasivas asociadas (CA/CC)."
  conditionally_filter: {
    filters: [fct_paquetes.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  # join: lkp_paquetes {
  #   type: inner
  #   sql_on: ${fct_paquetes.paquete_id} = ${lkp_paquetes.paquete_key} ;;
  #   relationship: many_to_one
  # }
  # join: lkp_canales_venta {
  #   type: inner
  #   sql_on: ${fct_paquetes.canal_venta_key} = ${lkp_canales_venta.canal_venta_key} ;;
  #   relationship: many_to_one
  # }
  join: lkp_bancas {
    type: inner
    sql_on: ${fct_paquetes.banca_key} = ${lkp_bancas.banca_key} ;;
    relationship: many_to_one
  }
  # join: lkp_personal {
  #   type: inner
  #   sql_on: ${fct_paquetes.personal_cierre_key} = ${lkp_personal.personal_key} ;;
  #   relationship: many_to_one
  # }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_paquetes.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_cuenta {
    type: inner
    sql_on: ${fct_paquetes.estado_cuenta_key} = ${lkp_estados_cuenta.estado_cuenta_key} ;;
    relationship: many_to_one
  }
  # join: lkp_vendedores {
  #   type: inner
  #   sql_on: ${fct_paquetes.vendedor_key} = ${lkp_vendedores.vendedor_key} ;;
  #   relationship: many_to_one
  # }
  join: lkp_causas_cierre {
    type: inner
    sql_on: ${fct_paquetes.causa_cierre_key} = ${lkp_causas_cierre.causa_cierre_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_paquetes.sucursal_cuenta_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: inner
    sql_on: ${fct_paquetes.producto_2_key} = ${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos_paquete {
    type: inner
    sql_on: ${fct_paquetes.producto_key} = ${lkp_productos_paquete.producto_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas {
    type: inner
    sql_on: ${fct_paquetes.cuenta_key} = ${lkp_cuentas.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_paquetes.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_paquetes {
    type: inner
    sql_on: ${fct_paquetes.estado_paquete_key} = ${lkp_estados_paquetes.estado_paquete_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_paquetes.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
}
