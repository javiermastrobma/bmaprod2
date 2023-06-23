include: "/views/views_fct/fct_situaciones_valores.view"
include: "/views/views_lkp/*.view"

explore: fct_situaciones_valores {
  label: "Remesas | Situaciones Valores Mensual"
  conditionally_filter: {
    filters: [fct_situaciones_valores.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join:  lkp_fechas {
    type: inner
    sql_on: ${fct_situaciones_valores.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join:  lkp_valores {
    type: inner
    sql_on: ${fct_situaciones_valores.valor_key} = ${lkp_valores.valor_key} ;;
  relationship: many_to_one
  }
  join:  lkp_bancos {
    type: inner
    sql_on: ${fct_situaciones_valores.banco_key} = ${lkp_bancos.banco_key} ;;
  relationship: many_to_one
  }
  join:  lkp_sectores {
    type: inner
    sql_on: ${fct_situaciones_valores.sector_key} = ${lkp_sectores.sector_key} ;;
  relationship: many_to_one
  }
  join: lkp_especies  {
    type: inner
    sql_on: ${fct_situaciones_valores.especie_key} = ${lkp_especies.especie_key} ;;
  relationship: many_to_one
  }
  join: lkp_mercados  {
    type: inner
    sql_on: ${fct_situaciones_valores.mercado_key} = ${lkp_mercados.mercado_key} ;;
  relationship: many_to_one
  }
  join:  lkp_productos {
    type: inner
    sql_on: ${fct_situaciones_valores.producto_key} = ${lkp_productos.producto_key} ;;
  relationship: many_to_one
  }
  join: lkp_bancos_girado {
    type: inner
    sql_on: ${fct_situaciones_valores.banco_girado_key} = ${lkp_bancos_girado.banco_key} ;;
  relationship: many_to_one
}
  join:  lkp_sucursales_ingreso {
    type: inner
    sql_on: ${fct_situaciones_valores.sucursal_ingreso_key} = ${lkp_sucursales_ingreso.sucursal_ingreso_key};;
  relationship: many_to_one
  }
  join:  lkp_sucursales_destino {
    type: inner
    sql_on: ${fct_situaciones_valores.sucursal_destino_key} = ${lkp_sucursales_destino.sucursal_destino_key};;
    relationship: many_to_one
  }
  join: lkp_estados_valor  {
    type: inner
    sql_on: ${fct_situaciones_valores.estado_key} = ${lkp_estados_valor.estado_key} ;;
    relationship: many_to_one
}
  join:  lkp_tipos_comprobante {
    type: inner
    sql_on: ${fct_situaciones_valores.tipo_comprobante_key} = ${lkp_tipos_comprobante.tipo_comprobante_key}  ;;
    relationship: many_to_one
}
  join:  lkp_firmantes_valores {
    type: inner
    sql_on: ${fct_situaciones_valores.firmante_key} = ${lkp_firmantes_valores.firmante_key} ;;
    relationship: many_to_one
}
  join: lkp_bancas  {
    type: inner
    sql_on: ${fct_situaciones_valores.banca_key} = ${lkp_bancas.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa  {
    type: inner
    sql_on: ${fct_situaciones_valores.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
}
