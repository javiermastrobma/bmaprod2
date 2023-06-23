include: "/views/views_fct/fct_situacion_diaria_acuerdos.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_situacion_diaria_acuerdos {
  label: "Activas | Acuerdos Saldos Diarios"
  description: "Detalle de Acuerdos en Cuenta Corriente por Cuenta Corriente con su respectiva utilización y vigencia."
  conditionally_filter: {
    filters: [fct_situacion_diaria_acuerdos.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_acuerdos {
    type: inner
    sql_on: ${fct_situacion_diaria_acuerdos.acuerdo_key} = ${lkp_acuerdos.acuerdo_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_recupero {
    type: inner
    sql_on: ${fct_situacion_diaria_acuerdos.estado_recupero_key} = ${lkp_estados_recupero.estado_recupero_key} ;;
    relationship: many_to_one
  }
  join: lkp_residencias {
    type: inner
    sql_on: ${fct_situacion_diaria_acuerdos.residencia_key} = ${lkp_residencias.residencia_key} ;;
    relationship: many_to_one
  }
  join: lkp_sectores {
    type:inner
    sql_on: ${fct_situacion_diaria_acuerdos.sector_key} = ${lkp_sectores.sector_key} ;;
    relationship: many_to_one
  }
  join: lkp_actividades {
    type: inner
    sql_on: ${fct_situacion_diaria_acuerdos.actividad_key} = ${lkp_actividades.actividad_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_situacion_diaria_acuerdos.sucursal_cuenta_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_garantias_recibidas {
    type: inner
    sql_on: ${fct_situacion_diaria_acuerdos.garantia_key} = ${lkp_garantias_recibidas.garantia_recibida_key} ;;
    relationship: many_to_one
  }
  join: lkp_tipos_liquidacion_intereses {
    type: inner
    sql_on: ${fct_situacion_diaria_acuerdos.tipo_liquidacion_intereses_key} = ${lkp_tipos_liquidacion_intereses.tipo_liquidacion_intereses_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_castigados  {
    type: inner
    sql_on: ${fct_situacion_diaria_acuerdos.estado_castigado_key} = ${lkp_estados_castigados.estado_castigado_key} ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_recupero {
    type: inner
    sql_on: ${fct_situacion_diaria_acuerdos.oficial_recupero_key} = ${lkp_oficiales_recupero.oficial_recupero_key} ;;
    relationship: many_to_one
  }
  join: lkp_unidades_cobranza {
    type:  inner
    sql_on: ${fct_situacion_diaria_acuerdos.unidad_cobro_key} = ${lkp_unidades_cobranza.unidad_cobranza_key} ;;
    relationship: many_to_one
  }
  join: lkp_unidades_recupero {
    type: inner
    sql_on: ${fct_situacion_diaria_acuerdos.unidad_recupero_key} = ${lkp_unidades_recupero.unidad_recupero_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_situacion_diaria_acuerdos.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_cobranza {
    type: inner
    sql_on: ${fct_situacion_diaria_acuerdos.oficial_cobro_key} = ${lkp_oficiales_cobranza.oficial_cobranza_key} ;;
    relationship: many_to_one
  }
  join: lkp_estudios_externos_recupero {
    type: inner
    sql_on: ${fct_situacion_diaria_acuerdos.estudio_externo_recupero_key} = ${lkp_estudios_externos_recupero.estudio_externo_key} ;;
    relationship: many_to_one
  }
  join: lkp_estudios_externos_cobranza {
    type: inner
    sql_on: ${fct_situacion_diaria_acuerdos.estudio_externo_cobro_key} = ${lkp_estudios_externos_cobranza.estudio_externo_key} ;;
    relationship: many_to_one
  }
  join: lkp_tipos_persona  {
    type: inner
    sql_on: ${fct_situacion_diaria_acuerdos.tipo_persona_key} = ${lkp_tipos_persona.tipo_persona_key} ;;
    relationship: many_to_one
  }
  join: lkp_categorias_cuenta {
    type: inner
    sql_on: ${fct_situacion_diaria_acuerdos.categoria_cuenta_key} = ${lkp_categorias_cuenta.categoria_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: inner
    sql_on: ${fct_situacion_diaria_acuerdos.producto_key} = ${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_cuenta {
    type: inner
    sql_on: ${fct_situacion_diaria_acuerdos.oficial_cuenta_key} = ${lkp_oficiales_cuenta.oficial_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_mercados {
    type: inner
    sql_on: ${fct_situacion_diaria_acuerdos.mercado_key} = ${lkp_mercados.mercado_key} ;;
    relationship: many_to_one
  }
  join: lkp_especies {
    type: inner
    sql_on: ${fct_situacion_diaria_acuerdos.especie_key} = ${lkp_especies.especie_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_situacion_diaria_acuerdos.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancas {
    type: inner
    sql_on: ${fct_situacion_diaria_acuerdos.banca_key} = ${lkp_bancas.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas {
    type: inner
    sql_on: ${fct_situacion_diaria_acuerdos.cuenta_key} = ${lkp_cuentas.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_situacion_diaria_acuerdos.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
}
