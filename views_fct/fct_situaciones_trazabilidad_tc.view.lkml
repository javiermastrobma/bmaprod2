view: fct_situaciones_trazabilidad_tc {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_situaciones_trazabilidad_tc`
    ;;
    view_label: " Fct Situaciones Trazabilidad TC"

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

dimension: cliente_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cliente_key ;;
}

dimension: cuenta_tc_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cuenta_tc_key ;;
}

dimension: duracion_total_entrega {
  type: number
  sql: ${TABLE}.duracion_total_entrega ;;
}

dimension: fecha_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_key ;;
}

dimension: marca_key {
  hidden: yes
  type: number
  sql: ${TABLE}.marca_key ;;
}

dimension: numero_tc {
  type: string
  sql: ${TABLE}.numero_tc ;;
}

dimension: permisionario_key {
  hidden: yes
  type: number
  sql: ${TABLE}.permisionario_key ;;
}

dimension: producto_key {
  hidden: yes
  type: number
  sql: ${TABLE}.producto_key ;;
}

dimension: residencia_key {
  hidden: yes
  type: number
  sql: ${TABLE}.residencia_key ;;
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

dimension: sucursal_fin_ciclo_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_fin_ciclo_key ;;
}

dimension: sucursal_inicio_ciclo_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_inicio_ciclo_key ;;
}

dimension: tarjeta_credito_key {
  hidden: yes
  type: number
  sql: ${TABLE}.tarjeta_credito_key ;;
}

dimension: tipo_distribucion {
  type: string
  sql: ${TABLE}.tipo_distribucion ;;
}

dimension: ultimo_movimiento_trazabilidad_key {
  hidden: yes
  type: number
  sql: ${TABLE}.ultimo_movimiento_trazabilidad_key ;;
}

dimension: valoracion_cliente {
  type: number
  sql: ${TABLE}.valoracion_cliente ;;
}

dimension: version_tc {
  type: number
  sql: ${TABLE}.version_tc ;;
}

dimension: zona_distribucion {
  type: string
  sql: ${TABLE}.zona_distribucion ;;
}

measure: count {
  type: count
  drill_fields: []
}
}
