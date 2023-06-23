view: lkp_productos_ofertados_vigente {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_productos_ofertados_vigente`
    ;;
  view_label: "Datos CAMPAÑA"

  dimension: afectacion {
    group_label: "Productos Ofertados"
    type: number
    sql: ${TABLE}.afectacion ;;
  }

  dimension: campania_key {
    hidden: yes
    type: number
    sql: ${TABLE}.campania_key ;;
  }

  dimension: catalogo_producto_crm_key {
    hidden: yes
    type: number
    sql: ${TABLE}.catalogo_producto_crm_key ;;
  }

  dimension: convenio {
    group_label: "Productos Ofertados"
    type: string
    sql: ${TABLE}.convenio ;;
  }

  dimension: cuota_inicial {
    group_label: "Productos Ofertados"
    type: number
    sql: ${TABLE}.cuota_inicial ;;
  }

  dimension: cuota_promedio {
    group_label: "Productos Ofertados"
    type: number
    sql: ${TABLE}.cuota_promedio ;;
  }

  dimension: descripcion_precalificacion {
    group_label: "Productos Ofertados"
    type: string
    sql: ${TABLE}.descripcion_precalificacion ;;
  }

  dimension: estado_precalificacion {
    group_label: "Productos Ofertados"
    type: string
    sql: ${TABLE}.estado_precalificacion ;;
  }

  dimension_group: fecha_calificacion {
    group_label: "Productos Ofertados"
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
    sql: ${TABLE}.fecha_calificacion ;;
  }

  dimension_group: fecha_vencimiento {
    group_label: "Productos Ofertados"
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
    sql: ${TABLE}.fecha_vencimiento ;;
  }

  dimension: monto_maximo {
    group_label: "Productos Ofertados"
    type: number
    sql: ${TABLE}.monto_maximo ;;
  }

  dimension: objetivo_campania_key {
    hidden: yes
    type: number
    sql: ${TABLE}.objetivo_campania_key ;;
  }

  dimension: observaciones_precalificacion {
    group_label: "Productos Ofertados"
    type: string
    sql: ${TABLE}.observaciones_precalificacion ;;
  }

  dimension: origen {
    group_label: "Productos Ofertados"
    type: string
    sql: ${TABLE}.origen ;;
  }

  dimension: plazo {
    group_label: "Productos Ofertados"
    type: number
    sql: ${TABLE}.plazo ;;
  }

  dimension: tasa {
    group_label: "Productos Ofertados"
    type: number
    sql: ${TABLE}.tasa ;;
  }

  dimension: tipo_precalificacion {
    group_label: "Productos Ofertados"
    type: string
    sql: ${TABLE}.tipo_precalificacion ;;
  }

  dimension: tratamiento_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tratamiento_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
