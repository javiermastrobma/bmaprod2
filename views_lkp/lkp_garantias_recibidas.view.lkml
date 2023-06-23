view: lkp_garantias_recibidas {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_garantias_recibidas`
    ;;

dimension: banco_key {
  hidden: yes
  type: number
  sql: ${TABLE}.banco_key ;;
}

dimension: cartera_operacion_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cartera_operacion_key ;;
}

dimension: clase_cartera_key {
  hidden: yes
  type: number
  sql: ${TABLE}.clase_cartera_key ;;
}

dimension: clase_garantia {
  view_label: "Datos GARANTÍAS"
  group_label: "Garantía Recibidas"
  type: string
  sql: ${TABLE}.clase_garantia ;;
}

dimension: cliente_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cliente_key ;;
}

dimension: compartida {
  view_label: "Datos GARANTÍAS"
  group_label: "Garantía Recibidas"
  type: string
  sql: ${TABLE}.compartida ;;
}

dimension: descripcion {
  view_label: "Datos GARANTÍAS"
  group_label: "Garantía Recibidas"
  type: string
  sql: ${TABLE}.descripcion ;;
}

dimension: especie_key {
  hidden: yes
  type: number
  sql: ${TABLE}.especie_key ;;
}

dimension: estado_garantia_key {
  hidden: yes
  type: number
  sql: ${TABLE}.estado_garantia_key ;;
}

dimension_group: fecha_alta_garantia {
  view_label: "Datos GARANTÍAS"
  group_label: "Garantía Recibidas"
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
  sql: ${TABLE}.fecha_alta_garantia ;;
}

dimension_group: fecha_constitucion_garantia {
  view_label: "Datos GARANTÍAS"
  group_label: "Garantía Recibidas"
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
  sql: ${TABLE}.fecha_constitucion_garantia ;;
}

dimension_group: fecha_ingreso_garantia {
  view_label: "Datos GARANTÍAS"
  group_label: "Garantía Recibidas"
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
  sql: ${TABLE}.fecha_ingreso_garantia ;;
}

dimension_group: fecha_prescripcion {
  view_label: "Datos GARANTÍAS"
  group_label: "Garantía Recibidas"
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
  sql: ${TABLE}.fecha_prescripcion ;;
}

dimension_group: fecha_vencimiento_garantia {
  view_label: "Datos GARANTÍAS"
  group_label: "Garantía Recibidas"
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
  sql: ${TABLE}.fecha_vencimiento_garantia ;;
}

dimension: garantia {
  view_label: "Datos GARANTÍAS"
  group_label: "Garantía Recibidas"
  type: string
  sql: ${TABLE}.garantia ;;
}

dimension: garantia_migrada {
  view_label: "Datos GARANTÍAS"
  group_label: "Garantía Recibidas"
  type: string
  sql: ${TABLE}.garantia_migrada ;;
}

dimension: garantia_recibida_key {
  hidden: yes
  type: number
  sql: ${TABLE}.garantia_recibida_key ;;
}

dimension: instruccion {
  view_label: "Datos GARANTÍAS"
  group_label: "Garantía Recibidas"
  type: string
  sql: ${TABLE}.instruccion ;;
}

dimension: monto_tasacion_original {
  view_label: "Datos GARANTÍAS"
  group_label: "Garantía Recibidas"
  type: number
  sql: ${TABLE}.monto_tasacion_original ;;
}

dimension: sector_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sector_key ;;
}

dimension: sucursal_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_cuenta_key ;;
}

dimension: tipo_garantia {
  view_label: "Datos GARANTÍAS"
  group_label: "Garantía Recibidas"
  type: string
  sql: ${TABLE}.tipo_garantia ;;
}

dimension: ubicacion_key {
  hidden: yes
  type: number
  sql: ${TABLE}.ubicacion_key ;;
}

measure: count {
  hidden:  yes
  type: count
  drill_fields: []
}
}
