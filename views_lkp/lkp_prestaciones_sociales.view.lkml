view: lkp_prestaciones_sociales {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_prestaciones_sociales`
    ;;
  view_label: "Otras Dimensiones"

  dimension: activacion_certificado_debito {
    group_label: "Prestaciones Sociales"
    type: string
    sql: ${TABLE}.activacion_certificado_debito ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }

  dimension: cuenta_pago_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_pago_key ;;
  }

  dimension: entidad_prestadora_key {
    hidden: yes
    type: number
    sql: ${TABLE}.entidad_prestadora_key ;;
  }

  dimension: estado_beneficio {
    group_label: "Prestaciones Sociales"
    type: string
    sql: ${TABLE}.estado_beneficio ;;
  }

  dimension_group: fecha_alta {
    group_label: "Prestaciones Sociales"
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
    sql: ${TABLE}.fecha_alta ;;
  }

  dimension_group: fecha_baja {
    group_label: "Prestaciones Sociales"
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
    sql: ${TABLE}.fecha_baja ;;
  }

  dimension: numero_beneficio {
    group_label: "Prestaciones Sociales"
    type: string
    sql: ${TABLE}.numero_beneficio ;;
  }

  dimension: plazo_vigencia_certificado {
    group_label: "Prestaciones Sociales"
    type: number
    sql: ${TABLE}.plazo_vigencia_certificado ;;
  }

  dimension: producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_key ;;
  }

  dimension: sucursal_beneficio_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_beneficio_key ;;
  }

  dimension: sucursal_certificado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_certificado_key ;;
  }

  dimension: vigencia_certificado {
    group_label: "Prestaciones Sociales"
    type: string
    sql: ${TABLE}.vigencia_certificado ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
