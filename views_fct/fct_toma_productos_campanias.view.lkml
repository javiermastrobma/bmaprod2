view: fct_toma_productos_campanias {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_toma_productos_campanias`
    ;;
    view_label: " Fct Toma Productos Campañas"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_toma_productos_campanias s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }
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

  dimension: campania_key {
    hidden: yes
    type: number
    sql: ${TABLE}.campania_key ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: costo {
    type: number
    sql: ${TABLE}.costo ;;
  }

  dimension: cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }

  dimension: cuenta_tc_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_tc_key ;;
  }

  dimension_group: fecha_alta_producto {
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
    sql: ${TABLE}.fecha_alta_producto ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: marca_dimension {
    type: string
    sql: ${TABLE}.marca_dimension ;;
  }

  dimension: monto_operacion {
    type: number
    sql: ${TABLE}.monto_operacion ;;
  }

  dimension: numero_operacion {
    type: string
    sql: ${TABLE}.numero_operacion ;;
  }

  dimension: objetivo_campania_key {
    hidden: yes
    type: number
    sql: ${TABLE}.objetivo_campania_key ;;
  }

  dimension: paquete_key {
    hidden: yes
    type: number
    sql: ${TABLE}.paquete_key ;;
  }

  dimension: plazo {
    type: number
    sql: ${TABLE}.plazo ;;
  }

  dimension: poliza_key {
    hidden: yes
    type: number
    sql: ${TABLE}.poliza_key ;;
  }

  dimension: producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_key ;;
  }

  dimension: sucursal_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: tasa {
    type: number
    sql: ${TABLE}.tasa ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
