view: fct_crm_detalles_atencion_consultas {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_crm_detalles_atencion_consultas`
    ;;
    view_label: " Fct CRM Detalles Atención Consultas"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_alta_key} = (SELECT MAX(f.fecha_key) FROM fct_crm_detalles_atencion_consultas s
      LEFT JOIN lkp_fechas f ON s.fecha_alta_key = f.fecha_key) ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: cantidad_relacion {
    type: number
    sql: ${TABLE}.cantidad_relacion ;;
  }

  dimension: crm_codigo_atencion {
    type: string
    sql: ${TABLE}.crm_codigo_atencion ;;
  }

  dimension: crm_contacto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.crm_contacto_key ;;
  }

  dimension: crm_motivo_consulta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.crm_motivo_consulta_key ;;
  }

  dimension: crm_numero_atencion {
    type: string
    sql: ${TABLE}.crm_numero_atencion ;;
  }

  dimension: crm_tipologia_atencion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.crm_tipologia_atencion_key ;;
  }

  dimension: fecha_alta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_alta_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
