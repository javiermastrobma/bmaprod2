view: lkp_fechas_embebed {

  sql_table_name: `bm-gcp-p1-dw.looker_embebed.lkp_fechas`
    ;;

# PARÁMETROS

  parameter: select_timeframe {
    hidden: yes
    view_label: "Datos TIEMPO"
    type: unquoted
    default_value: "month"
    allowed_value: {
      value: "year"
      label: "Years"
    }
    allowed_value: {
      value: "month"
      label: "Month"
    }
  }

  parameter: select_reference_date {
    hidden: yes
    view_label: "Datos TIEMPO"
    type: date
    convert_tz: no
  }



#DIMENSIONES Y MEDIDAS

  dimension_group: current_timestamp {
    hidden: yes
    type: time
    timeframes: [raw,date,hour_of_day,day_of_week_index,day_of_month,day_of_year]
    convert_tz: yes
    sql: CURRENT_TIMESTAMP() ;;
  }

  dimension: comparacion_periodos {
    hidden: yes
    view_label: "Datos TIEMPO"
    type: string
    sql:
    CASE
      WHEN DATE_TRUNC(${fecha_date}, month) = DATE_TRUNC(CAST({% if select_reference_date._is_filtered %}{% parameter select_reference_date %} {% else %} ${current_timestamp_date}{% endif %} as DATE), month)
        THEN '{% if select_reference_date._is_filtered %}Reference {% else %}Current {% endif %} {% parameter select_timeframe %}'
      WHEN DATE_TRUNC(${fecha_date},  month) = DATE_TRUNC(DATE_SUB(CAST({% if select_reference_date._is_filtered %}{% parameter select_reference_date %} {% else %} ${current_timestamp_date}{% endif %} as DATE), INTERVAL 1 {% parameter select_timeframe %}), month)
        THEN "Previous {% parameter select_timeframe %}"
      ELSE NULL
    END
    ;;
  }

  dimension: periodo_actual_versus_diciembre_anterior {
    hidden: yes
    type: string
    sql:
    CASE
      WHEN DATE_TRUNC(${fecha_date}, month) = DATE_TRUNC(CAST({% if select_reference_date._is_filtered %}{% parameter select_reference_date %} {% else %} ${current_timestamp_date}{% endif %} as DATE), month)
        THEN '{% if select_reference_date._is_filtered %}Reference {% else %}Current {% endif %} {% parameter select_timeframe %}'
      WHEN DATE_TRUNC(${fecha_date},  month) = DATE_TRUNC({% if select_reference_date._is_filtered %} (SELECT distinct f.fecha FROM fct_situaciones_indicadores_plan_sueldos ps LEFT JOIN lkp_fechas f ON ps.fecha_key = f.fecha_key WHERE f.n_mes = 12 AND anio = EXTRACT(YEAR FROM DATE_SUB(${fecha_date}, INTERVAL 1 YEAR))) {% else %} ${current_timestamp_date} {% endif %}, month)
        THEN "December"
      ELSE NULL
    END
    ;;
  }

  dimension: anio {
    label: "Año"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: number
    sql: ${TABLE}.anio ;;
  }

  dimension: anio_presupuestario {
    hidden: yes
    view_label: "Datos TIEMPO"
    group_label: "Fechas"
    type: string
    sql: ${TABLE}.anio_presupuestario ;;
  }

  dimension: dia_semana {
    label: "Dia de la Semana"
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.dia_semana ;;
  }

  dimension_group: fecha {
    hidden: yes
    view_label: "Datos TIEMPO"
    group_label: "Fechas"
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
    sql: ${TABLE}.fecha ;;
  }

  dimension: fecha {
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: date
    sql: ${TABLE}.fecha ;;
    allow_fill: no
  }

  dimension_group: fecha_fin_anio_anterior {
    hidden: yes
    view_label: "Datos TIEMPO"
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
    sql: ${TABLE}.fecha_fin_anio_anterior ;;
  }

  dimension: fecha_fin_anio_anterior_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_fin_anio_anterior_key ;;
  }

  dimension_group: fecha_fin_mes_anterior {
    hidden: yes
    view_label: "Datos TIEMPO"
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
    sql: ${TABLE}.fecha_fin_mes_anterior ;;
  }

  dimension: fecha_fin_mes_anterior {
    hidden: yes
    type: date
    sql: ${TABLE}.fecha_fin_mes_anterior ;;
  }

  dimension: fecha_fin_mes_anterior_key {
    view_label: "Datos TIEMPO"
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_fin_mes_anterior_key ;;
  }

  dimension_group: fecha_fin_trim_anterior {
    hidden: yes
    view_label: "Datos TIEMPO"
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
    sql: ${TABLE}.fecha_fin_trim_anterior ;;
  }

  dimension: fecha_fin_trim_anterior_key {
    view_label: "Datos TIEMPO"
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_fin_trim_anterior_key ;;
  }

  dimension_group: fecha_habil_anterior {
    hidden: yes
    view_label: "Datos TIEMPO"
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
    sql: ${TABLE}.fecha_habil_anterior ;;
  }

  dimension: fecha_habil_anterior {
    hidden: yes
    type: date
    sql: ${TABLE}.fecha_habil_anterior ;;
  }

  dimension: fecha_habil_anterior_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_habil_anterior_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension_group: fin_anio_ant_de_mes_ant {
    hidden: yes
    view_label: "Datos TIEMPO"
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
    sql: ${TABLE}.fin_anio_ant_de_mes_ant ;;
  }

  dimension: fin_anio_ant_de_mes_ant_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fin_anio_ant_de_mes_ant_key ;;
  }

  dimension: flag_fin_mes {
    label: " Flag Fin Mes"
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.flag_fin_mes ;;
  }

  dimension: mes {
    label: "Mes"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: string
    sql: ${TABLE}.mes ;;
  }

  dimension: multiplicador {
    hidden: yes
    view_label: "Datos TIEMPO"
    type: number
    sql: ${TABLE}.multiplicador ;;
  }

  dimension: n_dia {
    label: "Día"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: number
    sql: ${TABLE}.n_dia ;;
  }

  dimension: n_dia_semana {
    hidden: yes
    view_label: "Datos TIEMPO"
    group_label: "Fechas"
    type: number
    sql: ${TABLE}.n_dia_semana ;;
  }

  dimension: n_mes {
    hidden: yes
    view_label: "Datos TIEMPO"
    group_label: "Fechas"
    type: number
    sql: ${TABLE}.n_mes ;;
  }

  dimension: periodo {
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: string
    sql: ${TABLE}.periodo ;;
  }

  dimension: periodo_anterior {
    hidden: yes
    view_label: "Datos TIEMPO"
    type: string
    sql: DATE_SUB(${fecha_raw}, INTERVAL 1 MONTH) ;;
  }

  dimension: tipo_dia {
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.tipo_dia ;;
  }

  dimension: trimestre {
    hidden: yes
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.trimestre ;;
  }

  dimension: trimestre_generico {
    view_label: "Datos TIEMPO"
    type: string
    sql: LEFT(${trimestre}, 2) ;;
  }

  dimension_group: viernes_anterior {
    hidden: yes
    view_label: "Datos TIEMPO"
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
    sql: ${TABLE}.viernes_anterior ;;
  }

  dimension: viernes_anterior_key {
    hidden: yes
    type: number
    sql: ${TABLE}.viernes_anterior_key ;;
  }

  dimension: fecha_12_meses_atras {
    hidden: yes
    type: string
    sql: DATE_SUB(CAST((SELECT MAX(f.fecha) FROM fct_situacion_acumulada_valoracion v LEFT JOIN lkp_fechas f ON v.fecha_key = f.fecha_key) AS DATE), INTERVAL 12 MONTH) ;;
  }

  dimension: fecha_6_meses_atras {
    hidden: yes
    type: string
    sql: DATE_SUB(CAST((SELECT MAX(f.fecha) FROM fct_situacion_acumulada_valoracion v LEFT JOIN lkp_fechas f ON v.fecha_key = f.fecha_key) AS DATE), INTERVAL 6 MONTH) ;;
  }

  dimension: fecha_3_meses_atras {
    hidden: yes
    type: string
    sql: DATE_SUB(CAST((SELECT MAX(f.fecha) FROM fct_situacion_acumulada_valoracion v LEFT JOIN lkp_fechas f ON v.fecha_key = f.fecha_key) AS DATE), INTERVAL 2 MONTH) ;;
  }
