view: lkp_promociones {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_promociones`
    ;;

dimension: banco_key {
  hidden: yes
  type: number
  sql: ${TABLE}.banco_key ;;
}

dimension: comercio_key {
  hidden: yes
  type: number
  sql: ${TABLE}.comercio_key ;;
}

dimension: costo_financiero {
  type: string
  sql: ${TABLE}.costo_financiero ;;
}

dimension: cuota_costo_financiero_desde {
  type: number
  sql: ${TABLE}.cuota_costo_financiero_desde ;;
}

dimension: cuota_costo_financiero_hasta {
  type: number
  sql: ${TABLE}.cuota_costo_financiero_hasta ;;
}

dimension: descuento_cliente {
  type: number
  sql: ${TABLE}.descuento_cliente ;;
}

dimension: descuento_comercio {
  type: number
  sql: ${TABLE}.descuento_comercio ;;
}

dimension: entidad_source {
  type: number
  sql: ${TABLE}.entidad_source ;;
}

dimension_group: fecha_baja_promocion {
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
  sql: ${TABLE}.fecha_baja_promocion ;;
}

dimension: producto_amex {
  type: string
  sql: ${TABLE}.producto_amex ;;
}

dimension: producto_credito {
  type: string
  sql: ${TABLE}.producto_credito ;;
}

dimension: producto_debito {
  type: string
  sql: ${TABLE}.producto_debito ;;
}

dimension: producto_regalo {
  type: string
  sql: ${TABLE}.producto_regalo ;;
}

dimension: promo_dia_domingo {
  type: string
  sql: ${TABLE}.promo_dia_domingo ;;
}

dimension: promo_dia_jueves {
  type: string
  sql: ${TABLE}.promo_dia_jueves ;;
}

dimension: promo_dia_lunes {
  type: string
  sql: ${TABLE}.promo_dia_lunes ;;
}

dimension: promo_dia_martes {
  type: string
  sql: ${TABLE}.promo_dia_martes ;;
}

dimension: promo_dia_miercoles {
  type: string
  sql: ${TABLE}.promo_dia_miercoles ;;
}

dimension: promo_dia_sabado {
  type: string
  sql: ${TABLE}.promo_dia_sabado ;;
}

dimension: promo_dia_viernes {
  type: string
  sql: ${TABLE}.promo_dia_viernes ;;
}

dimension: promocion_cuota_desde {
  type: number
  sql: ${TABLE}.promocion_cuota_desde ;;
}

dimension: promocion_cuota_hasta {
  type: number
  sql: ${TABLE}.promocion_cuota_hasta ;;
}

dimension: promocion_descripcion {
  type: string
  sql: ${TABLE}.promocion_descripcion ;;
}

dimension: promocion_key {
  hidden: yes
  type: number
  sql: ${TABLE}.promocion_key ;;
}

dimension: promocion_marca {
  type: string
  sql: ${TABLE}.promocion_marca ;;
}

dimension: promocion_source {
  type: string
  sql: ${TABLE}.promocion_source ;;
}

dimension_group: promocion_vigencia_desde {
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
  sql: ${TABLE}.promocion_vigencia_desde ;;
}

dimension_group: promocion_vigencia_hasta {
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
  sql: ${TABLE}.promocion_vigencia_hasta ;;
}

dimension: segmento_credito {
  type: string
  sql: ${TABLE}.segmento_credito ;;
}

dimension: segmento_debito {
  type: string
  sql: ${TABLE}.segmento_debito ;;
}

dimension: sucursal_comercio_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_comercio_key ;;
}

dimension: tipo_segmento {
  type: string
  sql: ${TABLE}.tipo_segmento ;;
}

dimension_group: vigencia_desde_estab {
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
  sql: ${TABLE}.vigencia_desde_estab ;;
}

dimension_group: vigencia_hasta_estab {
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
  sql: ${TABLE}.vigencia_hasta_estab ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
