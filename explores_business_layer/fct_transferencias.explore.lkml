include: "/views/views_fct/fct_transferencias.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_transferencias {
  label: "Pasivas | Transferencias Diarias"
  description: "Detalle de transferencia recibidas y enviadas por Banco Macro en estado finalizado."
  conditionally_filter: {
    filters: [fct_transferencias.fecha_max: "yes"]
    unless: [lkp_fechas_transferencia.fecha, lkp_fechas_transferencia.periodo, lkp_fechas_compensacion.fecha, lkp_fechas_compensacion.periodo]
  }
  join: lkp_fechas_transferencia {
    fields: [lkp_fechas_transferencia.anio, lkp_fechas_transferencia.dia_semana, lkp_fechas_transferencia.fecha, lkp_fechas_transferencia.flag_fin_mes, lkp_fechas_transferencia.mes, lkp_fechas_transferencia.n_dia, lkp_fechas_transferencia.periodo, lkp_fechas_transferencia.tipo_dia]
    type: inner
    sql_on: ${fct_transferencias.fecha_transferencia_key} = ${lkp_fechas_transferencia.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas_compensacion {
    fields: [lkp_fechas_compensacion.anio, lkp_fechas_compensacion.dia_semana, lkp_fechas_compensacion.fecha, lkp_fechas_compensacion.flag_fin_mes, lkp_fechas_compensacion.mes, lkp_fechas_compensacion.n_dia, lkp_fechas_compensacion.periodo, lkp_fechas_compensacion.tipo_dia]
    type: inner
    sql_on: ${fct_transferencias.fecha_compensacion_key} = ${lkp_fechas_compensacion.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_transferencias.cliente_origen_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos_origen {
    type: inner
    sql_on: ${fct_transferencias.cuenta_origen_key} = ${lkp_bancos_origen.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos_receptor {
    type: inner
    sql_on: ${fct_transferencias.cuenta_origen_key} = ${lkp_bancos_receptor.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta_origen {
    type: inner
    sql_on: ${fct_transferencias.sucursal_origen_key} = ${lkp_sucursales_cuenta_origen.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta_receptor {
    type: inner
    sql_on: ${fct_transferencias.sucursal_receptor_key} = ${lkp_sucursales_cuenta_receptor.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_banca_origen {
    type: inner
    sql_on: ${fct_transferencias.banca_origen_key} = ${lkp_banca_origen.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_banca_receptor {
    type: inner
    sql_on: ${fct_transferencias.banca_origen_key} = ${lkp_banca_receptor.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_origen {
    type: inner
    sql_on: ${fct_transferencias.cliente_origen_key} = ${lkp_clientes_origen.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_receptor {
    type: inner
    sql_on: ${fct_transferencias.cliente_receptor_key} = ${lkp_clientes_receptor.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas_origen {
    type: inner
    sql_on: ${fct_transferencias.cuenta_origen_key} = ${lkp_cuentas_origen.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas_receptor {
    type: inner
    sql_on: ${fct_transferencias.cuenta_receptor_key} = ${lkp_cuentas_receptor.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_causales {
    type: inner
    sql_on: ${fct_transferencias.causal_key} = ${lkp_causales.causal_key} ;;
    relationship: many_to_one
  }
  join: lkp_convenios {
    type: inner
    sql_on: ${fct_transferencias.convenio_key} = ${lkp_convenios.convenio_key} ;;
    relationship: many_to_one
  }
  join: lkp_especies {
    type: inner
    sql_on: ${fct_transferencias.especie_key} = ${lkp_especies.especie_key} ;;
    relationship: many_to_one
  }
  join: lkp_medios_transferencia {
    type: inner
    sql_on: ${fct_transferencias.medio_transferencia_key} = ${fct_transferencias.medio_transferencia_key} ;;
    relationship: many_to_one
  }
  join: lkp_tipologias_transferencia {
    type: inner
    sql_on: ${fct_transferencias.tipologia_transferencia_key} = ${fct_transferencias.tipologia_transferencia_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_transferencias {
    type: inner
    sql_on: ${fct_transferencias.estado_transferencia_key} = ${lkp_estados_transferencias.estado_transferencia_key} ;;
    relationship: many_to_one
  }
  join: lkp_motivos_rechazo {
    type: inner
    sql_on: ${fct_transferencias.motivo_rechazo_key} = ${lkp_motivos_rechazo.motivo_rechazo_key} ;;
    relationship: many_to_one
  }
}
