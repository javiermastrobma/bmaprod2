view: lkp_fechas {

  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_fechas`
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
    type: date
    sql: DATE_SUB(CAST((SELECT MAX(f.fecha) FROM fct_situacion_acumulada_valoracion v LEFT JOIN lkp_fechas f ON v.fecha_key = f.fecha_key) AS DATE), INTERVAL 12 MONTH) ;;
  }

  dimension: fecha_6_meses_atras {
    hidden: yes
    type: date
    sql: DATE_SUB(CAST((SELECT MAX(f.fecha) FROM fct_situacion_acumulada_valoracion v LEFT JOIN lkp_fechas f ON v.fecha_key = f.fecha_key) AS DATE), INTERVAL 6 MONTH) ;;
  }

  dimension: fecha_3_meses_atras {
    hidden: yes
    type: date
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
    sql: ${fecha_date} >= ${fecha_6_meses_atras} ;;
  }

  filter: doce_meses_o_menos {
    hidden: yes
    sql: ${fecha_date} >= ${fecha_12_meses_atras} ;;
  }

  filter: tres_meses_o_menos {
    hidden: yes
    sql: ${fecha_date} >= ${fecha_3_meses_atras} ;;
  }

  filter: mes_actual {
    hidden: yes
    sql: ${fecha_month} = EXTRACT(MONTH FROM CURRENT_DATE()) ;;
  }
}


#FECHAS TRANSFERENCIA PERTENECIENTE A MODELO ESTRELLA FCT_TRANSFERENCIAS
view: lkp_fechas_transferencia {
  extends: [lkp_fechas]

  dimension: anio {
    label: "Año - Transferencia"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: number
    sql: ${TABLE}.anio ;;
  }

  dimension: dia_semana {
    label: "Dia de la Semana - Transferencia"
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.dia_semana ;;
  }

  dimension: fecha {
    label: "Fecha - Transferencia"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: date
    sql: ${TABLE}.fecha ;;
  }

  dimension: flag_fin_mes {
    label: " Flag Fin Mes - Transferencia"
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.flag_fin_mes ;;
  }

  dimension: mes {
    label: "Mes - Transferencia"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: string
    sql: ${TABLE}.mes ;;
  }

  dimension: n_dia {
    label: "Día - Transferencia"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: number
    sql: ${TABLE}.n_dia ;;
  }

  dimension: periodo {
    label: "Periodo - Transferencia"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: string
    sql: ${TABLE}.periodo ;;
  }

  dimension: tipo_dia {
    label: "Tipo dia - Transferencia"
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.tipo_dia ;;
  }
}



#FECHAS COMPENSACION PERTENECIENTE A MODELO ESTRELLA FCT_TRANSFERENCIAS
view: lkp_fechas_compensacion {
  extends: [lkp_fechas]

  dimension: anio {
    label: "Año - Compensación"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: number
    sql: ${TABLE}.anio ;;
  }

  dimension: dia_semana {
    label: "Dia de la Semana - Compensación"
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.dia_semana ;;
  }

  dimension: fecha {
    label: "Fecha - Compensación"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: date
    sql: ${TABLE}.fecha ;;
  }

  dimension: flag_fin_mes {
    label: " Flag Fin Mes - Compensación"
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.flag_fin_mes ;;
  }

  dimension: mes {
    label: "Mes - Compensación"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: string
    sql: ${TABLE}.mes ;;
  }

  dimension: n_dia {
    label: "Día - Compensación"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: number
    sql: ${TABLE}.n_dia ;;
  }

  dimension: periodo {
    label: "Periodo - Compensación"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: string
    sql: ${TABLE}.periodo ;;
  }

  dimension: tipo_dia {
    label: "Tipo dia - Compensación"
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.tipo_dia ;;
  }
}


#FECHAS PAGO PERTENECIENTE A MODELO ESTRELLA FCT_TRANSFERENCIAS_DIFERIDAS_TC


view: lkp_fechas_pago {
  extends: [lkp_fechas]

  dimension: anio {
    label: "Año - Pago"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: number
    sql: ${TABLE}.anio ;;
  }

  dimension: dia_semana {
    label: "Dia de la Semana - Pago"
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.dia_semana ;;
  }

  dimension: fecha {
    label: "Fecha - Pago"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: date
    sql: ${TABLE}.fecha ;;
  }

  dimension: flag_fin_mes {
    label: " Flag Fin Mes - Pago"
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.flag_fin_mes ;;
  }

  dimension: mes {
    label: "Mes - Pago"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: string
    sql: ${TABLE}.mes ;;
  }

  dimension: n_dia {
    label: "Día - Pago"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: number
    sql: ${TABLE}.n_dia ;;
  }

  dimension: periodo {
    label: "Periodo - Pago"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: string
    sql: ${TABLE}.periodo ;;
  }

  dimension: tipo_dia {
    label: "Tipo dia - Pago"
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.tipo_dia ;;
  }
}


#FECHAS GENERACIÓN PERTENECIENTE A MODELO ESTRELLA FCT_TRANSFERENCIAS_DIFERIDAS_TC


view: lkp_fechas_generacion {
  extends: [lkp_fechas]

  dimension: anio {
    label: "Año - Generación"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: number
    sql: ${TABLE}.anio ;;
  }

  dimension: dia_semana {
    label: "Dia de la Semana - Generación"
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.dia_semana ;;
  }

  dimension: fecha {
    label: "Fecha - Generación"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: date
    sql: ${TABLE}.fecha ;;
  }

  dimension: flag_fin_mes {
    label: " Flag Fin Mes - Generación"
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.flag_fin_mes ;;
  }

  dimension: mes {
    label: "Mes - Generación"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: string
    sql: ${TABLE}.mes ;;
  }

  dimension: n_dia {
    label: "Día - Generación"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: number
    sql: ${TABLE}.n_dia ;;
  }

  dimension: periodo {
    label: "Periodo - Generación"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: string
    sql: ${TABLE}.periodo ;;
  }

  dimension: tipo_dia {
    label: "Tipo dia - Generación"
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.tipo_dia ;;
  }
}


#FECHAS CIERRE PERTENECIENTE A MODELOS ESTRELLAS FCT_TRANSFERENCIAS_DIFERIDAS_TC Y FCT_SITUACIONES_CAIDA_CUOTAS_TC


view: lkp_fechas_cierre {
  extends: [lkp_fechas]

  dimension: anio {
    label: "Año - Cierre"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: number
    sql: ${TABLE}.anio ;;
  }

  dimension: dia_semana {
    label: "Dia de la Semana - Cierre"
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.dia_semana ;;
  }

  dimension: fecha {
    label: "Fecha - Cierre"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: date
    sql: ${TABLE}.fecha ;;
  }

  dimension: flag_fin_mes {
    label: " Flag Fin Mes - Cierre"
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.flag_fin_mes ;;
  }

  dimension: mes {
    label: "Mes - Cierre"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: string
    sql: ${TABLE}.mes ;;
  }

  dimension: n_dia {
    label: "Día - Cierre"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: number
    sql: ${TABLE}.n_dia ;;
  }

  dimension: periodo {
    label: "Periodo - Cierre"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: string
    sql: ${TABLE}.periodo ;;
  }

  dimension: tipo_dia {
    label: "Tipo dia - Cierre"
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.tipo_dia ;;
  }
}


#FECHAS EVENTO PERTENECIENTE A MODELO ESTRELLA FCT_TRANSFERENCIAS_DIFERIDAS_TC


view: lkp_fechas_evento {
  extends: [lkp_fechas]

  dimension: anio {
    label: "Año - Evento"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: number
    sql: ${TABLE}.anio ;;
  }

  dimension: dia_semana {
    label: "Dia de la Semana - Evento"
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.dia_semana ;;
  }

  dimension: fecha {
    label: "Fecha - Evento"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: date
    sql: ${TABLE}.fecha ;;
  }

  dimension: flag_fin_mes {
    label: " Flag Fin Mes - Evento"
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.flag_fin_mes ;;
  }

  dimension: mes {
    label: "Mes - Evento"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: string
    sql: ${TABLE}.mes ;;
  }

  dimension: n_dia {
    label: "Día - Evento"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: number
    sql: ${TABLE}.n_dia ;;
  }

  dimension: periodo {
    label: "Periodo - Evento"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: string
    sql: ${TABLE}.periodo ;;
  }

  dimension: tipo_dia {
    label: "Tipo dia - Evento"
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.tipo_dia ;;
  }
}



#FECHAS DEPÓSITO PERTENECIENTE A MODELO ESTRELLA FCT_SEGUIMIENTO_CHEQUES


view: lkp_fechas_deposito {
  extends: [lkp_fechas]

  dimension: anio {
    label: "Año - Depósito"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: number
    sql: ${TABLE}.anio ;;
  }

  dimension: dia_semana {
    label: "Dia de la Semana - Depósito"
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.dia_semana ;;
  }

  dimension: fecha {
    label: "Fecha - Depósito"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: date
    sql: ${TABLE}.fecha ;;
  }

  dimension: flag_fin_mes {
    label: " Flag Fin Mes - Depósito"
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.flag_fin_mes ;;
  }

  dimension: mes {
    label: "Mes - Depósito"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: string
    sql: ${TABLE}.mes ;;
  }

  dimension: n_dia {
    label: "Día - Depósito"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: number
    sql: ${TABLE}.n_dia ;;
  }

  dimension: periodo {
    label: "Periodo - Depósito"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: string
    sql: ${TABLE}.periodo ;;
  }

  dimension: tipo_dia {
    label: "Tipo dia - Depósito"
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.tipo_dia ;;
  }
}



#FECHAS CANCELACIÓN PERTENECIENTE A MODELO ESTRELLA FCT_SEGUIMIENTO_CHEQUES


view: lkp_fechas_cancelacion {
  extends: [lkp_fechas]

  dimension: anio {
    label: "Año - Cancelación"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: number
    sql: ${TABLE}.anio ;;
  }

  dimension: dia_semana {
    label: "Dia de la Semana - Cancelación"
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.dia_semana ;;
  }

  dimension: fecha {
    label: "Fecha - Cancelación"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: date
    sql: ${TABLE}.fecha ;;
  }

  dimension: flag_fin_mes {
    label: " Flag Fin Mes - Cancelación"
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.flag_fin_mes ;;
  }

  dimension: mes {
    label: "Mes - Cancelación"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: string
    sql: ${TABLE}.mes ;;
  }

  dimension: n_dia {
    label: "Día - Cancelación"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: number
    sql: ${TABLE}.n_dia ;;
  }

  dimension: periodo {
    label: "Periodo - Cancelación"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: string
    sql: ${TABLE}.periodo ;;
  }

  dimension: tipo_dia {
    label: "Tipo dia - Cancelación"
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.tipo_dia ;;
  }
}


#FECHAS CREACIÓN PERTENECIENTE A MODELOS ESTRELLA FCT_CRM_SEGUIMIENTO_ACTIVIDADES Y FCT_CRM_SEGUIMIENTO_ATENCIONES


view: lkp_fechas_creacion {
  extends: [lkp_fechas]

  dimension: anio {
    label: "Año - Creación"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: number
    sql: ${TABLE}.anio ;;
  }

  dimension: dia_semana {
    label: "Dia de la Semana - Creación"
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.dia_semana ;;
  }

  dimension: fecha {
    label: "Fecha - Creación"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: date
    sql: ${TABLE}.fecha ;;
  }

  dimension: flag_fin_mes {
    label: " Flag Fin Mes - Creación"
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.flag_fin_mes ;;
  }

  dimension: mes {
    label: "Mes - Creación"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: string
    sql: ${TABLE}.mes ;;
  }

  dimension: n_dia {
    label: "Día - Creación"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: number
    sql: ${TABLE}.n_dia ;;
  }

  dimension: periodo {
    label: "Periodo - Creación"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: string
    sql: ${TABLE}.periodo ;;
  }

  dimension: tipo_dia {
    label: "Tipo dia - Creación"
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.tipo_dia ;;
  }
}


#FECHAS ACTUALIZACIÓN PERTENECIENTE A MODELOS ESTRELLA FCT_CRM_SEGUIMIENTO_ACTIVIDADES Y FCT_CRM_SEGUIMIENTO_ATENCIONES


view: lkp_fechas_actualizacion {
  extends: [lkp_fechas]

  dimension: anio {
    label: "Año - Actualización"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: number
    sql: ${TABLE}.anio ;;
  }

  dimension: dia_semana {
    label: "Dia de la Semana - Actualización"
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.dia_semana ;;
  }

  dimension: fecha {
    label: "Fecha - Actualización"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: date
    sql: ${TABLE}.fecha ;;
  }

  dimension: flag_fin_mes {
    label: " Flag Fin Mes - Actualización"
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.flag_fin_mes ;;
  }

  dimension: mes {
    label: "Mes - Actualización"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: string
    sql: ${TABLE}.mes ;;
  }

  dimension: n_dia {
    label: "Día - Actualización"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: number
    sql: ${TABLE}.n_dia ;;
  }

  dimension: periodo {
    label: "Periodo - Actualización"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: string
    sql: ${TABLE}.periodo ;;
  }

  dimension: tipo_dia {
    label: "Tipo dia - Actualización"
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.tipo_dia ;;
  }
  }

  #FECHAS SOLICITUD PERTENECIENTE A MODELO ESTRELLA FCT_TRANSACCIONES_DATANET

  view: lkp_fechas_solicitud{
    extends: [lkp_fechas]

    dimension: anio {
      label: "Año - Solicitud"
      view_label: "Datos TIEMPO"
      group_label: "  Periodo / Año / Mes / Día"
      type: number
      sql: ${TABLE}.anio ;;
    }

    dimension: dia_semana {
      label: "Dia de la Semana - Solicitud"
      view_label: "Datos TIEMPO"
      type: string
      sql: ${TABLE}.dia_semana ;;
    }

    dimension: fecha {
      label: "Fecha - Solicitud"
      view_label: "Datos TIEMPO"
      group_label: "  Periodo / Año / Mes / Día"
      type: date
      sql: ${TABLE}.fecha ;;
    }

    dimension: flag_fin_mes {
      label: " Flag Fin Mes - Solicitud"
      view_label: "Datos TIEMPO"
      type: string
      sql: ${TABLE}.flag_fin_mes ;;
    }

    dimension: mes {
      label: "Mes - Solicitud"
      view_label: "Datos TIEMPO"
      group_label: "  Periodo / Año / Mes / Día"
      type: string
      sql: ${TABLE}.mes ;;
    }

    dimension: n_dia {
      label: "Día - Solicitud"
      view_label: "Datos TIEMPO"
      group_label: "  Periodo / Año / Mes / Día"
      type: number
      sql: ${TABLE}.n_dia ;;
    }

    dimension: periodo {
      label: "Periodo - Solicitud"
      view_label: "Datos TIEMPO"
      group_label: "  Periodo / Año / Mes / Día"
      type: string
      sql: ${TABLE}.periodo ;;
    }

    dimension: tipo_dia {
      label: "Tipo dia - Solicitud"
      view_label: "Datos TIEMPO"
      type: string
      sql: ${TABLE}.tipo_dia ;;
    }
    }

    # FECHAS ENVIO CREDITO PERTENECIENTE A MODELO ESTRELLA FCT_TRANSACCIONES_DATANET

    view: lkp_fechas_envio_credito{
      extends: [lkp_fechas]

      dimension: anio {
        label: "Año - Envío Crédito"
        view_label: "Datos TIEMPO"
        group_label: "  Periodo / Año / Mes / Día"
        type: number
        sql: ${TABLE}.anio ;;
      }

      dimension: dia_semana {
        label: "Dia de la Semana - Envío Crédito"
        view_label: "Datos TIEMPO"
        type: string
        sql: ${TABLE}.dia_semana ;;
      }

      dimension: fecha {
        label: "Fecha - Envío Crédito"
        view_label: "Datos TIEMPO"
        group_label: "  Periodo / Año / Mes / Día"
        type: date
        sql: ${TABLE}.fecha ;;
      }

      dimension: flag_fin_mes {
        label: " Flag Fin Mes - Envío Crédito"
        view_label: "Datos TIEMPO"
        type: string
        sql: ${TABLE}.flag_fin_mes ;;
      }

      dimension: mes {
        label: "Mes - Envío Crédito"
        view_label: "Datos TIEMPO"
        group_label: "  Periodo / Año / Mes / Día"
        type: string
        sql: ${TABLE}.mes ;;
      }

      dimension: n_dia {
        label: "Día - Envío Crédito"
        view_label: "Datos TIEMPO"
        group_label: "  Periodo / Año / Mes / Día"
        type: number
        sql: ${TABLE}.n_dia ;;
      }

      dimension: periodo {
        label: "Periodo - Envío Crédito"
        view_label: "Datos TIEMPO"
        group_label: "  Periodo / Año / Mes / Día"
        type: string
        sql: ${TABLE}.periodo ;;
      }

      dimension: tipo_dia {
        label: "Tipo dia - Envío Crédito"
        view_label: "Datos TIEMPO"
        type: string
        sql: ${TABLE}.tipo_dia ;;
      }
      }

      #FECHAS ENVIO DEBITO PERTENECIENTE A MODELO ESTRELLA FCT_TRANSACCIONES_DATANET

      view: lkp_fechas_envio_debito{
        extends: [lkp_fechas]

        dimension: anio {
          label: "Año - Envío Débito"
          view_label: "Datos TIEMPO"
          group_label: "  Periodo / Año / Mes / Día"
          type: number
          sql: ${TABLE}.anio ;;
        }

        dimension: dia_semana {
          label: "Dia de la Semana - Envío Débito"
          view_label: "Datos TIEMPO"
          type: string
          sql: ${TABLE}.dia_semana ;;
        }

        dimension: fecha {
          label: "Fecha - Envío Débito"
          view_label: "Datos TIEMPO"
          group_label: "  Periodo / Año / Mes / Día"
          type: date
          sql: ${TABLE}.fecha ;;
        }

        dimension: flag_fin_mes {
          label: " Flag Fin Mes - Envío Débito"
          view_label: "Datos TIEMPO"
          type: string
          sql: ${TABLE}.flag_fin_mes ;;
        }

        dimension: mes {
          label: "Mes - Envío Débito"
          view_label: "Datos TIEMPO"
          group_label: "  Periodo / Año / Mes / Día"
          type: string
          sql: ${TABLE}.mes ;;
        }

        dimension: n_dia {
          label: "Día - Envío Débito"
          view_label: "Datos TIEMPO"
          group_label: "  Periodo / Año / Mes / Día"
          type: number
          sql: ${TABLE}.n_dia ;;
        }

        dimension: periodo {
          label: "Periodo - Envío Débito"
          view_label: "Datos TIEMPO"
          group_label: "  Periodo / Año / Mes / Día"
          type: string
          sql: ${TABLE}.periodo ;;
        }

        dimension: tipo_dia {
          label: "Tipo dia - Envío Débito"
          view_label: "Datos TIEMPO"
          type: string
          sql: ${TABLE}.tipo_dia ;;
        }

}

#FECHAS ACTUALIZACIÓN PERTENECIENTE A MODELO ESTRELLA FCT_SITUACIONES_CAIDA_CUOTAS_TC


view: lkp_fechas_mes_caida_cierre {
  extends: [lkp_fechas]

  dimension: anio {
    label: "Año - Mes Caida Cierre"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: number
    sql: ${TABLE}.anio ;;
  }

  dimension: dia_semana {
    label: "Dia de la Semana - Mes Caida Cierre"
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.dia_semana ;;
  }

  dimension: fecha {
    label: "Fecha - Mes Caida Cierre"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: date
    sql: ${TABLE}.fecha ;;
  }

  dimension: flag_fin_mes {
    label: " Flag Fin Mes - Mes Caida Cierre"
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.flag_fin_mes ;;
  }

  dimension: mes {
    label: "Mes - Mes Caida Cierre"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: string
    sql: ${TABLE}.mes ;;
  }

  dimension: n_dia {
    label: "Día - Mes Caida Cierre"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: number
    sql: ${TABLE}.n_dia ;;
  }

  dimension: periodo {
    label: "Periodo - Mes Caida Cierre"
    view_label: "Datos TIEMPO"
    group_label: "  Periodo / Año / Mes / Día"
    type: string
    sql: ${TABLE}.periodo ;;
  }

  dimension: tipo_dia {
    label: "Tipo dia - Mes Caida Cierre"
    view_label: "Datos TIEMPO"
    type: string
    sql: ${TABLE}.tipo_dia ;;
  }
}
