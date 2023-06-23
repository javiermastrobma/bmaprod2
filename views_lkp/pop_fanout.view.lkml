view: pop_fanout {
  view_label: "Comparación Periodos (Predefinidos)"
  derived_table: {
    datagroup_trigger: fct_saldos_datagroup
    sql: SELECT a.fecha, a.fecha_key, a.fecha fecha_pop, a.fecha_key fecha_pop_key, '    Día Base' as pop
         FROM `cdw_raw.lkp_fechas` a
         UNION ALL
         SELECT a.fecha, a.fecha_key, a.fecha_habil_anterior fecha_pop, a.fecha_habil_anterior_key fecha_pop_key, '  Día Anterior' as pop
         FROM `cdw_raw.lkp_fechas` a
         UNION ALL
         SELECT a.fecha, a.fecha_key, c.fecha_habil_anterior fecha_pop, c.fecha_habil_anterior_key fecha_pop_key, '  Día Anterior Anterior' as pop
         FROM `cdw_raw.lkp_fechas` a
         JOIN `cdw_raw.lkp_fechas` b on a.fecha_habil_anterior_key = b.fecha_key
         JOIN `cdw_raw.lkp_fechas` c on b.fecha_habil_anterior_key = c.fecha_key
         UNION ALL
         select a.fecha, a.fecha_key, d.fecha_habil_anterior fecha_pop, d.fecha_habil_anterior_key fecha_pop_key, ' Día Anterior Anterior Anterior' as pop
         from `cdw_raw.lkp_fechas` a
         join `cdw_raw.lkp_fechas` b on a.fecha_habil_anterior_key = b.fecha_key
         join `cdw_raw.lkp_fechas` c on b.fecha_habil_anterior_key = c.fecha_key
         join `cdw_raw.lkp_fechas` d on c.fecha_habil_anterior_key = d.fecha_key
         UNION ALL
         SELECT a.fecha, a.fecha_key, a.fecha_fin_mes_anterior fecha_pop, a.fecha_fin_mes_anterior_key fecha_pop_key, ' Fin Mes Anterior' as pop
         FROM `cdw_raw.lkp_fechas` a
         UNION ALL
         SELECT a.fecha, a.fecha_key, c.fecha_fin_mes_anterior fecha_pop, c.fecha_fin_mes_anterior_key fecha_pop_key, ' Fin Mes Anterior Anterior' as pop
         FROM `cdw_raw.lkp_fechas` a
         JOIN `cdw_raw.lkp_fechas` b on a.fecha_fin_mes_anterior_key = b.fecha_key
         JOIN `cdw_raw.lkp_fechas` c on b.fecha_fin_mes_anterior_key = c.fecha_key
         UNION ALL
         SELECT a.fecha, a.fecha_key, d.fecha_fin_mes_anterior fecha_pop, d.fecha_fin_mes_anterior_key fecha_pop_key, ' Fin Mes Anterior Anterior Anterior' as pop
         FROM `cdw_raw.lkp_fechas` a
         JOIN `cdw_raw.lkp_fechas` b on a.fecha_fin_mes_anterior_key = b.fecha_key
         JOIN `cdw_raw.lkp_fechas` c on b.fecha_fin_mes_anterior_key = c.fecha_key
         JOIN `cdw_raw.lkp_fechas` d on c.fecha_fin_mes_anterior_key = d.fecha_key
         UNION ALL
         SELECT a.fecha, a.fecha_key, a.fecha_fin_anio_anterior fecha_pop, a.fecha_fin_anio_anterior_key fecha_pop_key, 'Fin Año Anterior' as pop
         FROM `cdw_raw.lkp_fechas` a
         UNION ALL
         SELECT b.fecha, b.fecha_key, ant.fecha_mes_ani_ant fecha_pop, ant.fin_mes_anio_ant_key fecha_pop_key, "Mismo Mes Año Anterior" as pop
         FROM `cdw_raw.lkp_fechas` b
         JOIN (SELECT a.fecha_key fin_mes_anio_ant_key, a.fecha fecha_mes_ani_ant, periodo mismo_periodo_anio_ant, (anio + 1) anio_join, a.n_mes n_mes
               FROM `bm-gcp-p1-dw.cdw_raw.lkp_fechas` a
               WHERE a.flag_fin_mes = 'S') ant
         ON b.anio = ant.anio_join and b.n_mes = ant.n_mes
         ;;
  }


  dimension_group: fecha {
    hidden: yes
    timeframes: [date]
    type: time
    sql: ${TABLE}.fecha;;
    allow_fill: no

  }
  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension_group: fecha_pop {
    hidden: yes
    type: time
    sql: ${TABLE}.fecha_pop ;;
  }

  dimension: fecha_pop_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_pop_key ;;
  }

  dimension: pop {
    label: "Periodos Anteriores (PoP)"
    type: string
    sql: ${TABLE}.pop ;;
  }
  dimension: dia_anterior {
    hidden: yes
    type: string
    sql: CASE WHEN ${TABLE}.pop = ' Día Anterior' THEN ${TABLE}.pop END ;;
  }
  dimension: dia_base {
    hidden: yes
    type: string
    sql: CASE WHEN ${TABLE}.pop = '  Día Base' THEN ${TABLE}.pop END ;;
  }
  dimension: fin_mes_anterior {
    hidden: yes
    type: string
    sql: CASE WHEN ${TABLE}.pop = ' Fin Mes Anterior' THEN ${TABLE}.pop END ;;
  }
  dimension: fin_anio_anterior {
    hidden: yes
    type: string
    sql: CASE WHEN ${TABLE}.pop = 'Fin Año Anterior' THEN ${TABLE}.pop END ;;
  }
  dimension: mismo_mes_anio_anterior {
    hidden: yes
    type: string
    sql: CASE WHEN ${TABLE}.pop = "Mismo Mes Año Anterior" THEN ${TABLE}.pop END ;;
  }

#     measure: Var {
#       type: number
#       sql:  CASE
#           WHEN {{ fct_saldos.saldo_dia_pesificado }} IS NOT NULL AND {{ dia_base }} IS NOT NULL
#             THEN 100 * ({{ fct_saldos.saldo_dia_pesificado }} / {{ dia_base }} - 1)
#           END

#   ;;
#       value_format_name: "decimal_2"
# }
}
