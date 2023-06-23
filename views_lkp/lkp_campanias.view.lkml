view: lkp_campanias {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_campanias`
    ;;
  view_label: "Datos CAMPAÑA"

  dimension: campania_key {
    hidden: yes
    type: number
    sql: ${TABLE}.campania_key ;;
  }

  dimension: cantidad_clientes_target {
    group_label: "Campaña"
    type: number
    sql: ${TABLE}.cantidad_clientes_target ;;
  }

  dimension: descripcion_abreviada_campania {
    group_label: "Campaña"
    type: string
    sql: ${TABLE}.descripcion_abreviada_campania ;;
  }

  dimension: descripcion_extensa_campania {
    group_label: "Campaña"
    type: string
    sql: ${TABLE}.descripcion_extensa_campania ;;
  }

  dimension_group: fecha_fin {
    group_label: "Campaña"
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
    sql: ${TABLE}.fecha_fin ;;
  }

  dimension_group: fecha_inicio {
    group_label: "Campaña"
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
    sql: ${TABLE}.fecha_inicio ;;
  }

  dimension_group: fecha_limite_computo_resultados {
    group_label: "Campaña"
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
    sql: ${TABLE}.fecha_limite_computo_resultados ;;
  }

  dimension: numerocampania {
    group_label: "Campaña"
    type: number
    sql: ${TABLE}.numerocampania ;;
  }

  dimension: periodicidad_carga_acciones {
    group_label: "Campaña"
    type: string
    sql: ${TABLE}.periodicidad_carga_acciones ;;
  }

  dimension: response_rate {
    group_label: "Campaña"
    type: number
    sql: ${TABLE}.response_rate ;;
  }

  dimension: response_rateii {
    group_label: "Campaña"
    type: number
    sql: ${TABLE}.response_rateii ;;
  }

  dimension: tipo_campania {
    group_label: "Campaña"
    type: string
    sql: ${TABLE}.tipo_campania ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
