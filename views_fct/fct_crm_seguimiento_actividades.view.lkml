view: fct_crm_seguimiento_actividades {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_crm_seguimiento_actividades`
    ;;
    label: " Fct CRM Seguimiento Actividades"

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: cantidad_actividades {
    type: number
    sql: ${TABLE}.cantidad_actividades ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: crm_canal_key {
    hidden: yes
    type: number
    sql: ${TABLE}.crm_canal_key ;;
  }

  dimension: crm_clasificacion_contacto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.crm_clasificacion_contacto_key ;;
  }

  dimension: crm_codigo_actividad {
    type: string
    sql: ${TABLE}.crm_codigo_actividad ;;
  }

  dimension: crm_contacto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.crm_contacto_key ;;
  }

  dimension: crm_estado_actividad_key {
    hidden: yes
    type: number
    sql: ${TABLE}.crm_estado_actividad_key ;;
  }

  dimension: crm_extension_llamada {
    type: string
    sql: ${TABLE}.crm_extension_llamada ;;
  }

  dimension_group: crm_fecha_actualizacion {
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
    sql: ${TABLE}.crm_fecha_actualizacion ;;
  }

  dimension_group: crm_fecha_creacion {
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
    sql: ${TABLE}.crm_fecha_creacion ;;
  }

  dimension_group: crm_fecha_finalizacion {
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
    sql: ${TABLE}.crm_fecha_finalizacion ;;
  }

  dimension_group: crm_fecha_inicio {
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
    sql: ${TABLE}.crm_fecha_inicio ;;
  }

  dimension_group: crm_fecha_vencimiento {
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
    sql: ${TABLE}.crm_fecha_vencimiento ;;
  }

  dimension: crm_hora_inicio_key {
    hidden: yes
    type: number
    sql: ${TABLE}.crm_hora_inicio_key ;;
  }

  dimension: crm_identificacion_llamada {
    type: string
    sql: ${TABLE}.crm_identificacion_llamada ;;
  }

  dimension: crm_operador_actualizacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.crm_operador_actualizacion_key ;;
  }

  dimension: crm_operador_ingreso_key {
    hidden: yes
    type: number
    sql: ${TABLE}.crm_operador_ingreso_key ;;
  }

  dimension: crm_sector_operador_actualizacion {
    type: string
    sql: ${TABLE}.crm_sector_operador_actualizacion ;;
  }

  dimension: crm_sector_operador_ingreso {
    type: string
    sql: ${TABLE}.crm_sector_operador_ingreso ;;
  }

  dimension: crm_tipologia_actividad_key {
    hidden: yes
    type: number
    sql: ${TABLE}.crm_tipologia_actividad_key ;;
  }

  dimension: duracion_actividad {
    type: number
    sql: ${TABLE}.duracion_actividad ;;
  }

  dimension: fecha_actualizacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_actualizacion_key ;;
  }

  dimension: fecha_creacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_creacion_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
