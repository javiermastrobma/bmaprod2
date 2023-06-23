view: fct_situacion_diaria_actividades_reclamos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_situacion_diaria_actividades_reclamos`
    ;;
  view_label: " Fct Situación Diaria Actividades Reclamos"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_situacion_diaria_actividades_reclamos s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

  dimension: actividad_reclamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.actividad_reclamo_key ;;
  }

  dimension: alerta {
    type: string
    sql: ${TABLE}.alerta ;;
  }

  dimension: analista_aprobacion_ajustes_key {
    hidden: yes
    type: number
    sql: ${TABLE}.analista_aprobacion_ajustes_key ;;
  }

  dimension: analista_creacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.analista_creacion_key ;;
  }

  dimension: analista_modificacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.analista_modificacion_key ;;
  }

  dimension: analista_reclamo_actividad_key {
    hidden: yes
    type: number
    sql: ${TABLE}.analista_reclamo_actividad_key ;;
  }

  dimension: banca_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banca_key ;;
  }

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

  dimension: estado_actividad_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_actividad_key ;;
  }

  dimension: fecha_fin_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_fin_key ;;
  }

  dimension: fecha_inicio_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_inicio_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: fecha_modificacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_modificacion_key ;;
  }

  dimension: fecha_vencimiento_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_vencimiento_key ;;
  }

  dimension: id_actividad {
    type: string
    sql: ${TABLE}.id_actividad ;;
  }

  dimension: privado {
    type: string
    sql: ${TABLE}.privado ;;
  }

  dimension: reclamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.reclamo_key ;;
  }

  dimension: sector_reclamo_actividad_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sector_reclamo_actividad_key ;;
  }

  dimension: tiempo_cumplimiento {
    type: number
    sql: ${TABLE}.tiempo_cumplimiento ;;
  }

  dimension: tiempo_estimado_resolucion_actividad {
    type: number
    sql: ${TABLE}.tiempo_estimado_resolucion_actividad ;;
  }

  dimension: tiempo_real_resolucion_actividad {
    type: number
    sql: ${TABLE}.tiempo_real_resolucion_actividad ;;
  }

  dimension: tipo_actividad_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_actividad_key ;;
  }

  dimension: tipologia_reclamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipologia_reclamo_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
