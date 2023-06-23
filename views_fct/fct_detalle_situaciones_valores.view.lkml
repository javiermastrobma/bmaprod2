view: fct_detalle_situaciones_valores {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_detalle_situaciones_valores`
    ;;
    view_label: " Fct Detalle Situaciones Valores"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_detalle_situaciones_valores s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: clasificacion_contable_key {
    hidden: yes
    type: number
    sql: ${TABLE}.clasificacion_contable_key ;;
  }

  dimension: especie_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: importe {
    type: number
    sql: ${TABLE}.importe ;;
  }

  dimension: numero_operacion {
    type: number
    sql: ${TABLE}.numero_operacion ;;
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

  dimension: tipo_saldo_factoring {
    type: string
    sql: ${TABLE}.tipo_saldo_factoring ;;
  }

  dimension: valor_key {
    hidden: yes
    type: number
    sql: ${TABLE}.valor_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
