view: lkp_fecha_vencimiento {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_fecha_vencimiento`
    ;;

dimension: anio {
  label: "Año Vencimiento"
  view_label: "Otras Dimensiones"
  group_label: "Fecha Vencimiento"
  type: number
  sql: ${TABLE}.anio ;;
}

dimension: dia_semana {
  view_label: "Otras Dimensiones"
  group_label: "Fecha Vencimiento"
  type: string
  sql: ${TABLE}.dia_semana ;;
}

dimension_group: fecha {
  view_label: "Otras Dimensiones"
  group_label: "Fecha Vencimiento"
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
  sql: ${TABLE}.fecha ;;
}

dimension: fecha_vencimiento_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_vencimiento_key ;;
}

dimension: flag_fin_mes {
  view_label: "Otras Dimensiones"
  group_label: "Fecha Vencimiento"
  type: string
  sql: ${TABLE}.flag_fin_mes ;;
}

dimension: mes {
  view_label: "Otras Dimensiones"
  group_label: "Fecha Vencimiento"
  type: string
  sql: ${TABLE}.mes ;;
}

dimension: multiplicador {
  view_label: "Otras Dimensiones"
  group_label: "Fecha Vencimiento"
  type: number
  sql: ${TABLE}.multiplicador ;;
}

dimension: n_dia {
  view_label: "Otras Dimensiones"
  group_label: "Fecha Vencimiento"
  type: number
  sql: ${TABLE}.n_dia ;;
}

dimension: n_dia_semana {
  view_label: "Otras Dimensiones"
  group_label: "Fecha Vencimiento"
  type: number
  sql: ${TABLE}.n_dia_semana ;;
}

dimension: n_mes {
  view_label: "Otras Dimensiones"
  group_label: "Fecha Vencimiento"
  type: number
  sql: ${TABLE}.n_mes ;;
}

dimension: tipo_dia {
  view_label: "Otras Dimensiones"
  group_label: "Fecha Vencimiento"
  type: string
  sql: ${TABLE}.tipo_dia ;;
}

dimension: trimestre {
  view_label: "Otras Dimensiones"
  group_label: "Fecha Vencimiento"
  type: string
  sql: ${TABLE}.trimestre ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
