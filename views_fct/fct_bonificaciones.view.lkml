view: fct_bonificaciones {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_bonificaciones`
    ;;
    label: " Fct Bonificaciones"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_bonificaciones s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: categoria_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.categoria_cuenta_key ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }

  dimension: estado_bonificacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_bonificacion_key ;;
  }

  dimension: estado_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_cuenta_key ;;
  }

  dimension_group: fecha_alta_bonificacion {
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
    sql: ${TABLE}.fecha_alta_bonificacion ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension_group: fecha_vencimiento_bonificacion {
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
    sql: ${TABLE}.fecha_vencimiento_bonificacion ;;
  }

  dimension: paquete_id {
    type: string
    sql: ${TABLE}.paquete_id ;;
  }

  dimension: producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_key ;;
  }

  dimension: rubro_bonificacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.rubro_bonificacion_key ;;
  }

  dimension: sucursal_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_key ;;
  }

  dimension: tipo_bonificacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_bonificacion_key ;;
  }

  dimension: valor_bonificacion {
    type: number
    sql: ${TABLE}.valor_bonificacion ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
