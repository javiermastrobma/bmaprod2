view: lkp_crm_clasificaciones_contacto {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_crm_clasificaciones_contacto`
    ;;
  view_label: "Datos CRM"

  dimension: crm_banca {
    group_label: "Clasificación Contacto"
    type: string
    sql: ${TABLE}.crm_banca ;;
  }

  dimension: crm_categoria {
    group_label: "Clasificación Contacto"
    type: string
    sql: ${TABLE}.crm_categoria ;;
  }

  dimension: crm_clase {
    group_label: "Clasificación Contacto"
    type: string
    sql: ${TABLE}.crm_clase ;;
  }

  dimension: crm_clasificacion_contacto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.crm_clasificacion_contacto_key ;;
  }

  dimension: crm_codigo_banca {
    group_label: "Clasificación Contacto"
    type: string
    sql: ${TABLE}.crm_codigo_banca ;;
  }

  dimension: crm_codigo_categoria {
    group_label: "Clasificación Contacto"
    type: string
    sql: ${TABLE}.crm_codigo_categoria ;;
  }

  dimension: crm_codigo_clase {
    group_label: "Clasificación Contacto"
    type: string
    sql: ${TABLE}.crm_codigo_clase ;;
  }

  dimension: crm_codigo_segmento {
    group_label: "Clasificación Contacto"
    type: string
    sql: ${TABLE}.crm_codigo_segmento ;;
  }

  dimension: crm_segmento {
    group_label: "Clasificación Contacto"
    type: string
    sql: ${TABLE}.crm_segmento ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
