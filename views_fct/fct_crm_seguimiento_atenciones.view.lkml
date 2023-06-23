view: fct_crm_seguimiento_atenciones {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_crm_seguimiento_atenciones`
    ;;
    view_label: " Fct CRM Seguimiento Atenciones"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_creacion_key} = (SELECT MAX(f.fecha_creacion_key) FROM fct_crm_seguimiento_atenciones s
      LEFT JOIN lkp_fechas f ON s.fecha_creacion_key = f.fecha_key) ;;
  }
  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: campania_key {
    hidden: yes
    type: number
    sql: ${TABLE}.campania_key ;;
  }

  dimension: cantidad_atenciones {
    type: number
    sql: ${TABLE}.cantidad_atenciones ;;
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

  dimension: crm_codigo_atencion {
    type: string
    sql: ${TABLE}.crm_codigo_atencion ;;
  }

  dimension: crm_codigo_llamada_origen {
    type: string
    sql: ${TABLE}.crm_codigo_llamada_origen ;;
  }

  dimension: crm_codigo_ultima_llamada {
    type: string
    sql: ${TABLE}.crm_codigo_ultima_llamada ;;
  }

  dimension: crm_contacto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.crm_contacto_key ;;
  }

  dimension: crm_estado_atencion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.crm_estado_atencion_key ;;
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

  dimension_group: crm_fecha_estimada_fin {
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
    sql: ${TABLE}.crm_fecha_estimada_fin ;;
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

  dimension_group: crm_fecha_ingreso {
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
    sql: ${TABLE}.crm_fecha_ingreso ;;
  }

  dimension_group: crm_fecha_procesamiento {
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
    sql: ${TABLE}.crm_fecha_procesamiento ;;
  }

  dimension: crm_hora_ingreso_key {
    hidden: yes
    type: number
    sql: ${TABLE}.crm_hora_ingreso_key ;;
  }

  dimension: crm_numero_atencion {
    type: string
    sql: ${TABLE}.crm_numero_atencion ;;
  }

  dimension: crm_operador_ingreso_key {
    hidden: yes
    type: number
    sql: ${TABLE}.crm_operador_ingreso_key ;;
  }

  dimension: crm_operador_procesamiento_key {
    hidden: yes
    type: number
    sql: ${TABLE}.crm_operador_procesamiento_key ;;
  }

  dimension: crm_otros_atributos_postventa_key {
    hidden: yes
    type: number
    sql: ${TABLE}.crm_otros_atributos_postventa_key ;;
  }

  dimension: crm_producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.crm_producto_key ;;
  }

  dimension: crm_sector_operador_ingreso {
    type: string
    sql: ${TABLE}.crm_sector_operador_ingreso ;;
  }

  dimension: crm_sector_operador_procesamiento {
    type: string
    sql: ${TABLE}.crm_sector_operador_procesamiento ;;
  }

  dimension: crm_tipologia_atencion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.crm_tipologia_atencion_key ;;
  }

  dimension: duracion_atencion {
    type: number
    sql: ${TABLE}.duracion_atencion ;;
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
