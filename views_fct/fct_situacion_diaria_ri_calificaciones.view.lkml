view: fct_situacion_diaria_ri_calificaciones {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_situacion_diaria_ri_calificaciones`
    ;;
    view_label: " Fct Situación Diaria Ri Calificaciones"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_situacion_diaria_ri_calificaciones s
      LEFT JOIN lkp_fechas f ON s.fecha_transaccion_key = f.fecha_key) ;;
  }
  dimension: actividad_extendida_key {
    hidden: yes
    type: number
    sql: ${TABLE}.actividad_extendida_key ;;
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

  dimension: calificacion_estado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.calificacion_estado_key ;;
  }

  dimension: calificacion_garantia_key {
    hidden: yes
    type: number
    sql: ${TABLE}.calificacion_garantia_key ;;
  }

  dimension: calificacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.calificacion_key ;;
  }

  dimension: calificacion_linea_sl_key {
    hidden: yes
    type: number
    sql: ${TABLE}.calificacion_linea_sl_key ;;
  }

  dimension: calificacion_operacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.calificacion_operacion_key ;;
  }

  dimension: cliente_centralizado {
    type: string
    sql: ${TABLE}.cliente_centralizado ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: cotizacion {
    type: number
    sql: ${TABLE}.cotizacion ;;
  }

  dimension: dias_prorroga_calificacion {
    type: number
    sql: ${TABLE}.dias_prorroga_calificacion ;;
  }

  dimension: dias_prorroga_sublinea {
    type: number
    sql: ${TABLE}.dias_prorroga_sublinea ;;
  }

  dimension: especie_linea_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_linea_key ;;
  }

  dimension: especie_sublinea_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_sublinea_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension_group: fecha_vencimiento_calificacion {
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
    sql: ${TABLE}.fecha_vencimiento_calificacion ;;
  }

  dimension_group: fecha_vencimiento_sublinea {
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
    sql: ${TABLE}.fecha_vencimiento_sublinea ;;
  }

  dimension: maximo_endeudamiento_mn {
    type: number
    sql: ${TABLE}.maximo_endeudamiento_mn ;;
  }

  dimension: oficial_cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_cliente_key ;;
  }

  dimension: solicitud_crm {
    type: string
    sql: ${TABLE}.solicitud_crm ;;
  }

  dimension: sucursal_oficial_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_oficial_key ;;
  }

  dimension: sucursal_radicacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_radicacion_key ;;
  }

  dimension: tipo_calificacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_calificacion_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
