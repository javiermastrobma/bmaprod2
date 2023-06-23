view: lkp_entidades_prestadoras {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_entidades_prestadoras`
    ;;
  view_label: "Otras Dimensiones"

  dimension: codigo_entidad {
    group_label: "Entidades Prestadoras"
    type: string
    sql: ${TABLE}.codigo_entidad ;;
  }

  dimension: entidad_prestadora_key {
    hidden: yes
    type: number
    sql: ${TABLE}.entidad_prestadora_key ;;
  }

  dimension_group: fecha_cierre {
    group_label: "Entidades Prestadoras"
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
    sql: ${TABLE}.fecha_cierre ;;
  }

  dimension: nombre_entidad {
    group_label: "Entidades Prestadoras"
    type: string
    sql: ${TABLE}.nombre_entidad ;;
  }

  dimension: tipo_entidad {
    group_label: "Entidades Prestadoras"
    type: string
    sql: ${TABLE}.tipo_entidad ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
