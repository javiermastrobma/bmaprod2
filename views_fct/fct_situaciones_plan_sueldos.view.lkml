view: fct_situaciones_plan_sueldos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_situaciones_plan_sueldos`
    ;;
    view_label: " Fct Situaciones Plan Sueldos"

  dimension: acreditacion_ajuste_mes {
    type: number
    sql: ${TABLE}.acreditacion_ajuste_mes ;;
  }

  dimension: acreditacion_ajuste_mes_ant {
    type: number
    sql: ${TABLE}.acreditacion_ajuste_mes_ant ;;
  }

  dimension: acreditacion_ajuste_mes_ant_ant {
    type: number
    sql: ${TABLE}.acreditacion_ajuste_mes_ant_ant ;;
  }

  dimension: acreditacion_concentrador_mes {
    type: number
    sql: ${TABLE}.acreditacion_concentrador_mes ;;
  }

  dimension: acreditacion_concentrador_mes_ant {
    type: number
    sql: ${TABLE}.acreditacion_concentrador_mes_ant ;;
  }

  dimension: acreditacion_concentrador_mes_ant_ant {
    type: number
    sql: ${TABLE}.acreditacion_concentrador_mes_ant_ant ;;
  }

  dimension: acreditacion_datanet_honorarios_mes {
    type: number
    sql: ${TABLE}.acreditacion_datanet_honorarios_mes ;;
  }

  dimension: acreditacion_datanet_honorarios_mes_ant {
    type: number
    sql: ${TABLE}.acreditacion_datanet_honorarios_mes_ant ;;
  }

  dimension: acreditacion_datanet_honorarios_mes_ant_ant {
    type: number
    sql: ${TABLE}.acreditacion_datanet_honorarios_mes_ant_ant ;;
  }

  dimension: acreditacion_datanet_salarial_mes {
    type: number
    sql: ${TABLE}.acreditacion_datanet_salarial_mes ;;
  }

  dimension: acreditacion_datanet_salarial_mes_ant {
    type: number
    sql: ${TABLE}.acreditacion_datanet_salarial_mes_ant ;;
  }

  dimension: acreditacion_datanet_salarial_mes_ant_ant {
    type: number
    sql: ${TABLE}.acreditacion_datanet_salarial_mes_ant_ant ;;
  }

  dimension: acreditacion_honorarios_mes {
    type: number
    sql: ${TABLE}.acreditacion_honorarios_mes ;;
  }

  dimension: acreditacion_honorarios_mes_ant {
    type: number
    sql: ${TABLE}.acreditacion_honorarios_mes_ant ;;
  }

  dimension: acreditacion_honorarios_mes_ant_ant {
    type: number
    sql: ${TABLE}.acreditacion_honorarios_mes_ant_ant ;;
  }

  dimension: acreditacion_manual_1001_mes {
    type: number
    sql: ${TABLE}.acreditacion_manual_1001_mes ;;
  }

  dimension: acreditacion_manual_1001_mes_ant {
    type: number
    sql: ${TABLE}.acreditacion_manual_1001_mes_ant ;;
  }

  dimension: acreditacion_manual_1001_mes_ant_ant {
    type: number
    sql: ${TABLE}.acreditacion_manual_1001_mes_ant_ant ;;
  }

  dimension: acreditacion_manual_mes {
    type: number
    sql: ${TABLE}.acreditacion_manual_mes ;;
  }

  dimension: acreditacion_manual_mes_ant {
    type: number
    sql: ${TABLE}.acreditacion_manual_mes_ant ;;
  }

  dimension: acreditacion_manual_mes_ant_ant {
    type: number
    sql: ${TABLE}.acreditacion_manual_mes_ant_ant ;;
  }

  dimension: acreditacion_salarial_mes {
    type: number
    sql: ${TABLE}.acreditacion_salarial_mes ;;
  }

  dimension: acreditacion_salarial_mes_ant {
    type: number
    sql: ${TABLE}.acreditacion_salarial_mes_ant ;;
  }

  dimension: acreditacion_salarial_mes_ant_ant {
    type: number
    sql: ${TABLE}.acreditacion_salarial_mes_ant_ant ;;
  }

  dimension: acreditacion_total_mes {
    type: number
    sql: ${TABLE}.acreditacion_total_mes ;;
  }

  dimension: acreditacion_total_mes_ant {
    type: number
    sql: ${TABLE}.acreditacion_total_mes_ant ;;
  }

  dimension: acreditacion_total_mes_ant_ant {
    type: number
    sql: ${TABLE}.acreditacion_total_mes_ant_ant ;;
  }

  dimension: acreditacion_total_mes_sin_ajuste {
    type: number
    sql: ${TABLE}.acreditacion_total_mes_sin_ajuste ;;
  }

  dimension: banca_comite_capita_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banca_comite_capita_key ;;
  }

  dimension: banca_comite_convenio_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banca_comite_convenio_key ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: calificacion {
    type: string
    sql: ${TABLE}.calificacion ;;
  }

  dimension: cantidad_capitas {
    type: number
    sql: ${TABLE}.cantidad_capitas ;;
  }

  dimension: capita_key {
    hidden: yes
    type: number
    sql: ${TABLE}.capita_key ;;
  }

  dimension: centralizado {
    type: string
    sql: ${TABLE}.centralizado ;;
  }

  dimension: con_acreditacion {
    type: string
    sql: ${TABLE}.con_acreditacion ;;
  }

  dimension: estado_monitor_ps_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_monitor_ps_key ;;
  }

  dimension: estado_monitor_ps_sin_ajuste_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_monitor_ps_sin_ajuste_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: fecha_version_estado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_version_estado_key ;;
  }

  dimension: oficial_empleador_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_empleador_key ;;
  }

  dimension: piso {
    type: number
    sql: ${TABLE}.piso ;;
  }

  dimension: saldo_acreditacion_promedio_12 {
    type: number
    sql: ${TABLE}.saldo_acreditacion_promedio_12 ;;
  }

  dimension: saldo_acreditacion_promedio_3 {
    type: number
    sql: ${TABLE}.saldo_acreditacion_promedio_3 ;;
  }

  dimension: saldo_acreditacion_promedio_6 {
    type: number
    sql: ${TABLE}.saldo_acreditacion_promedio_6 ;;
  }

  dimension: secuencia_ps_key {
    hidden: yes
    type: number
    sql: ${TABLE}.secuencia_ps_key ;;
  }

  dimension: sucursal_oficial_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_oficial_key ;;
  }

  dimension: sucursal_radicacion_capita_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_radicacion_capita_key ;;
  }

  dimension: sucursal_radicacion_convenio_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_radicacion_convenio_key ;;
  }

  dimension: vigente {
    type: string
    sql: ${TABLE}.vigente ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
