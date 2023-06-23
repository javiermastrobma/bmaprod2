view: lkp_analistas_reclamos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_analistas_reclamos`
    ;;
  view_label: "Datos RECLAMO"

  dimension: analista_reclamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.analista_reclamo_key ;;
  }

  dimension_group: fecha_desde {
    group_label: "Analistas Reclamo"
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
    sql: ${TABLE}.fecha_desde ;;
  }

  dimension_group: fecha_hasta {
    group_label: "Analistas Reclamo"
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
    sql: ${TABLE}.fecha_hasta ;;
  }

  dimension: grupo_analisis_reclamo_key {
    group_label: "Analistas Reclamo"
    hidden: yes
    type: number
    sql: ${TABLE}.grupo_analisis_reclamo_key ;;
  }

  dimension: login_analista {
    group_label: "Analistas Reclamo"
    type: string
    sql: ${TABLE}.login_analista ;;
  }

  dimension: nombre_analista {
    group_label: "Analistas Reclamo"
    type: string
    sql: ${TABLE}.nombre_analista ;;
  }

  dimension: objetivo_produccion {
    group_label: "Analistas Reclamo"
    type: number
    sql: ${TABLE}.objetivo_produccion ;;
  }

  dimension: personal_key {
    hidden: yes
    type: number
    sql: ${TABLE}.personal_key ;;
  }

  dimension: vigente {
    group_label: "Analistas Reclamo"
    type: string
    sql: ${TABLE}.vigente ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}

#LKP ANALISTAS RECLAMOS CONCEPTO PARA MODELO ESTRELLA RECLAMOS AJUSTES

view: lkp_analistas_reclamos_concepto {
  extends: [lkp_analistas_reclamos]

  dimension_group: fecha_desde {
    group_label: "Analistas Reclamo - Concepto"
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
    sql: ${TABLE}.fecha_desde ;;
  }

  dimension_group: fecha_hasta {
    group_label: "Analistas Reclamo - Concepto"
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
    sql: ${TABLE}.fecha_hasta ;;
  }

  dimension: grupo_analisis_reclamo_key {
    group_label: "Analistas Reclamo - Concepto"
    hidden: yes
    type: number
    sql: ${TABLE}.grupo_analisis_reclamo_key ;;
  }

  dimension: login_analista {
    group_label: "Analistas Reclamo - Concepto"
    type: string
    sql: ${TABLE}.login_analista ;;
  }

  dimension: nombre_analista {
    group_label: "Analistas Reclamo - Concepto"
    type: string
    sql: ${TABLE}.nombre_analista ;;
  }

  dimension: objetivo_produccion {
    group_label: "Analistas Reclamo - Concepto"
    type: number
    sql: ${TABLE}.objetivo_produccion ;;
  }
  dimension: vigente {
    group_label: "Analistas Reclamo - Concepto"
    type: string
    sql: ${TABLE}.vigente ;;
  }

}

#LKP ANALISTAS RECLAMOS AJUSTE PARA MODELO ESTRELLA RECLAMOS AJUSTES

view: lkp_analistas_reclamos_ajuste {
  extends: [lkp_analistas_reclamos]

  dimension_group: fecha_desde {
    group_label: "Analistas Reclamo - Ajuste"
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
    sql: ${TABLE}.fecha_desde ;;
  }

  dimension_group: fecha_hasta {
    group_label: "Analistas Reclamo - Ajuste"
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
    sql: ${TABLE}.fecha_hasta ;;
  }

  dimension: grupo_analisis_reclamo_key {
    group_label: "Analistas Reclamo - Ajuste"
    hidden: yes
    type: number
    sql: ${TABLE}.grupo_analisis_reclamo_key ;;
  }

  dimension: login_analista {
    group_label: "Analistas Reclamo - Ajuste"
    type: string
    sql: ${TABLE}.login_analista ;;
  }

  dimension: nombre_analista {
    group_label: "Analistas Reclamo - Ajuste"
    type: string
    sql: ${TABLE}.nombre_analista ;;
  }

  dimension: objetivo_produccion {
    group_label: "Analistas Reclamo - Ajuste"
    type: number
    sql: ${TABLE}.objetivo_produccion ;;
  }
  dimension: vigente {
    group_label: "Analistas Reclamo - Ajuste"
    type: string
    sql: ${TABLE}.vigente ;;
  }

}
