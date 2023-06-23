view: fct_situacion_diaria_cajas_seguridad {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_situacion_diaria_cajas_seguridad`
    ;;
    view_label: " Fct Situación Diaria Cajas Seguridad"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_situacion_diaria_cajas_seguridad s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: caja_seguridad_key {
    hidden: yes
    type: number
    sql: ${TABLE}.caja_seguridad_key ;;
  }

  dimension: cantidad_disponible {
    type: number
    sql: ${TABLE}.cantidad_disponible ;;
  }

  dimension: cantidad_fuera_servicio {
    type: number
    sql: ${TABLE}.cantidad_fuera_servicio ;;
  }

  dimension: cantidad_ocupada {
    type: number
    sql: ${TABLE}.cantidad_ocupada ;;
  }

  dimension: cantidad_uso_banco {
    type: number
    sql: ${TABLE}.cantidad_uso_banco ;;
  }

  dimension: cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }

  dimension: estado_caja_seguridad_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_caja_seguridad_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
