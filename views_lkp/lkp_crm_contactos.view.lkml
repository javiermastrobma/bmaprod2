view: lkp_crm_contactos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_crm_contactos`
    ;;
    view_label: "Datos CRM"

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: crm_banca {
    group_label: "Contactos"
    type: string
    sql: ${TABLE}.crm_banca ;;
  }

  dimension: crm_categoria {
    group_label: "Contactos"
    type: string
    sql: ${TABLE}.crm_categoria ;;
  }

  dimension: crm_clase {
    group_label: "Contactos"
    type: string
    sql: ${TABLE}.crm_clase ;;
  }

  dimension: crm_cliente_cobis {
    group_label: "Contactos"
    type: string
    sql: ${TABLE}.crm_cliente_cobis ;;
  }

  dimension: crm_codigo_contacto {
    group_label: "Contactos"
    type: string
    sql: ${TABLE}.crm_codigo_contacto ;;
  }

  dimension: crm_contacto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.crm_contacto_key ;;
  }

  dimension: crm_contacto_nombre {
    group_label: "Contactos"
    type: string
    sql: ${TABLE}.crm_contacto_nombre ;;
  }

  dimension: crm_numero_documento {
    group_label: "Contactos"
    type: string
    sql: ${TABLE}.crm_numero_documento ;;
  }

  dimension: crm_numero_documento_tributario {
    group_label: "Contactos"
    type: string
    sql: ${TABLE}.crm_numero_documento_tributario ;;
  }

  dimension: crm_segmento {
    group_label: "Contactos"
    type: string
    sql: ${TABLE}.crm_segmento ;;
  }

  dimension: crm_tipo_documento {
    group_label: "Contactos"
    type: string
    sql: ${TABLE}.crm_tipo_documento ;;
  }

  dimension: crm_tipo_documento_tributario {
    group_label: "Contactos"
    type: string
    sql: ${TABLE}.crm_tipo_documento_tributario ;;
  }

  dimension: crm_tipo_persona {
    group_label: "Contactos"
    type: string
    sql: ${TABLE}.crm_tipo_persona ;;
  }

  dimension: crm_valor_cliente {
    group_label: "Contactos"
    type: number
    sql: ${TABLE}.crm_valor_cliente ;;
  }

  dimension: oficial_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_cuenta_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
