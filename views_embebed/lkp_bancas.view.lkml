view: lkp_bancas_embebed {
  label: "Banca"
  fields_hidden_by_default: yes
  sql_table_name: `bm-gcp-p1-dw.looker_embebed.lkp_bancas`
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
