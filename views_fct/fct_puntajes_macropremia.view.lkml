view: fct_puntajes_macropremia {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_puntajes_macropremia`
    ;;
    view_label: " Fct Puntajes Macropremia"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_puntajes_macropremia s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }
  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: codigo_cliente {
    type: string
    sql: ${TABLE}.codigo_cliente ;;
  }

  dimension: cuenta_tc_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_tc_key ;;
  }

  dimension: cuenta_td_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_td_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: marca_key {
    hidden: yes
    type: number
    sql: ${TABLE}.marca_key ;;
  }

  dimension: puntaje_macropremia {
    type: number
    sql: ${TABLE}.puntaje_macropremia ;;
  }

  dimension: tipo_puntaje_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_puntaje_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
