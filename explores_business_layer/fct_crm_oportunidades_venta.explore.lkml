include: "/views/views_fct/fct_crm_oportunidades_venta.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_crm_oportunidades_venta {
  label: "Clientes | CRM Oportunidades Venta Semanal"
  conditionally_filter: {
    filters: [fct_crm_oportunidades_venta.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_crm_oportunidades_venta.fecha_key} = ${lkp_fechas.fecha_key}  ;;
    relationship: many_to_one
  }
  join: lkp_campanias {
    type: inner
    sql_on: ${fct_crm_oportunidades_venta.campania_key} = ${lkp_campanias.campania_key}  ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_crm_oportunidades_venta.cliente_key} = ${lkp_clientes_completa.cliente_key}  ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_crm_oportunidades_venta.sucursal_generadora_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key}  ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key};;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_crm_oportunidades_venta.banco_key} = ${lkp_bancos.banco_key}  ;;
    relationship: many_to_one
  }
  join: lkp_resultados_campania {
    type: inner
    sql_on: ${fct_crm_oportunidades_venta.resultado_campania_key} = ${lkp_resultados_campania.resultado_campania_key}  ;;
    relationship: many_to_one
  }
  join: lkp_catalogo_productos_crm {
    type: inner
    sql_on: ${fct_crm_oportunidades_venta.catalogo_producto_crm_key} = ${lkp_catalogo_productos_crm.catalogo_producto_crm_key} ;;
    relationship: many_to_one
  }
  join: lkp_objetivos_campania {
    type: inner
    sql_on: ${fct_crm_oportunidades_venta.objetivo_campania_key} = ${lkp_objetivos_campania.objetivo_campania_key}  ;;
    relationship: many_to_one
  }
  }
