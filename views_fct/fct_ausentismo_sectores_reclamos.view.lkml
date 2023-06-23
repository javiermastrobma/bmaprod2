view: fct_ausentismo_sectores_reclamos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_ausentismo_sectores_reclamos`
    ;;
    label: " Fct Ausentismo Sectores Reclamos"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_ausentismo_sectores_reclamos s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

  dimension: analista_reclamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.analista_reclamo_key ;;
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

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: motivo_ausentismo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.motivo_ausentismo_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
