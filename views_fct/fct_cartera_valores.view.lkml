view: fct_cartera_valores {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_cartera_valores`
    ;;
    view_label: " Fct Cartera Valores"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_vencimiento_key} = (SELECT MAX(f.fecha_key) FROM fct_cartera_valores s
      LEFT JOIN lkp_fechas f ON s.fecha_transaccion_key = f.fecha_key) ;;
  }
  dimension: banca_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banca_key ;;
  }

  dimension: banco_girado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_girado_key ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: cantidad_valores {
    type: number
    sql: ${TABLE}.cantidad_valores ;;
  }

  dimension: especie_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_key ;;
  }

  dimension: estado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_key ;;
  }

  dimension: fecha_vencimiento_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_vencimiento_key ;;
  }

  dimension: importe_negociado {
    type: number
    sql: ${TABLE}.importe_negociado ;;
  }

  dimension: importe_nominal {
    type: number
    sql: ${TABLE}.importe_nominal ;;
  }

  dimension: mercado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.mercado_key ;;
  }

  dimension: producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_key ;;
  }

  dimension: sector_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sector_key ;;
  }

  dimension: sucursal_destino_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_destino_key ;;
  }

  dimension: sucursal_ingreso_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_ingreso_key ;;
  }

  dimension: tipo_comprobante_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_comprobante_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
