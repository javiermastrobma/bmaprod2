view: fct_volumenes_permisionarios_reclamos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_volumenes_permisionarios_reclamos`
    ;;
    view_label: " Fct Volumenes Permisionarios Reclamos"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_volumenes_permisionarios_reclamos s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }
  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: cantidad {
    type: number
    sql: ${TABLE}.cantidad ;;
  }

  dimension: clasificacion_permisionario_key {
    hidden: yes
    type: number
    sql: ${TABLE}.clasificacion_permisionario_key ;;
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

  dimension: permisionario_key {
    hidden: yes
    type: number
    sql: ${TABLE}.permisionario_key ;;
  }

  dimension: producto_permisionario_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_permisionario_key ;;
  }

  dimension: tipo_permisionario_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_permisionario_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
