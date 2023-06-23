view: lkp_crm_canales {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_crm_canales`
    ;;
  view_label: "Datos CRM"

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: crm_canal {
    group_label: "Canales"
    type: string
    sql: ${TABLE}.crm_canal ;;
  }

  dimension: crm_canal_key {
    hidden: yes
    type: number
    sql: ${TABLE}.crm_canal_key ;;
  }

  dimension: crm_codigo_canal {
    group_label: "Canales"
    type: string
    sql: ${TABLE}.crm_codigo_canal ;;
  }

  dimension: crm_codigo_subcanal {
    group_label: "Canales"
    type: string
    sql: ${TABLE}.crm_codigo_subcanal ;;
  }

  dimension: crm_division {
    group_label: "Canales"
    type: string
    sql: ${TABLE}.crm_division ;;
  }

  dimension: crm_region {
    group_label: "Canales"
    type: string
    sql: ${TABLE}.crm_region ;;
  }

  dimension: crm_subcanal {
    group_label: "Canales"
    type: string
    sql: ${TABLE}.crm_subcanal ;;
  }

  dimension: sucursal_canal_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_canal_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
