view: lkp_programas_campania {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_programas_campania`
    ;;
  view_label: "Datos CAMPAÑA"

  dimension: codigo_programa {
    group_label: "Programas Campaña"
    type: string
    sql: ${TABLE}.codigo_programa ;;
  }

  dimension_group: fecha_fin {
    group_label: "Programas Campaña"
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
    group_label: "Programas Campaña"
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

  dimension: nombre_programa {
    group_label: "Programas Campaña"
    type: string
    sql: ${TABLE}.nombre_programa ;;
  }

  dimension: programa_campania_key {
    hidden: yes
    type: number
    sql: ${TABLE}.programa_campania_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
