view: fct_seguimiento_tramites {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_seguimiento_tramites`
    ;;
    view_label: " Fct Seguimiento Tramites"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_alta_key} = (SELECT MAX(f.fecha_key) FROM fct_seguimiento_tramites s
      LEFT JOIN lkp_fechas f ON s.fecha_alta_key = f.fecha_key) ;;
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

  dimension: canal_venta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.canal_venta_key ;;
  }

  dimension: clasificacion_cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.clasificacion_cliente_key ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: duracion_aprobacion_nivel1 {
    type: number
    sql: ${TABLE}.duracion_aprobacion_nivel1 ;;
  }

  dimension: duracion_aprobacion_nivel2 {
    type: number
    sql: ${TABLE}.duracion_aprobacion_nivel2 ;;
  }

  dimension: duracion_aprobacion_nivel3 {
    type: number
    sql: ${TABLE}.duracion_aprobacion_nivel3 ;;
  }

  dimension: duracion_ingreso {
    type: number
    sql: ${TABLE}.duracion_ingreso ;;
  }

  dimension: duracion_tope_aprobacion_nivel1 {
    type: number
    sql: ${TABLE}.duracion_tope_aprobacion_nivel1 ;;
  }

  dimension: duracion_tope_aprobacion_nivel2 {
    type: number
    sql: ${TABLE}.duracion_tope_aprobacion_nivel2 ;;
  }

  dimension: duracion_tope_aprobacion_nivel3 {
    type: number
    sql: ${TABLE}.duracion_tope_aprobacion_nivel3 ;;
  }

  dimension: duracion_tope_ingreso {
    type: number
    sql: ${TABLE}.duracion_tope_ingreso ;;
  }

  dimension: duracion_tope_total {
    type: number
    sql: ${TABLE}.duracion_tope_total ;;
  }

  dimension: duracion_total {
    type: number
    sql: ${TABLE}.duracion_total ;;
  }

  dimension: estado_tramite_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_tramite_key ;;
  }

  dimension_group: fecha_alta {
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
    sql: ${TABLE}.fecha_alta ;;
  }

  dimension: fecha_alta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_alta_key ;;
  }

  dimension_group: fecha_cierre {
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

  dimension_group: fecha_entrada_aprobacion_nivel1 {
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
    sql: ${TABLE}.fecha_entrada_aprobacion_nivel1 ;;
  }

  dimension_group: fecha_entrada_aprobacion_nivel2 {
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
    sql: ${TABLE}.fecha_entrada_aprobacion_nivel2 ;;
  }

  dimension_group: fecha_entrada_aprobacion_nivel3 {
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
    sql: ${TABLE}.fecha_entrada_aprobacion_nivel3 ;;
  }

  dimension_group: fecha_entrada_ingreso {
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
    sql: ${TABLE}.fecha_entrada_ingreso ;;
  }

  dimension_group: fecha_salida_aprobacion_nivel1 {
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
    sql: ${TABLE}.fecha_salida_aprobacion_nivel1 ;;
  }

  dimension_group: fecha_salida_aprobacion_nivel2 {
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
    sql: ${TABLE}.fecha_salida_aprobacion_nivel2 ;;
  }

  dimension_group: fecha_salida_aprobacion_nivel3 {
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
    sql: ${TABLE}.fecha_salida_aprobacion_nivel3 ;;
  }

  dimension_group: fecha_salida_ingreso {
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
    sql: ${TABLE}.fecha_salida_ingreso ;;
  }

  dimension: funcion_aprobacion_nivel1_key {
    hidden: yes
    type: number
    sql: ${TABLE}.funcion_aprobacion_nivel1_key ;;
  }

  dimension: funcion_aprobacion_nivel2_key {
    hidden: yes
    type: number
    sql: ${TABLE}.funcion_aprobacion_nivel2_key ;;
  }

  dimension: funcion_aprobacion_nivel3_key {
    hidden: yes
    type: number
    sql: ${TABLE}.funcion_aprobacion_nivel3_key ;;
  }

  dimension: funcion_ingreso_key {
    hidden: yes
    type: number
    sql: ${TABLE}.funcion_ingreso_key ;;
  }

  dimension: funcion_vigente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.funcion_vigente_key ;;
  }

  dimension: motivo_rechazo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.motivo_rechazo_key ;;
  }

  dimension: numero_tramite {
    type: number
    sql: ${TABLE}.numero_tramite ;;
  }

  dimension: oficial_aprobacion_nivel1_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_aprobacion_nivel1_key ;;
  }

  dimension: oficial_aprobacion_nivel2_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_aprobacion_nivel2_key ;;
  }

  dimension: oficial_aprobacion_nivel3_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_aprobacion_nivel3_key ;;
  }

  dimension: oficial_ingreso_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_ingreso_key ;;
  }

  dimension: oficial_venta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_venta_key ;;
  }

  dimension: oficial_vigente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_vigente_key ;;
  }

  dimension: repeticiones_aprobacion_nivel1 {
    type: number
    sql: ${TABLE}.repeticiones_aprobacion_nivel1 ;;
  }

  dimension: repeticiones_aprobacion_nivel2 {
    type: number
    sql: ${TABLE}.repeticiones_aprobacion_nivel2 ;;
  }

  dimension: repeticiones_aprobacion_nivel3 {
    type: number
    sql: ${TABLE}.repeticiones_aprobacion_nivel3 ;;
  }

  dimension: repeticiones_ingreso {
    type: number
    sql: ${TABLE}.repeticiones_ingreso ;;
  }

  dimension: sucursal_ingreso_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_ingreso_key ;;
  }

  dimension: sucursal_venta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_venta_key ;;
  }

  dimension: tramite_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tramite_key ;;
  }

  dimension: vendedor_key {
    hidden: yes
    type: number
    sql: ${TABLE}.vendedor_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
