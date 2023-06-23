view: lkp_crm_tipologias_atenciones {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_crm_tipologias_atenciones`
    ;;
  view_label: "Datos CRM"

  dimension: crm_codigo_tipologia_atencion {
    group_label: "Tipologías Atenciones"
    type: string
    sql: ${TABLE}.crm_codigo_tipologia_atencion ;;
  }

  dimension: crm_nivel_validacion_requerida {
    group_label: "Tipologías Atenciones"
    type: string
    sql: ${TABLE}.crm_nivel_validacion_requerida ;;
  }

  dimension: crm_producto_asociado {
    group_label: "Tipologías Atenciones"
    type: string
    sql: ${TABLE}.crm_producto_asociado ;;
  }

  dimension: crm_subtipologia_atencion {
    group_label: "Tipologías Atenciones"
    type: string
    sql: ${TABLE}.crm_subtipologia_atencion ;;
  }

  dimension: crm_tipo_atencion {
    group_label: "Tipologías Atenciones"
    type: string
    sql: ${TABLE}.crm_tipo_atencion ;;
  }

  dimension: crm_tipologia_atencion {
    group_label: "Tipologías Atenciones"
    type: string
    sql: ${TABLE}.crm_tipologia_atencion ;;
  }

  dimension: crm_tipologia_atencion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.crm_tipologia_atencion_key ;;
  }

  dimension: crm_validacion_requerida {
    group_label: "Tipologías Atenciones"
    type: string
    sql: ${TABLE}.crm_validacion_requerida ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
