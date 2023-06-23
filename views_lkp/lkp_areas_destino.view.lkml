view: lkp_areas_destino {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_areas_destino`
    ;;
    view_label: "Otras Dimensiones"

  dimension: area {
    group_label: "Áreas Destino"
    type: string
    sql: ${TABLE}.area ;;
  }

  dimension: area_canal {
    group_label: "Áreas Destino"
    type: string
    sql: ${TABLE}.area_canal ;;
  }

  dimension: area_destino_key {
    hidden: yes
    type: number
    sql: ${TABLE}.area_destino_key ;;
  }

  dimension: area_interes {
    group_label: "Áreas Destino"
    type: string
    sql: ${TABLE}.area_interes ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: departamento {
    group_label: "Áreas Destino"
    type: string
    sql: ${TABLE}.departamento ;;
  }

  dimension: division {
    group_label: "Áreas Destino"
    type: string
    sql: ${TABLE}.division ;;
  }

  dimension_group: fecha_desde {
    group_label: "Áreas Destino"
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
    sql: ${TABLE}.fecha_desde ;;
  }

  dimension: gerencia {
    group_label: "Áreas Destino"
    type: string
    sql: ${TABLE}.gerencia ;;
  }

  dimension: marca_inactiva {
    group_label: "Áreas Destino"
    type: string
    sql: ${TABLE}.marca_inactiva ;;
  }

  dimension: oficina {
    group_label: "Áreas Destino"
    type: string
    sql: ${TABLE}.oficina ;;
  }

  dimension: tipo_area_canal {
    group_label: "Áreas Destino"
    type: string
    sql: ${TABLE}.tipo_area_canal ;;
  }

  dimension: unidad_gestion {
    group_label: "Áreas Destino"
    type: string
    sql: ${TABLE}.unidad_gestion ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
