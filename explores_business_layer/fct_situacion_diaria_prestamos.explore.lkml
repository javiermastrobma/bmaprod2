include: "/views/views_fct/fct_situacion_diaria_prestamos.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_situacion_diaria_prestamos {
  label: "Activas | Situacion Préstamos Diaria"

  conditionally_filter: {
    filters: [fct_situacion_diaria_prestamos.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_situacion_diaria_prestamos.fecha_key} = ${lkp_fechas.fecha_key}  ;;
    relationship: many_to_one
  }
  join: lkp_prestamos {
    type: inner
    sql_on: ${fct_situacion_diaria_prestamos.cuenta_key} = ${lkp_prestamos.cuenta_key}  ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_situacion_diaria_prestamos.sucursal_cuenta_key}  = ${lkp_sucursales_cuenta.sucursal_cuenta_key}  ;;
    relationship: many_to_one
  }
  join: lkp_situaciones_deudor_banco {
    type: inner
    sql_on: ${fct_situacion_diaria_prestamos.situacion_deudor_key} = ${lkp_situaciones_deudor_banco.situacion_deudor_banco_key}  ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_situacion_diaria_prestamos.banco_key} = ${lkp_bancos.banco_key}  ;;
    relationship: many_to_one
  }
  join: lkp_unidades_recupero {
    type: inner
    sql_on: ${fct_situacion_diaria_prestamos.unidad_recupero_key} = ${lkp_unidades_recupero.unidad_recupero_key}  ;;
    relationship: many_to_one
  }
  join: lkp_unidades_cobranza {
    type: inner
    sql_on: ${fct_situacion_diaria_prestamos.unidad_cobranza_key} = ${lkp_unidades_cobranza.unidad_cobranza_key}  ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_recupero {
    type: inner
    sql_on: ${fct_situacion_diaria_prestamos.oficial_recupero_key} = ${lkp_oficiales_recupero.oficial_recupero_key}  ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_cobranza {
    type: inner
    sql_on: ${fct_situacion_diaria_prestamos.oficial_cobranza_key} = ${lkp_oficiales_cobranza.oficial_cobranza_key}  ;;
    relationship: many_to_one
  }
  join: lkp_estudios_externos_recupero {
    type: inner
    sql_on: ${fct_situacion_diaria_prestamos.estudio_externo_recupero_key} = ${lkp_estudios_externos_recupero.estudio_externo_key}  ;;
    relationship: many_to_one
  }
  join: lkp_estudios_externos_cobranza {
    type: inner
    sql_on: ${fct_situacion_diaria_prestamos.estudio_externo_cobranza_key} = ${lkp_estudios_externos_cobranza.estudio_externo_key}  ;;
    relationship: many_to_one
  }
  # join: lkp_estados_gestion {
  #   type: inner
  #   sql_on: fct_situacion_diaria_prestamos =  ;;
  #   relationship: many_to_one
  # }
  join: lkp_estado_deuda {
    type: inner
    sql_on: ${fct_situacion_diaria_prestamos.estado_deuda_key} = ${lkp_estado_deuda.estado_deuda_key}  ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: inner
    sql_on: ${fct_situacion_diaria_prestamos.producto_key} = ${lkp_productos.producto_key}  ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_cuenta {
    type: inner
    sql_on: ${fct_situacion_diaria_prestamos.oficial_cuenta_key} =  ${lkp_oficiales_cuenta.oficial_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_mercados {
    type: inner
    sql_on: ${fct_situacion_diaria_prestamos.mercado_key} = ${lkp_mercados.mercado_key}  ;;
    relationship: many_to_one
  }
  join: lkp_especies {
    type: inner
    sql_on: ${fct_situacion_diaria_prestamos.especie_key} = ${lkp_especies.especie_key}  ;;
    relationship: many_to_one
  }
  join: lkp_clientes_firmantes {
    type: inner
    sql_on: ${fct_situacion_diaria_prestamos.cliente_firmante_key} = ${lkp_clientes_firmantes.cliente_key}  ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_situacion_diaria_prestamos.cliente_key} = ${lkp_clientes_completa.cliente_key}  ;;
    relationship: many_to_one
  }
  join: lkp_bancas{
    type: inner
    sql_on: ${fct_situacion_diaria_prestamos.banca_key} = ${lkp_bancas.banca_key}  ;;
    relationship: many_to_one
  }
  join: lkp_cuentas {
    type: inner
    sql_on: ${fct_situacion_diaria_prestamos.cuenta_key} = ${lkp_cuentas.cuenta_key}  ;;
    relationship: many_to_one
  }
  join: lkp_formas_cobro {
    type: inner
    sql_on: ${fct_situacion_diaria_prestamos.forma_cobro_key} = ${lkp_formas_cobro.forma_cobro_key}  ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
}
