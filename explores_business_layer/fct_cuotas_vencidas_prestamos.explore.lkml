include: "/views/views_fct/fct_cuotas_vencidas_prestamos.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_cuotas_vencidas_prestamos {
  label: "Activas | Cuotas Vencidas Préstamos Diaria"

  conditionally_filter: {
    filters: [fct_cuotas_vencidas_prestamos.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }

  join: lkp_fechas {
    type: inner
    sql_on: ${fct_cuotas_vencidas_prestamos.fecha_key} =  ${lkp_fechas.fecha_key};;
    relationship: many_to_one
  }
  join: lkp_prestamos {
    type: inner
    sql_on: ${fct_cuotas_vencidas_prestamos.cuenta_key} = ${lkp_prestamos.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_cuotas_vencidas_prestamos.sucursal_cuenta_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key}  ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_cuotas_vencidas_prestamos.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_actividades {
    type: inner
    sql_on: ${fct_cuotas_vencidas_prestamos.actividad_key} = ${lkp_actividades.actividad_key} ;;
    relationship: many_to_one
  }
  join: lkp_sectores {
    type: inner
    sql_on: ${fct_cuotas_vencidas_prestamos.sector_key} = ${lkp_sectores.sector_key} ;;
    relationship: many_to_one
  }
  join: lkp_residencias {
    type: inner
    sql_on: ${fct_cuotas_vencidas_prestamos.residencia_key} = ${lkp_residencias.residencia_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_recupero {
    type: inner
    sql_on: ${fct_cuotas_vencidas_prestamos.estado_recupero_key} = ${lkp_estados_recupero.estado_recupero_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_cuenta {
    type: inner
    sql_on: ${fct_cuotas_vencidas_prestamos.estado_cuenta_key} = ${lkp_estados_cuenta.estado_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_unidades_recupero {
    type: inner
    sql_on: ${fct_cuotas_vencidas_prestamos.unidad_recupero_key} = ${lkp_unidades_recupero.unidad_recupero_key} ;;
    relationship: many_to_one
  }
  join: lkp_unidades_cobranza {
    type: inner
    sql_on: ${fct_cuotas_vencidas_prestamos.unidad_cobranza_key} = ${lkp_unidades_cobranza.unidad_cobranza_key} ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_recupero {
    type: inner
    sql_on: ${fct_cuotas_vencidas_prestamos.oficial_recupero_key} = ${lkp_oficiales_recupero.oficial_recupero_key} ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_cobranza {
    type: inner
    sql_on: ${fct_cuotas_vencidas_prestamos.oficial_cobranza_key} = ${lkp_oficiales_cobranza.oficial_cobranza_key}  ;;
    relationship: many_to_one
  }
  join: lkp_estudios_externos_recupero {
    type: inner
    sql_on: ${fct_cuotas_vencidas_prestamos.estudio_externo_recupero_key} = ${lkp_estudios_externos_recupero.estudio_externo_key} ;;
    relationship: many_to_one
  }
  join: lkp_estudios_externos_cobranza {
    type: inner
    sql_on: ${fct_cuotas_vencidas_prestamos.estudio_externo_cobranza_key} = ${lkp_estudios_externos_cobranza.estudio_externo_key} ;;
    relationship: many_to_one
  }
  join: lkp_tipos_persona {
    type: inner
    sql_on: ${fct_cuotas_vencidas_prestamos.tipo_persona_key} = ${lkp_tipos_persona.tipo_persona_key} ;;
    relationship: many_to_one
  }
  join: lkp_categorias_cuenta {
    type: inner
    sql_on: ${fct_cuotas_vencidas_prestamos.categoria_cuenta_key} = ${lkp_categorias_cuenta.categoria_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: inner
    sql_on: ${fct_cuotas_vencidas_prestamos.producto_key} = ${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_cuenta {
    type: inner
    sql_on: ${fct_cuotas_vencidas_prestamos.oficial_cuenta_key} = ${lkp_oficiales_cuenta.oficial_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_mercados {
    type: inner
    sql_on: ${fct_cuotas_vencidas_prestamos.mercado_key} = ${lkp_mercados.mercado_key}  ;;
    relationship: many_to_one
  }
  join: lkp_especies {
    type: inner
    sql_on: ${fct_cuotas_vencidas_prestamos.especie_key} = ${lkp_especies.especie_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_cuotas_vencidas_prestamos.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancas {
    type: inner
    sql_on: ${fct_cuotas_vencidas_prestamos.banca_key} = ${lkp_bancas.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas {
    type: inner
    sql_on: ${fct_cuotas_vencidas_prestamos.cuenta_key} = ${lkp_cuentas.cuenta_key} ;;
    relationship: many_to_one
  }
}
