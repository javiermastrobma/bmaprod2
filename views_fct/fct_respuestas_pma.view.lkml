view: fct_respuestas_pma {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_respuestas_pma`
    ;;
    view_label: " Fct Respuestas PMA"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_respuestas_pma s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
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

  dimension: canal_pma {
    type: string
    sql: ${TABLE}.canal_pma ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: convenio_key {
    hidden: yes
    type: number
    sql: ${TABLE}.convenio_key ;;
  }

  dimension: dotacion_rrhh_key {
    hidden: yes
    type: number
    sql: ${TABLE}.dotacion_rrhh_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension_group: fecha_respuesta {
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
    sql: ${TABLE}.fecha_respuesta ;;
  }

  dimension: fecha_respuesta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_respuesta_key ;;
  }

  dimension: fecha_vencimiento_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_vencimiento_key ;;
  }

  dimension: hora_respuesta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.hora_respuesta_key ;;
  }

  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }

  dimension: pma_key {
    hidden: yes
    type: number
    sql: ${TABLE}.pma_key ;;
  }

  dimension: prioridad {
    type: number
    sql: ${TABLE}.prioridad ;;
  }

  dimension: prospecto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.prospecto_key ;;
  }

  dimension: puntaje {
    type: number
    sql: ${TABLE}.puntaje ;;
  }

  dimension: respuesta {
    type: string
    sql: ${TABLE}.respuesta ;;
  }

  dimension: sucursal_ejecutivo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_ejecutivo_key ;;
  }

  dimension: sucursal_pma_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_pma_key ;;
  }

  dimension: tipo_respuesta_pma_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_respuesta_pma_key ;;
  }

  dimension: usuario_creador {
    type: string
    sql: ${TABLE}.usuario_creador ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
