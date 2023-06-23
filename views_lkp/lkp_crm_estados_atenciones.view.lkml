view: lkp_crm_estados_atenciones {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_crm_estados_atenciones`
    ;;

  dimension: crm_codigo_estado {
    type: string
    sql: ${TABLE}.crm_codigo_estado ;;
  }

  dimension: crm_codigo_motivo_cancelacion {
    type: string
    sql: ${TABLE}.crm_codigo_motivo_cancelacion ;;
  }

  dimension: crm_codigo_subestado {
    type: string
    sql: ${TABLE}.crm_codigo_subestado ;;
  }

  dimension: crm_codigo_validacion_autenticacion {
    type: string
    sql: ${TABLE}.crm_codigo_validacion_autenticacion ;;
  }

  dimension: crm_estado_atencion {
    type: string
    sql: ${TABLE}.crm_estado_atencion ;;
  }

  dimension: crm_estado_atencion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.crm_estado_atencion_key ;;
  }

  dimension: crm_motivo_cancelacion {
    type: string
    sql: ${TABLE}.crm_motivo_cancelacion ;;
  }

  dimension: crm_subestado_atencion {
    type: string
    sql: ${TABLE}.crm_subestado_atencion ;;
  }

  dimension: crm_validacion_autenticacion {
    type: string
    sql: ${TABLE}.crm_validacion_autenticacion ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