# FILTROS


  filter: periodo_actual_periodo_anterior_ps {
    hidden: yes
    sql: ${periodo} = CAST(FORMAT_DATE("%Y-%m", (SELECT MAX(f.fecha) FROM fct_situaciones_indicadores_plan_sueldos ps
         LEFT JOIN lkp_fechas f ON ps.fecha_key = f.fecha_key)) as STRING) OR ${periodo} = CAST(FORMAT_DATE("%Y-%m", DATE_SUB((SELECT CAST(MAX(f.fecha) AS DATETIME) FROM fct_situaciones_indicadores_plan_sueldos ps
         LEFT JOIN lkp_fechas f ON ps.fecha_key = f.fecha_key), INTERVAL 1 MONTH)) as STRING) ;;
  }

  filter: periodo_actual_mismo_periodo_anio_anterior_ps {
    hidden: yes
    sql: ${periodo} = CAST(FORMAT_DATE("%Y-%m", (SELECT MAX(f.fecha) FROM fct_situaciones_indicadores_plan_sueldos ps
         LEFT JOIN lkp_fechas f ON ps.fecha_key = f.fecha_key)) as STRING) OR ${periodo} = CAST(FORMAT_DATE("%Y-%m", DATE_SUB((SELECT CAST(MAX(f.fecha) AS DATETIME) FROM fct_situaciones_indicadores_plan_sueldos ps
         LEFT JOIN lkp_fechas f ON ps.fecha_key = f.fecha_key), INTERVAL 1 YEAR)) as STRING) ;;
  }

  filter: periodo_actual_ultimo_periodo_anio_anterior_ps {
    hidden: yes
    sql: ${periodo} = CAST(FORMAT_DATE("%Y-%m", (SELECT MAX(f.fecha) FROM fct_situaciones_indicadores_plan_sueldos ps
         LEFT JOIN lkp_fechas f ON ps.fecha_key = f.fecha_key)) as STRING) OR ${periodo} = (SELECT distinct f.periodo FROM fct_situaciones_indicadores_plan_sueldos ps
         LEFT JOIN lkp_fechas f ON ps.fecha_key = f.fecha_key
         WHERE f.n_mes = 12 AND anio = EXTRACT(YEAR FROM DATE_SUB(CURRENT_DATE, INTERVAL 1 YEAR))) ;;
  }

  filter: fecha_maxima {
    hidden: yes
    sql: ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_situaciones_personas_fisicas cse
      LEFT JOIN lkp_fechas f ON cse.fecha_key = f.fecha_key) ;;
  }

  filter: fecha_maxima_cash_management {
    hidden: yes
    sql: ${periodo} = (SELECT MAX(f.periodo) FROM cash_management cse
      LEFT JOIN lkp_fechas f ON cse.fecha_key = f.fecha_key) ;;
  }

# (SELECT f.periodo FROM cash_management cse LEFT JOIN lkp_fechas f ON cse.fecha_key = f.fecha_key WHERE (f.anio = EXTRACT(YEAR FROM CURRENT_DATE() - 1) AND f.n_mes = 01) ;;

  filter: seis_meses_o_menos {
    hidden: yes
    sql: ${fecha_date} >= DATE(${fecha_6_meses_atras}) ;;
  }

  filter: doce_meses_o_menos {
    hidden: yes
    sql: ${fecha_date} >= DATE(${fecha_12_meses_atras}) ;;
  }

  filter: tres_meses_o_menos {
    hidden: yes
    sql: ${fecha_date} >= DATE(${fecha_3_meses_atras}) ;;
  }

  filter: mes_actual {
    hidden: yes
    sql: ${fecha_month} = EXTRACT(MONTH FROM CURRENT_DATE()) ;;
  }
}
