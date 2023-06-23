view: lkp_sucursales_cuenta {
  fields_hidden_by_default: yes
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_sucursales_cuenta`
    ;;

dimension: agente_financiero {
  type: string
  sql: ${TABLE}.agente_financiero ;;
}

dimension: banco_key {
  hidden: yes
  type: number
  sql: ${TABLE}.banco_key ;;
}

dimension: categoria_bcra {
  type: string
  sql: ${TABLE}.categoria_bcra ;;
}

dimension: codigo_region_contable {
  type: string
  sql: ${TABLE}.codigo_region_contable ;;
}

dimension: departamento {
  type: string
  sql: ${TABLE}.departamento ;;
}

dimension: dimension {
  type: string
  sql: ${TABLE}.dimension ;;
}

dimension: division {
  hidden: no
  label: "División Cuenta"
  view_label: "Datos GeoLOCALIZACIÓN"
  group_label: "Sucursal Cuenta"
  type: string
  sql: ${TABLE}.division ;;
}

dimension: inactiva {
  type: string
  sql: ${TABLE}.inactiva ;;
}

dimension: latitud {
  type: number
  sql: ${TABLE}.latitud ;;
}

dimension: localidad {
  type: string
  sql: ${TABLE}.localidad ;;
}

dimension: longitud {
  type: number
  sql: ${TABLE}.longitud ;;
}

dimension: provincia {
  type: string
  sql: ${TABLE}.provincia ;;
}

dimension: region {
  hidden: no
  label: "Region Cuenta"
  view_label: "Datos GeoLOCALIZACIÓN"
  group_label: "Sucursal Cuenta"
  type: string
  sql: ${TABLE}.region ;;
}

dimension: region_contable {
  type: string
  sql: ${TABLE}.region_contable ;;
}

dimension: sucursal {
  hidden: no
  label: "Sucursal Cuenta"
  view_label: "Datos GeoLOCALIZACIÓN"
  group_label: "Sucursal Cuenta"
  type: string
  sql: ${TABLE}.sucursal ;;
}

dimension: sucursal_cuenta_source {
  hidden: no
  label: "Sucursal Cuenta Source"
  view_label: "Datos GeoLOCALIZACIÓN"
  group_label: "Sucursal Cuenta"
  type: string
  sql: CONCAT(${sucursal_source}, " ", ${sucursal}) ;;
}

dimension: sucursal_anterior {
  type: string
  sql: ${TABLE}.sucursal_anterior ;;
}

dimension: sucursal_cuenta_key {
  type: number
  sql: ${TABLE}.sucursal_cuenta_key ;;
}

dimension: sucursal_source {
  type: number
  sql: ${TABLE}.sucursal_source ;;
}

dimension: sucursal_source_anterior {
  type: number
  sql: ${TABLE}.sucursal_source_anterior ;;
}

dimension: superficie_financiera {
  type: number
  sql: ${TABLE}.superficie_financiera ;;
}

dimension: tasa_comision_canje {
  type: number
  sql: ${TABLE}.tasa_comision_canje ;;
}

dimension: tipo_sucursal {
  type: string
  sql: ${TABLE}.tipo_sucursal ;;
}

measure: count {
  type: count
  drill_fields: []
}
}



#SUCURSALES RADICACION
view: lkp_sucursales_radicacion {
  extends: [lkp_sucursales_cuenta]
  label: "Sucursales Radicación"
  fields_hidden_by_default: yes

  dimension: sucursal_radicacion_key {
    primary_key: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: division {
    hidden: no
    view_label: "Datos CLIENTE"
    drill_fields: [region]
    group_label: " Sucursal Radicacion"
    type: string
    sql: ${TABLE}.division ;;
  }

  dimension: region {
    hidden: no
    view_label: "Datos CLIENTE"
    drill_fields: [sucursal_cuenta_source]
    group_label: " Sucursal Radicacion"
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: sucursal_cuenta_source {
    hidden: no
    view_label: "Datos CLIENTE"
    group_label: " Sucursal Radicacion"
    type: string
    sql: CONCAT(${sucursal_source}, " ", ${sucursal}) ;;
  }

  dimension: sucursal {
    hidden: no
    view_label: "Datos CLIENTE"
    group_label: " Sucursal Radicacion"
    type: string
    sql: ${TABLE}.sucursal ;;
  }


                                           #BOTONES                            #BOTONES

  dimension: detalle_region {
    sql: ${TABLE}.region ;;
    html: <a href="https://bancomacro.cloud.looker.com/dashboards/75?Centralizado=&Periodo=&Tipo+Ps=&Banca+=&Sucursal=&Oficial=&Estado+Monitor+Ps=&Division+Radicacion=&ampRegion+Radicacion={{value}}"><button>Detalle</button></a>;;
  }
  dimension: detalle_division {
    sql: ${division} ;;
    html:<a href="https://bancomacro.cloud.looker.com/dashboards/74?Centralizado=&Periodo=&Tipo%20Ps=&Banca%20=&Sucursal=&&Region=&Oficial=&Estado%20Monitor%20Ps=&Division%20Radicacion={{value}}"><button>Detalle</button></a>;;
  }
}




#SUCURSALES ORIGEN PERTENECIENTE A MODELO ESTRELLA FCT_TRANSFERENCIAS
view: lkp_sucursales_cuenta_origen {
  extends: [lkp_sucursales_cuenta]
  dimension: division {
    hidden: no
    label: "División Cuenta"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Cuenta - Origen"
    type: string
    sql: ${TABLE}.division ;;
  }
  dimension: region {
    hidden: no
    label: "Region Cuenta"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Cuenta - Origen"
    type: string
    sql: ${TABLE}.region ;;
  }
  dimension: sucursal {
    hidden: no
    label: "Sucursal Cuenta"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Cuenta - Origen"
    type: string
    sql: ${TABLE}.sucursal ;;
  }
  dimension: sucursal_cuenta_source {
    hidden: no
    label: "Sucursal Cuenta Source"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Cuenta - Origen"
    type: string
    sql: CONCAT(${sucursal_source}, " ", ${sucursal}) ;;
  }
}



#SUCURSALES RECEPTOR PERTENECIENTE A MODELO ESTRELLA FCT_TRANSFERENCIAS
view: lkp_sucursales_cuenta_receptor {
  extends: [lkp_sucursales_cuenta]
  dimension: division {
    hidden: no
    label: "División Cuenta"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Cuenta - Receptor"
    type: string
    sql: ${TABLE}.division ;;
  }
  dimension: region {
    hidden: no
    label: "Region Cuenta"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Cuenta - Receptor"
    type: string
    sql: ${TABLE}.region ;;
  }
  dimension: sucursal {
    hidden: no
    label: "Sucursal Cuenta"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Cuenta - Receptor"
    type: string
    sql: ${TABLE}.sucursal ;;
  }
  dimension: sucursal_cuenta_source {
    hidden: no
    label: "Sucursal Cuenta Source"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Cuenta - Receptor"
    type: string
    sql: CONCAT(${sucursal_source}, " ", ${sucursal}) ;;
  }
}

#SUCURSALES RESUMEN VW PERTENECIENTES A MODELO ESTRELLA FCT_SITUACIONES_RESUMENES_CUENTA

view: lkp_sucursales_resumen_vw {
  extends: [lkp_sucursales_cuenta]
  fields_hidden_by_default: yes

  dimension: sucursal_resumen_key {
    primary_key: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: division {
    label: "División"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Resumen"
    hidden: no
    drill_fields: [region]
    type: string
    sql: ${TABLE}.division ;;
  }

  dimension: region {
    label: "Región"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Resumen"
    hidden: no
    drill_fields: [sucursal_cuenta_source]
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: sucursal_cuenta_source {
    label: "Sucursal Cuenta Source"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Resumen"
    hidden: no
    type: string
    sql: CONCAT(${sucursal_source}, " ", ${sucursal}) ;;
  }

  dimension: sucursal {
    label: "Sucursal"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Resumen"
    hidden: no
    type: string
    sql: ${TABLE}.sucursal ;;
  }
 }
#SUCURSALES RETENIDO VW PERTENECIENTES A MODELO ESTRELLA FCT_SITUACIONES_RESUMENES_CUENTA

view: lkp_sucursales_retenido_vw {
  extends: [lkp_sucursales_cuenta]
  fields_hidden_by_default: yes

  dimension: sucursal_retenido_key {
    primary_key: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: division {
    label: "División"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Retenido"
    hidden: no
    drill_fields: [region]
    type: string
    sql: ${TABLE}.division ;;
  }

  dimension: region {
    label: "Región"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Retenido"
    hidden: no
    drill_fields: [sucursal_cuenta_source]
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: sucursal_cuenta_source {
    label: "Sucursal Cuenta Source"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Retenido"
    hidden: no
    type: string
    sql: CONCAT(${sucursal_source}, " ", ${sucursal}) ;;
  }

  dimension: sucursal {
    label: "Sucursal"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Retenido"
    hidden: no
    type: string
    sql: ${TABLE}.sucursal ;;
  }
}


#SUCURSALES RETENIDO VW PERTENECIENTES A MODELO ESTRELLA FCT_SITUACIONES_RESUMENES_CUENTA


view: lkp_sucursales_transaccion_canal {
  extends: [lkp_sucursales_cuenta]
  fields_hidden_by_default: yes

  dimension: sucursal_canal_key {
    primary_key: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: division {
    label: "División"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Transacción Canal"
    hidden: no
    drill_fields: [region]
    type: string
    sql: ${TABLE}.division ;;
  }

  dimension: region {
    label: "Región"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Transacción Canal"
    hidden: no
    drill_fields: [sucursal_cuenta_source]
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: sucursal_cuenta_source {
    label: "Sucursal Cuenta Source"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Transacción Canal"
    hidden: no
    type: string
    sql: CONCAT(${sucursal_source}, " ", ${sucursal}) ;;
  }

  dimension: sucursal {
    label: "Sucursal"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Transacción Canal"
    hidden: no
    type: string
    sql: ${TABLE}.sucursal ;;
  }
}



#SUCURSALES COMERCIOS TC PERTENECIENTES A MODELO ESTRELLA FCT_SITUACIONES_RESUMENES_CUENTA


view: lkp_sucursales_comercios_tc {
  extends: [lkp_sucursales_cuenta]
  fields_hidden_by_default: yes

  dimension: sucursal_canal_key {
    primary_key: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: division {
    label: "División"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Comercio TC"
    hidden: no
    drill_fields: [region]
    type: string
    sql: ${TABLE}.division ;;
  }

  dimension: region {
    label: "Región"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Comercio TC"
    hidden: no
    drill_fields: [sucursal_cuenta_source]
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: sucursal_cuenta_source {
    label: "Sucursal Cuenta Source"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Comercio TC"
    hidden: no
    type: string
    sql: CONCAT(${sucursal_source}, " ", ${sucursal}) ;;
  }

  dimension: sucursal {
    label: "Sucursal"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Comercio TC"
    hidden: no
    type: string
    sql: ${TABLE}.sucursal ;;
  }
}


#SUCURSALES PAGO PERTENECIENTES A MODELO ESTRELLA FCT_SITUACIONES_PRESTACIONES_SOCIALES


view: lkp_sucursales_pago {
  extends: [lkp_sucursales_cuenta]
  fields_hidden_by_default: yes

  dimension: sucursal_pago_key {
    primary_key: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: division {
    label: "División"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Pago"
    hidden: no
    drill_fields: [region]
    type: string
    sql: ${TABLE}.division ;;
  }

  dimension: region {
    label: "Región"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Pago"
    hidden: no
    drill_fields: [sucursal_cuenta_source]
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: sucursal_cuenta_source {
    label: "Sucursal Cuenta Source"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Pago"
    hidden: no
    type: string
    sql: CONCAT(${sucursal_source}, " ", ${sucursal}) ;;
  }

  dimension: sucursal {
    label: "Sucursal"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Pago"
    hidden: no
    type: string
    sql: ${TABLE}.sucursal ;;
  }
}


#SUCURSALES BENEFICIO PERTENECIENTES A MODELO ESTRELLA FCT_SITUACIONES_PRESTACIONES_SOCIALES


view: lkp_sucursales_beneficio {
  extends: [lkp_sucursales_cuenta]
  fields_hidden_by_default: yes

  dimension: sucursal_beneficio_key {
    primary_key: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: division {
    label: "División"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Beneficio"
    hidden: no
    drill_fields: [region]
    type: string
    sql: ${TABLE}.division ;;
  }

  dimension: region {
    label: "Región"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Beneficio"
    hidden: no
    drill_fields: [sucursal_cuenta_source]
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: sucursal_cuenta_source {
    label: "Sucursal Cuenta Source"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Beneficio"
    hidden: no
    type: string
    sql: CONCAT(${sucursal_source}, " ", ${sucursal}) ;;
  }

  dimension: sucursal {
    label: "Sucursal"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Beneficio"
    hidden: no
    type: string
    sql: ${TABLE}.sucursal ;;
  }
}


#SUCURSALES INGRESO PERTENECIENTES A MODELOS ESTRELLAS FCT_SITUACIONES_VALORES, FCT_SEGUIMIENTOS_TRAMITES


view: lkp_sucursales_ingreso {
  extends: [lkp_sucursales_cuenta]
  fields_hidden_by_default: yes

  dimension: sucursal_ingreso_key {
    primary_key: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: division {
    label: "División"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Ingreso"
    hidden: no
    drill_fields: [region]
    type: string
    sql: ${TABLE}.division ;;
  }

  dimension: region {
    label: "Región"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Ingreso"
    hidden: no
    drill_fields: [sucursal_cuenta_source]
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: sucursal_cuenta_source {
    label: "Sucursal Cuenta Source"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Ingreso"
    hidden: no
    type: string
    sql: CONCAT(${sucursal_source}, " ", ${sucursal}) ;;
  }

  dimension: sucursal {
    label: "Sucursal"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Ingreso"
    hidden: no
    type: string
    sql: ${TABLE}.sucursal ;;
  }
}

#SUCURSALES INGRESO PERTENECIENTES A MODELO ESTRELLA FCT_SEGUIMIENTOS_TRAMITES


view: lkp_sucursales_venta {
  extends: [lkp_sucursales_cuenta]
  fields_hidden_by_default: yes

  dimension: sucursal_venta_key {
    primary_key: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: division {
    label: "División"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Venta"
    hidden: no
    drill_fields: [region]
    type: string
    sql: ${TABLE}.division ;;
  }

  dimension: region {
    label: "Región"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Venta"
    hidden: no
    drill_fields: [sucursal_cuenta_source]
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: sucursal_cuenta_source {
    label: "Sucursal Cuenta Source"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Venta"
    hidden: no
    type: string
    sql: CONCAT(${sucursal_source}, " ", ${sucursal}) ;;
  }

  dimension: sucursal {
    label: "Sucursal"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Venta"
    hidden: no
    type: string
    sql: ${TABLE}.sucursal ;;
  }
}



#SUCURSALES DESTINO PERTENECIENTES A MODELO ESTRELLA FCT_SITUACIONES_VALORES


view: lkp_sucursales_destino {
  extends: [lkp_sucursales_cuenta]
  fields_hidden_by_default: yes

  dimension: sucursal_destino_key {
    primary_key: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: division {
    label: "División"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Destino"
    hidden: no
    drill_fields: [region]
    type: string
    sql: ${TABLE}.division ;;
  }

  dimension: region {
    label: "Región"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Destino"
    hidden: no
    drill_fields: [sucursal_cuenta_source]
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: sucursal_cuenta_source {
    label: "Sucursal Cuenta Source"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Destino"
    hidden: no
    type: string
    sql: CONCAT(${sucursal_source}, " ", ${sucursal}) ;;
  }

  dimension: sucursal {
    label: "Sucursal"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Destino"
    hidden: no
    type: string
    sql: ${TABLE}.sucursal ;;
  }
}

# SUCURSALES CREDITO PERTENECIENTE A MODELO ESTRELLA FCT_TRANSACCIONES_DATANET

view: lkp_sucursales_credito {
  extends: [lkp_sucursales_cuenta]
  fields_hidden_by_default: yes

  dimension: sucursal_credito_key {
    primary_key: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: division {
    label: "División"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Crédito"
    hidden: no
    drill_fields: [region]
    type: string
    sql: ${TABLE}.division ;;
  }

  dimension: region {
    label: "Región"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Crédito"
    hidden: no
    drill_fields: [sucursal_cuenta_source]
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: sucursal_cuenta_source {
    label: "Sucursal Cuenta Source"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Crédito"
    hidden: no
    type: string
    sql: CONCAT(${sucursal_source}, " ", ${sucursal}) ;;
  }

  dimension: sucursal {
    label: "Sucursal"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Crédito"
    hidden: no
    type: string
    sql: ${TABLE}.sucursal ;;
  }
}

# SUCURSALES DEBITO PERTENECIENTE A MODELO ESTRELLA FCT_TRANSACCIONES_DATANET

view: lkp_sucursales_debito {
  extends: [lkp_sucursales_cuenta]
  fields_hidden_by_default: yes

  dimension: sucursal_debito_key {
    primary_key: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: division {
    label: "División"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Débito"
    hidden: no
    drill_fields: [region]
    type: string
    sql: ${TABLE}.division ;;
  }

  dimension: region {
    label: "Región"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Débito"
    hidden: no
    drill_fields: [sucursal_cuenta_source]
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: sucursal_cuenta_source {
    label: "Sucursal Cuenta Source"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Débito"
    hidden: no
    type: string
    sql: CONCAT(${sucursal_source}, " ", ${sucursal}) ;;
  }

  dimension: sucursal {
    label: "Sucursal"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Débito"
    hidden: no
    type: string
    sql: ${TABLE}.sucursal ;;
  }
}


# SUCURSALES EMISORA PERTENECIENTE A MODELO ESTRELLA FCT_MOVIMIENTOS_DIARIOS_REMESAS_CONTABLE

view: lkp_sucursales_emisora {
  extends: [lkp_sucursales_cuenta]
  fields_hidden_by_default: yes

  dimension: sucursal_emisora_key {
    primary_key: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: division {
    label: "División"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Emisora"
    hidden: no
    drill_fields: [region]
    type: string
    sql: ${TABLE}.division ;;
  }

  dimension: region {
    label: "Región"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Emisora"
    hidden: no
    drill_fields: [sucursal_cuenta_source]
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: sucursal_cuenta_source {
    label: "Sucursal Cuenta Source"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Emisora"
    hidden: no
    type: string
    sql: CONCAT(${sucursal_source}, " ", ${sucursal}) ;;
  }

  dimension: sucursal {
    label: "Sucursal"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Emisora"
    hidden: no
    type: string
    sql: ${TABLE}.sucursal ;;
  }
}



# SUCURSALES RECEPTORA PERTENECIENTE A MODELO ESTRELLA FCT_MOVIMIENTOS_DIARIOS_REMESAS_CONTABLE

view: lkp_sucursales_receptora {
  extends: [lkp_sucursales_cuenta]
  fields_hidden_by_default: yes

  dimension: sucursal_receptora_key {
    primary_key: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: division {
    label: "División"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Receptora"
    hidden: no
    drill_fields: [region]
    type: string
    sql: ${TABLE}.division ;;
  }

  dimension: region {
    label: "Región"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Receptora"
    hidden: no
    drill_fields: [sucursal_cuenta_source]
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: sucursal_cuenta_source {
    label: "Sucursal Cuenta Source"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Receptora"
    hidden: no
    type: string
    sql: CONCAT(${sucursal_source}, " ", ${sucursal}) ;;
  }

  dimension: sucursal {
    label: "Sucursal"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Receptora"
    hidden: no
    type: string
    sql: ${TABLE}.sucursal ;;
  }
}



#SUCURSALES RADICACION CONVENIO CORRESPONDIENTE A ESTRELLA PLAN SUELDO BUSINESS LAYER
view: lkp_sucursales_radicacion_convenio {
  extends: [lkp_sucursales_cuenta]
  label: "Sucursales Radicación Convenio"
  fields_hidden_by_default: yes

  dimension: sucursal_radicacion_key {
    primary_key: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: division {
    hidden: no
    view_label: "Datos CLIENTE"
    drill_fields: [region]
    group_label: " Sucursal Radicacion Convenio"
    type: string
    sql: ${TABLE}.division ;;
  }

  dimension: region {
    hidden: no
    view_label: "Datos CLIENTE"
    drill_fields: [sucursal_cuenta_source]
    group_label: " Sucursal Radicacion Convenio"
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: sucursal_cuenta_source {
    hidden: no
    view_label: "Datos CLIENTE"
    group_label: " Sucursal Radicacion Convenio"
    type: string
    sql: CONCAT(${sucursal_source}, " ", ${sucursal}) ;;
  }

  dimension: sucursal {
    hidden: no
    view_label: "Datos CLIENTE"
    group_label: " Sucursal Radicacion Convenio"
    type: string
    sql: ${TABLE}.sucursal ;;
  }
}


#SUCURSALES RADICACION CAPITA CORRESPONDIENTE A ESTRELLA PLAN SUELDO BUSINESS LAYER
view: lkp_sucursales_radicacion_capita {
  extends: [lkp_sucursales_cuenta]
  label: "Sucursales Radicación Cápita"
  fields_hidden_by_default: yes

  dimension: sucursal_radicacion_key {
    primary_key: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: division {
    hidden: no
    view_label: "Datos CLIENTE"
    drill_fields: [region]
    group_label: " Sucursal Radicacion Cápita"
    type: string
    sql: ${TABLE}.division ;;
  }

  dimension: region {
    hidden: no
    view_label: "Datos CLIENTE"
    drill_fields: [sucursal_cuenta_source]
    group_label: " Sucursal Radicacion Cápita"
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: sucursal_cuenta_source {
    hidden: no
    view_label: "Datos CLIENTE"
    group_label: " Sucursal Radicacion Cápita"
    type: string
    sql: CONCAT(${sucursal_source}, " ", ${sucursal}) ;;
  }

  dimension: sucursal {
    hidden: no
    view_label: "Datos CLIENTE"
    group_label: " Sucursal Radicacion Cápita"
    type: string
    sql: ${TABLE}.sucursal ;;
  }
}
