view: fct_ajustes_acreditaciones_ps {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_ajustes_acreditaciones_ps`
    ;;
    view_label: " Fct Ajustes Acreditaciones Ps"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_ajustes_acreditaciones_ps s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

  dimension: acreditacion_ajuste {
    type: number
    sql: ${TABLE}.acreditacion_ajuste ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: capita_key {
    hidden: yes
    type: number
    sql: ${TABLE}.capita_key ;;
  }

  dimension: descripcion_ajuste {
    type: string
    sql: ${TABLE}.descripcion_ajuste ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: fecha_proceso_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_proceso_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
