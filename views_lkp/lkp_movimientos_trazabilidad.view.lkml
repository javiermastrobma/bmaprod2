view: lkp_movimientos_trazabilidad {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_movimientos_trazabilidad`
    ;;
  view_label: "Datos TRAZABILIDAD"

dimension: agrupacion {
  group_label: "Movimientos"
  type: string
  sql: ${TABLE}.agrupacion ;;
}

dimension: codigo_destino {
  group_label: "Movimientos"
  type: string
  sql: ${TABLE}.codigo_destino ;;
}

dimension: codigo_movimiento {
  group_label: "Movimientos"
  type: string
  sql: ${TABLE}.codigo_movimiento ;;
}

dimension: descripcion {
  group_label: "Movimientos"
  type: string
  sql: ${TABLE}.descripcion ;;
}

dimension: entidad_source {
  group_label: "Movimientos"
  type: number
  sql: ${TABLE}.entidad_source ;;
}

dimension_group: fecha_baja {
  group_label: "Movimientos"
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

dimension: marca_key {
  hidden: yes
  type: number
  sql: ${TABLE}.marca_key ;;
}

dimension: movimiento_trazabilidad_key {
  hidden: yes
  type: number
  sql: ${TABLE}.movimiento_trazabilidad_key ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
