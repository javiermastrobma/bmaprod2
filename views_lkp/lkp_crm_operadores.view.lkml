view: lkp_crm_operadores {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_crm_operadores`
    ;;
  view_label: "Datos CRM"

  dimension: crm_codigo_operador {
    type: string
    sql: ${TABLE}.crm_codigo_operador ;;
  }

  dimension: crm_funcion {
    type: string
    sql: ${TABLE}.crm_funcion ;;
  }

  dimension: crm_login {
    type: string
    sql: ${TABLE}.crm_login ;;
  }

  dimension: crm_operador_key {
    hidden: yes
    type: number
    sql: ${TABLE}.crm_operador_key ;;
  }

  dimension: crm_operador_nombre {
    type: string
    sql: ${TABLE}.crm_operador_nombre ;;
  }

  dimension: crm_sector {
    type: string
    sql: ${TABLE}.crm_sector ;;
  }

  dimension: personal_key {
    hidden: yes
    type: number
    sql: ${TABLE}.personal_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}

# OPERADOR INGRESOS PERTENECIENTE A LA ESTRELLA FCT_CRM_SEGUIMIENTO_ACTIVIDADES

view: lkp_crm_operadores_ingreso {
  extends: [lkp_crm_operadores]

  dimension: crm_codigo_operador {
    group_label: "Operadores Ingreso"
    label: " CRM Código Operador - Ingreso"
    type: string
    sql: ${TABLE}.crm_codigo_operador ;;
  }

  dimension: crm_funcion {
    group_label: "Operadores Ingreso"
    label: " CRM Función - Ingreso"
    type: string
    sql: ${TABLE}.crm_funcion ;;
  }

  dimension: crm_login {
    group_label: "Operadores Ingreso"
    label: " CRM Login - Ingreso"
    type: string
    sql: ${TABLE}.crm_login ;;
  }

  dimension: crm_operador_nombre {
    group_label: "Operadores Ingreso"
    label: " CRM Operador Nombre - Ingreso"
    type: string
    sql: ${TABLE}.crm_operador_nombre ;;
  }

  dimension: crm_sector {
    group_label: "Operadores Ingreso"
    label: " CRM Sector - Ingreso"
    type: string
    sql: ${TABLE}.crm_sector ;;
  }
}

# OPERADOR ACTUALIZACIÓN PERTENECIENTE A LA ESTRELLA FCT_CRM_SEGUIMIENTO_ACTIVIDADES

view: lkp_crm_operadores_actualizacion {
  extends: [lkp_crm_operadores]

  dimension: crm_codigo_operador {
    group_label: "Operadores Actualización"
    label: " CRM Código Operador - Actualización"
    type: string
    sql: ${TABLE}.crm_codigo_operador ;;
  }

  dimension: crm_funcion {
    group_label: "Operadores Actualización"
    label: " CRM Función - Actualización"
    type: string
    sql: ${TABLE}.crm_funcion ;;
  }

  dimension: crm_login {
    group_label: "Operadores Actualización"
    label: " CRM Login - Actualización"
    type: string
    sql: ${TABLE}.crm_login ;;
  }

  dimension: crm_operador_nombre {
    group_label: "Operadores Actualización"
    label: " CRM Operador Nombre - Actualización"
    type: string
    sql: ${TABLE}.crm_operador_nombre ;;
  }

  dimension: crm_sector {
    group_label: "Operadores Actualización"
    label: " CRM Sector - Actualización"
    type: string
    sql: ${TABLE}.crm_sector ;;
  }
}

view: lkp_crm_operadores_procesamiento {
  extends: [lkp_crm_operadores]

  dimension: crm_codigo_operador {
    label: " CRM Código Operador - Procesamiento"
    type: string
    sql: ${TABLE}.crm_codigo_operador ;;
  }

  dimension: crm_funcion {
    label: " CRM Función - Procesamiento"
    type: string
    sql: ${TABLE}.crm_funcion ;;
  }

  dimension: crm_login {
    label: " CRM Login - Procesamiento"
    type: string
    sql: ${TABLE}.crm_login ;;
  }

  dimension: crm_operador_nombre {
    label: " CRM Operador Nombre - Procesamiento"
    type: string
    sql: ${TABLE}.crm_operador_nombre ;;
  }

  dimension: crm_sector {
    label: " CRM Sector - Procesamiento"
    type: string
    sql: ${TABLE}.crm_sector ;;
  }
}
