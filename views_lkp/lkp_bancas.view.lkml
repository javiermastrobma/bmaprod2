view: lkp_bancas {
  label: "Banca"
  fields_hidden_by_default: yes
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_bancas`
    ;;
  dimension: agrupacion_segmento_comite {
    type: string
    sql: ${TABLE}.agrupacion_segmento_comite ;;
  }

  dimension: banca {
    hidden: no
    view_label: "Datos CLIENTE"
    group_label: " Banca"
    suggestions: ["Individuos", "Empresas", "Agro", "Megra", "Corporativa"]
    type: string
    sql: ${TABLE}.banca ;;
  }

  dimension: tipo_ps {
    type: string
    sql: CASE WHEN ${segmento} LIKE "Estado%" THEN "PS PUBLICO" ELSE "PS PRIVADO" END ;;
  }

  dimension: banca_key {
    primary_key: yes
    type: number
    sql: ${TABLE}.banca_key ;;
  }

  dimension: banca_original_key {
    type: number
    sql: ${TABLE}.banca_original_key ;;
  }

  dimension: banca_source {
    type: string
    sql: ${TABLE}.banca_source ;;
  }

  dimension: cambio_segmento_cobis {
    type: string
    sql: ${TABLE}.cambio_segmento_cobis ;;
  }

  dimension: categoria {
    hidden: no
    view_label: "Datos CLIENTE"
    group_label: " Banca"
    suggestions: ["Premium", "Selecta", "Selecta Privado"]
    type: string
    sql: ${TABLE}.categoria ;;
  }

  dimension: categoria_source {
    type: string
    sql: ${TABLE}.categoria_source ;;
  }

  dimension_group: fecha_alta {
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
    datatype: datetime
    sql: ${TABLE}.fecha_alta ;;
  }

  dimension_group: fecha_modificacion {
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
    datatype: datetime
    sql: ${TABLE}.fecha_modificacion ;;
  }

  dimension: segmento {
    hidden: no
    view_label: "Datos CLIENTE"
    group_label: " Banca"
    type: string
    sql: ${TABLE}.segmento ;;
  }

  dimension: segmento_comercial {
    type: string
    sql: ${TABLE}.segmento_comercial ;;
  }

  dimension: segmento_comercial_key {
    hidden: yes
    type: number
    sql: ${TABLE}.segmento_comercial_key ;;
  }

  dimension: segmento_source {
    type: string
    sql: ${TABLE}.segmento_source ;;
  }

  dimension: subsegmento {
    hidden: no
    view_label: "Datos CLIENTE"
    group_label: " Banca"
    type: string
    sql: ${TABLE}.subsegmento ;;
  }

  dimension: subsegmento_comercial {
    type: string
    sql: ${TABLE}.subsegmento_comercial ;;
  }

  dimension: subsegmento_source {
    type: string
    sql: ${TABLE}.subsegmento_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

#BANCA COMITE

view: lkp_bancas_comite {
  extends: [lkp_bancas]
  fields_hidden_by_default: yes
  label: "Banca a principio de Mes"

  dimension: banca_key {
    primary_key: yes
    type: number
    sql: ${TABLE}.banca_key ;;
  }
  dimension: banca {
    hidden: no
    view_label: "Datos CLIENTE"
    group_label: " Banca a principio de Mes"
    suggestions: ["Individuos", "Empresas", "Agro", "Megra", "Corporativa"]
    type: string
    sql: ${TABLE}.banca ;;
  }
  dimension: categoria {
    hidden: no
    view_label: "Datos CLIENTE"
    group_label: " Banca a principio de Mes"
    suggestions: ["Premium", "Selecta", "Selecta Privado"]
    type: string
    sql: ${TABLE}.categoria ;;
  }
  dimension: segmento {
    hidden: no
    view_label: "Datos CLIENTE"
    group_label: " Banca a principio de Mes"
    type: string
    sql: ${TABLE}.segmento ;;
  }

  dimension: segmento_comercial {
    hidden: no
    view_label: "Datos CLIENTE"
    label: " Segmento Comercial"
    type: string
    sql: ${TABLE}.segmento_comercial ;;
  }
  dimension: subsegmento {
    hidden: no
    view_label: "Datos CLIENTE"
    group_label: " Banca a principio de Mes"
    type: string
    sql: ${TABLE}.subsegmento ;;
  }
}

#BANCA ACTUAL

view: lkp_banca_actual {
  extends: [lkp_bancas]
  fields_hidden_by_default: yes
  label: "Banca Último Dato"

  dimension: banca_key {
    primary_key: yes
    type: number
    sql: ${TABLE}.banca_key ;;
  }
  dimension: banca {
    hidden: no
    view_label: "Datos CLIENTE"
    group_label: " Banca Último Dato"
    suggestions: ["Individuos", "Empresas", "Agro", "Megra", "Corporativa"]
    type: string
    sql: ${TABLE}.banca ;;
  }
  dimension: categoria {
    hidden: no
    view_label: "Datos CLIENTE"
    group_label: " Banca Último Dato"
    suggestions: ["Premium", "Selecta", "Selecta Privado"]
    type: string
    sql: ${TABLE}.categoria ;;
  }
  dimension: segmento {
    hidden: no
    view_label: "Datos CLIENTE"
    group_label: " Banca Último Dato"
    type: string
    sql: ${TABLE}.segmento ;;
  }
  dimension: subsegmento {
    hidden: no
    view_label: "Datos CLIENTE"
    group_label: " Banca Último Dato"
    type: string
    sql: ${TABLE}.subsegmento ;;
  }
}

#BANCA RECEPTOR PARA MODELO ESTRELLA DE FCT_TRANSFERENCIAS
view: lkp_banca_receptor {
  extends: [lkp_bancas]

  dimension: banca {
    hidden: no
    view_label: "Datos CLIENTE"
    group_label: " Banca a principio de Mes - Receptor"
    suggestions: ["Individuos", "Empresas", "Agro", "Megra", "Corporativa"]
    type: string
    sql: ${TABLE}.banca ;;
  }
  dimension: categoria {
    hidden: no
    view_label: "Datos CLIENTE"
    group_label: " Banca a principio de Mes - Receptor"
    suggestions: ["Premium", "Selecta", "Selecta Privado"]
    type: string
    sql: ${TABLE}.categoria ;;
  }
  dimension: segmento {
    hidden: no
    view_label: "Datos CLIENTE"
    group_label: " Banca a principio de Mes - Receptor"
    type: string
    sql: ${TABLE}.segmento ;;
  }

  dimension: segmento_comercial {
    hidden: no
    view_label: "Datos CLIENTE"
    label: " Segmento Comercial - Receptor"
    type: string
    sql: ${TABLE}.segmento_comercial ;;
  }
  dimension: subsegmento {
    hidden: no
    view_label: "Datos CLIENTE"
    group_label: " Banca a principio de Mes - Receptor"
    type: string
    sql: ${TABLE}.subsegmento ;;
  }
}

#BANCA ORIGEN PARA MODELO ESTRELLA DE FCT_TRANSFERENCIAS
view: lkp_banca_origen {
  extends: [lkp_bancas]

  dimension: banca {
    hidden: no
    view_label: "Datos CLIENTE"
    group_label: " Banca a principio de Mes - Origen"
    suggestions: ["Individuos", "Empresas", "Agro", "Megra", "Corporativa"]
    type: string
    sql: ${TABLE}.banca ;;
  }
  dimension: categoria {
    hidden: no
    view_label: "Datos CLIENTE"
    group_label: " Banca a principio de Mes - Origen"
    suggestions: ["Premium", "Selecta", "Selecta Privado"]
    type: string
    sql: ${TABLE}.categoria ;;
  }
  dimension: segmento {
    hidden: no
    view_label: "Datos CLIENTE"
    group_label: " Banca a principio de Mes - Origen"
    type: string
    sql: ${TABLE}.segmento ;;
  }

  dimension: segmento_comercial {
    hidden: no
    view_label: "Datos CLIENTE"
    label: " Segmento Comercial - Origen"
    type: string
    sql: ${TABLE}.segmento_comercial ;;
  }
  dimension: subsegmento {
    hidden: no
    view_label: "Datos CLIENTE"
    group_label: " Banca a principio de Mes - Origen"
    type: string
    sql: ${TABLE}.subsegmento ;;
  }
}


#BANCA COMITE CONVENIO CORRESPONDIENTE A ESTRELLA PLAN SUELDO BUSINESS LAYER

view: lkp_bancas_comite_convenio {
  extends: [lkp_bancas]
  fields_hidden_by_default: yes
  label: "Banca Convenio"

  dimension: banca_key {
    primary_key: yes
    type: number
    sql: ${TABLE}.banca_key ;;
  }
  dimension: banca {
    hidden: no
    view_label: "Datos CLIENTE"
    group_label: " Banca Convenio"
    suggestions: ["Individuos", "Empresas", "Agro", "Megra", "Corporativa"]
    type: string
    sql: ${TABLE}.banca ;;
  }
  dimension: categoria {
    hidden: no
    view_label: "Datos CLIENTE"
    group_label: " Banca Convenio"
    suggestions: ["Premium", "Selecta", "Selecta Privado"]
    type: string
    sql: ${TABLE}.categoria ;;
  }
  dimension: segmento {
    hidden: no
    view_label: "Datos CLIENTE"
    group_label: " Banca Convenio"
    type: string
    sql: ${TABLE}.segmento ;;
  }

  dimension: segmento_comercial {
    hidden: no
    view_label: "Datos CLIENTE"
    label: " Segmento Comercial Convenio"
    type: string
    sql: ${TABLE}.segmento_comercial ;;
  }
  dimension: subsegmento {
    hidden: no
    view_label: "Datos CLIENTE"
    group_label: " Banca Convenio"
    type: string
    sql: ${TABLE}.subsegmento ;;
  }
}


#BANCA COMITE CAPITA CORRESPONDIENTE A ESTRELLA PLAN SUELDO BUSINESS LAYER

view: lkp_bancas_comite_capita {
  extends: [lkp_bancas]
  fields_hidden_by_default: yes
  label: "Banca Cápita"

  dimension: banca_key {
    primary_key: yes
    type: number
    sql: ${TABLE}.banca_key ;;
  }
  dimension: banca {
    hidden: no
    view_label: "Datos CLIENTE"
    group_label: " Banca Cápita"
    suggestions: ["Individuos", "Empresas", "Agro", "Megra", "Corporativa"]
    type: string
    sql: ${TABLE}.banca ;;
  }
  dimension: categoria {
    hidden: no
    view_label: "Datos CLIENTE"
    group_label: " Banca Cápita"
    suggestions: ["Premium", "Selecta", "Selecta Privado"]
    type: string
    sql: ${TABLE}.categoria ;;
  }
  dimension: segmento {
    hidden: no
    view_label: "Datos CLIENTE"
    group_label: " Banca Cápita"
    type: string
    sql: ${TABLE}.segmento ;;
  }

  dimension: segmento_comercial {
    hidden: no
    view_label: "Datos CLIENTE"
    label: " Segmento Comercial Cápita"
    type: string
    sql: ${TABLE}.segmento_comercial ;;
  }
  dimension: subsegmento {
    hidden: no
    view_label: "Datos CLIENTE"
    group_label: " Banca Cápita"
    type: string
    sql: ${TABLE}.subsegmento ;;
  }
}
