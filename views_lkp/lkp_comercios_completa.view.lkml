view: lkp_comercios_completa {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_comercios_completa`
    ;;

  dimension: arancel {
    view_label: "Datos COMERCIO"
    group_label: "Comercios"
    type: number
    sql: ${TABLE}.Arancel ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.Banco_Key ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente_Key ;;
  }

  dimension: comercio_key {
    hidden: yes
    type: number
    sql: ${TABLE}.Comercio_Key ;;
  }

  dimension: comercio_propio {
    view_label: "Datos COMERCIO"
    group_label: "Comercios"
    type: string
    sql: ${TABLE}.Comercio_Propio ;;
  }

  dimension: cuenta_dolares_key {
    hidden: yes
    type: number
    sql: ${TABLE}.Cuenta_Dolares_Key ;;
  }

  dimension: cuenta_pesos_key {
    hidden: yes
    type: number
    sql: ${TABLE}.Cuenta_Pesos_Key ;;
  }

  dimension: dias_pago_establecimiento {
    view_label: "Datos COMERCIO"
    group_label: "Comercios"
    type: number
    sql: ${TABLE}.Dias_Pago_Establecimiento ;;
  }

  dimension: empresa_source {
    view_label: "Datos COMERCIO"
    group_label: "Comercios"
    type: string
    sql: ${TABLE}.Empresa_Source ;;
  }

  dimension_group: fecha_alta {
    view_label: "Datos COMERCIO"
    group_label: "Comercios"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Fecha_Alta ;;
  }

  dimension_group: fecha_baja {
    view_label: "Datos COMERCIO"
    group_label: "Comercios"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Fecha_Baja ;;
  }

  dimension: local_source {
    view_label: "Datos COMERCIO"
    group_label: "Comercios"
    type: string
    sql: ${TABLE}.Local_Source ;;
  }

  dimension: localidad {
    view_label: "Datos COMERCIO"
    group_label: "Comercios"
    type: string
    sql: ${TABLE}.Localidad ;;
  }

  dimension: marca_key {
    hidden: yes
    type: number
    sql: ${TABLE}.Marca_Key ;;
  }

  dimension: mb_banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.MB_Banco_Key ;;
  }

  dimension: nombre_fantasia {
    view_label: "Datos COMERCIO"
    group_label: "Comercios"
    type: string
    sql: ${TABLE}.Nombre_Fantasia ;;
  }

  dimension: nombre_normalizado {
    view_label: "Datos COMERCIO"
    group_label: "Comercios"
    type: string
    sql: ${TABLE}.Nombre_Normalizado ;;
  }

  dimension: nro_doc_tributario {
    view_label: "Datos COMERCIO"
    group_label: "Comercios"
    type: number
    sql: ${TABLE}.Nro_Doc_Tributario ;;
  }

  dimension: provincia_key {
    hidden: yes
    type: number
    sql: ${TABLE}.Provincia_Key ;;
  }

  dimension: razon_social {
    view_label: "Datos COMERCIO"
    group_label: "Comercios"
    type: string
    sql: ${TABLE}.Razon_Social ;;
  }

  dimension: rubro_key {
    hidden: yes
    type: number
    sql: ${TABLE}.Rubro_Key ;;
  }

  dimension: sucursal_banco_pagador {
    view_label: "Datos COMERCIO"
    group_label: "Comercios"
    type: string
    sql: ${TABLE}.Sucursal_Banco_Pagador ;;
  }

  dimension: sucursal_comercio_key {
    hidden: yes
    type: number
    sql: ${TABLE}.Sucursal_Comercio_Key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
