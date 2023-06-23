include: "/views/views_fct/fct_pagos_prestamos_rms.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_pagos_prestamos_rms {
  label: "Riesgos | Pagos Préstamos RMS Diaria"
  conditionally_filter: {
    filters: [fct_pagos_prestamos_rms.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_pagos_prestamos_rms.fecha_key} = ${lkp_fechas.fecha_key}  ;;
    relationship: many_to_one
  }
  join: lkp_destinos_prestamo {
    type: inner
    sql_on: ${fct_pagos_prestamos_rms.destino_prestamo_key} = ${lkp_destinos_prestamo.destino_prestamo_key}  ;;
    relationship: many_to_one
  }
  # join: lkp_transacciones_rms {
  #   type: inner
  #   sql_on: fct_pagos_prestamos_rms = lkp_transacciones_rms  ;;
  #   relationship: many_to_one
  # }
  # join: lkp_tipo_cambio_rms {
  #   type: inner
  #   sql_on: fct_pagos_prestamos_rms = lkp_tipo_cambio_rms  ;;
  #   relationship: many_to_one
  # }
  join: lkp_cuentas {
    type: inner
    sql_on: ${fct_pagos_prestamos_rms.cuenta_key} = ${lkp_cuentas.cuenta_key}  ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_pagos_prestamos_rms.sucursal_cuenta_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key}  ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key}  ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: inner
    sql_on: ${fct_pagos_prestamos_rms.producto_key} = ${lkp_productos.producto_key}  ;;
    relationship: many_to_one
  }
  join: lkp_residencias {
    type: inner
    sql_on: ${fct_pagos_prestamos_rms.residencia_key} =  ${lkp_residencias.residencia_key} ;;
    relationship: many_to_one
  }
  join: lkp_tipos_cartera {
    type: inner
    sql_on: ${fct_pagos_prestamos_rms.tipo_cartera_key} = ${lkp_tipos_cartera.tipo_cartera_key}  ;;
    relationship: many_to_one
  }
  join: lkp_tipos_persona {
    type: inner
    sql_on: ${fct_pagos_prestamos_rms.tipo_persona_key} = ${lkp_tipos_persona.tipo_persona_key}  ;;
    relationship: many_to_one
  }
  join: lkp_sectores {
    type: inner
    sql_on: ${fct_pagos_prestamos_rms.sector_key} = ${lkp_sectores.sector_key}  ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_pagos_prestamos_rms.banco_key} = ${lkp_bancos.banco_key}  ;;
    relationship: many_to_one
  }
  join: lkp_situaciones_deudor_bcra {
    type: inner
    sql_on: ${fct_pagos_prestamos_rms.situacion_deudor_bcra_key} = ${lkp_situaciones_deudor_bcra.situacion_deudor_bcra_key}  ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_cuenta {
    type: inner
    sql_on: ${fct_pagos_prestamos_rms.oficial_cuenta_key} = ${lkp_oficiales_cuenta.oficial_cuenta_key}  ;;
    relationship: many_to_one
  }
  join: lkp_actividades {
    type: inner
    sql_on: ${fct_pagos_prestamos_rms.actividad_key} = ${lkp_actividades.actividad_key}  ;;
    relationship: many_to_one
  }
  join: lkp_mercados {
    type: inner
    sql_on: ${fct_pagos_prestamos_rms.mercado_key} = ${lkp_mercados.mercado_key}  ;;
    relationship: many_to_one
  }
  join: lkp_especies {
    type: inner
    sql_on: ${fct_pagos_prestamos_rms.especie_key} = ${lkp_especies.especie_key}  ;;
    relationship: many_to_one
  }
  join: lkp_estados_cuenta {
    type: inner
    sql_on: ${fct_pagos_prestamos_rms.estado_cuenta_key} = ${lkp_estados_cuenta.estado_cuenta_key}  ;;
    relationship: many_to_one
  }
  join: lkp_categorias_cuenta {
    type: inner
    sql_on: ${fct_pagos_prestamos_rms.categoria_cuenta_key} = ${lkp_categorias_cuenta.categoria_cuenta_key}  ;;
    relationship: many_to_one
  }
  join: lkp_bancas {
    type: inner
    sql_on: ${fct_pagos_prestamos_rms.banca_key} = ${lkp_bancas.banca_key}  ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_pagos_prestamos_rms.cliente_key} = ${lkp_clientes_completa.cliente_key}  ;;
    relationship: many_to_one
  }
}
