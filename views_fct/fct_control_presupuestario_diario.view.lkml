view: fct_control_presupuestario_diario {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_control_presupuestario_diario`
    ;;
    view_label: " Fct Control Presupuestario Diario"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_control_presupuestario_diario s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

  dimension: area_destino_key {
    hidden: yes
    type: number
    sql: ${TABLE}.area_destino_key ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: bien_uso_key {
    hidden: yes
    type: number
    sql: ${TABLE}.bien_uso_key ;;
  }

  dimension: escenario_presupuesto {
    type: string
    sql: ${TABLE}.escenario_presupuesto ;;
  }

  dimension: escenario_presupuesto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.escenario_presupuesto_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: importe_ajuste_mes {
    type: number
    sql: ${TABLE}.importe_ajuste_mes ;;
  }

  dimension: importe_mes {
    type: number
    sql: ${TABLE}.importe_mes ;;
  }

  dimension: origen {
    type: string
    sql: ${TABLE}.origen ;;
  }

  dimension: origen_gasto_key {
    hidden: yes
    type: string
    sql: ${TABLE}.origen_gasto_key ;;
  }

  dimension: plan_cuentas_key {
    hidden: yes
    type: number
    sql: ${TABLE}.plan_cuentas_key ;;
  }

  dimension: presupuestado_a_distribuir {
    type: number
    sql: ${TABLE}.presupuestado_a_distribuir ;;
  }

  dimension: presupuestado_directo {
    type: number
    sql: ${TABLE}.presupuestado_directo ;;
  }

  dimension: presupuestado_por_distribucion {
    type: number
    sql: ${TABLE}.presupuestado_por_distribucion ;;
  }

  dimension: presupuestado_total {
    type: number
    sql: ${TABLE}.presupuestado_total ;;
  }

  dimension: tx {
    type: string
    sql: ${TABLE}.tx ;;
  }

  dimension: valor_origen {
    type: number
    sql: ${TABLE}.valor_origen ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
