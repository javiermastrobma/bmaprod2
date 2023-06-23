view: pdt_indicadores_digitales {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.pdt_indicadores_digitales`
    ;;


  filter: flag_digital {
    description: "Cliente que accedió a Banca Digital (App y/o Bca Internet) en los ultimos 90 días"
    sql: ${pdt_indicadores_digitales.flag_cliente_digital} = 1 ;;
  }
  filter: flag_digital_no {
    hidden: yes
    sql: ${pdt_indicadores_digitales.flag_cliente_digital} is NULL ;;
  }
  measure: clientes_digitales {
    description: "Clientes que accedieron a Banca Digital (App y/o Bca Internet) en los ultimos 90 días"
    type: count_distinct
    sql: CASE WHEN ${pdt_indicadores_digitales.flag_cliente_digital} = 1 THEN ${pdt_indicadores_digitales.codigo_cliente} ELSE NULL END ;;
  }

  measure: clientes_altas {
    description: "Clientes que comenzaron a acceder a Banca Digital en el mes de analisis"
    type: count_distinct
    sql: CASE WHEN ${pdt_indicadores_digitales.flag_cliente_digital_activo_nuevo} = "1" THEN ${pdt_indicadores_digitales.codigo_cliente} ELSE NULL END ;;
  }

  measure: clientes_alerta_digital {
    description: "Clientes que no accedieron a Banca Digital (App y/o Bca Internet) en los últimos 30 días"
    type: count_distinct
    sql: CASE WHEN ${pdt_indicadores_digitales.flag_cliente_digital_inactivo} = 1 THEN ${pdt_indicadores_digitales.codigo_cliente} ELSE NULL END ;;
  }

  measure: clientes_bajas {
    hidden: yes
    description: "Clientes que dejaron de acceder a Banca Digital en el mes de analisis"
    type: count_distinct
    sql: CASE WHEN (${lkp_fechas.periodo} = CAST(FORMAT_DATE("%Y-%m", DATE_SUB((SELECT CAST(MAX(f.fecha) as DATETIME) FROM pdt_indicadores_digitales ps
         LEFT JOIN lkp_fechas f ON ps.fecha_key = f.fecha_key), INTERVAL 1 MONTH)) as STRING) AND ${flag_digital})
         AND (${lkp_fechas.periodo} = CAST(FORMAT_DATE("%Y-%m", (SELECT CAST(MAX(f.fecha) as DATETIME) FROM pdt_indicadores_digitales ps
         LEFT JOIN lkp_fechas f ON ps.fecha_key = f.fecha_key)) as STRING) AND ${flag_digital_no})
         THEN ${pdt_indicadores_digitales.codigo_cliente} ELSE NULL END;;
  }

  measure: usan_app_mimacro {
    description: "Clientes que accedieron a la AppMimacro en el mes de análisis"
    type: count_distinct
    sql: CASE WHEN ${pdt_indicadores_digitales.flag_mm_logueo_1m} = 1 THEN ${lkp_clientes_completa.codigo_cliente} ELSE 0 END ;;
  }

  measure: usan_banca_internet {
    description: "Clientes que accedieron a la Banca Internet en el mes de análisis"
    type: count_distinct
    sql: CASE WHEN ${pdt_indicadores_digitales.flag_hb_logueo_1m} = 1 THEN ${lkp_clientes_completa.codigo_cliente} ELSE 0 END ;;
  }

  measure: usan_mobile {
    description: "Clientes que accedieron a Mobile en el mes de análisis"
    type: count_distinct
    sql: CASE WHEN ${pdt_indicadores_digitales.flag_mb_logueo_1m} = 1 THEN ${lkp_clientes_completa.codigo_cliente} ELSE 0 END ;;
  }

  measure: q_logueos_banca_internet {
    type: sum
    sql: ${pdt_indicadores_digitales.q_hb_logueo_1m} ;;
  }

  measure: q_logueos_mobile {
    type: sum
    sql: ${pdt_indicadores_digitales.q_mb_logueo_1m} ;;
  }

  measure: q_logueos_app_mimacro {
    type: sum
    sql: ${pdt_indicadores_digitales.q_mm_logueo_1m} ;;
  }



  dimension: banca_comite_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banca_comite_key ;;
  }

  dimension: banca_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banca_key ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: cliente_key {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: codigo_cliente {
    type: number
    sql: ${TABLE}.codigo_cliente ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: flag_activa_token_12m {
    type: string
    sql: ${TABLE}.flag_activa_token_12m ;;
  }

  dimension: flag_cliente_digital {
    description: "Clientes que accedieron a Banca Digital (App y/o Bca Internet) en los ultimos 90 días"
    type: number
    sql: ${TABLE}.flag_cliente_digital ;;
  }

  dimension: flag_cliente_digital_activo {
    description: "Clientes que accedieron a Banca Digital (App y/o Bca Internet) en los ultimos 30 días"
    type: number
    sql: ${TABLE}.flag_cliente_digital_activo ;;
  }

  dimension: flag_cliente_digital_activo_nuevo {
    description: "Clientes que accedieron a Banca Digital (App y/o Bca Internet) por primera vez en el mes de análisis"
    type: string
    sql: ${TABLE}.flag_cliente_digital_activo_nuevo ;;
  }

  dimension: flag_cliente_digital_inactivo {
    description: "Clientes que no accedieron a Banca Digital (App y/o Bca Internet) en el mes de análisis"
    type: number
    sql: ${TABLE}.flag_cliente_digital_inactivo ;;
  }

  dimension: flag_hb_activa_token_12m {
    type: number
    sql: ${TABLE}.flag_hb_activa_token_12m ;;
  }

  dimension: flag_hb_cliente_digital_activo_nuevo {
    type: number
    sql: ${TABLE}.flag_hb_cliente_digital_activo_nuevo ;;
  }

  dimension: flag_hb_logueo_1m {
    type: number
    sql: ${TABLE}.flag_hb_logueo_1m ;;
  }

  dimension: flag_hb_logueo_3m {
    type: number
    sql: ${TABLE}.flag_hb_logueo_3m ;;
  }

  dimension: flag_hb_tx_consultas_12m {
    type: number
    sql: ${TABLE}.flag_hb_tx_consultas_12m ;;
  }

  dimension: flag_hb_tx_consultas_1m {
    type: number
    sql: ${TABLE}.flag_hb_tx_consultas_1m ;;
  }

  dimension: flag_hb_tx_consultas_3m {
    type: number
    sql: ${TABLE}.flag_hb_tx_consultas_3m ;;
  }

  dimension: flag_hb_tx_gestiones_12m {
    type: number
    sql: ${TABLE}.flag_hb_tx_gestiones_12m ;;
  }

  dimension: flag_hb_tx_gestiones_1m {
    type: number
    sql: ${TABLE}.flag_hb_tx_gestiones_1m ;;
  }

  dimension: flag_hb_tx_gestiones_3m {
    type: number
    sql: ${TABLE}.flag_hb_tx_gestiones_3m ;;
  }

  dimension: flag_hb_tx_monetaria_12m {
    type: number
    sql: ${TABLE}.flag_hb_tx_monetaria_12m ;;
  }

  dimension: flag_hb_tx_monetaria_1m {
    type: number
    sql: ${TABLE}.flag_hb_tx_monetaria_1m ;;
  }

  dimension: flag_hb_tx_monetaria_3m {
    type: number
    sql: ${TABLE}.flag_hb_tx_monetaria_3m ;;
  }

  dimension: flag_hb_utiliza_token_12m {
    type: number
    sql: ${TABLE}.flag_hb_utiliza_token_12m ;;
  }

  dimension: flag_mb_activa_token_12m {
    type: number
    sql: ${TABLE}.flag_mb_activa_token_12m ;;
  }

  dimension: flag_mb_cliente_digital_activo_nuevo {
    type: number
    sql: ${TABLE}.flag_mb_cliente_digital_activo_nuevo ;;
  }

  dimension: flag_mb_logueo_1m {
    type: number
    sql: ${TABLE}.flag_mb_logueo_1m ;;
  }

  dimension: flag_mb_logueo_3m {
    type: number
    sql: ${TABLE}.flag_mb_logueo_3m ;;
  }

  dimension: flag_mb_tx_consultas_12m {
    type: number
    sql: ${TABLE}.flag_mb_tx_consultas_12m ;;
  }

  dimension: flag_mb_tx_consultas_1m {
    type: number
    sql: ${TABLE}.flag_mb_tx_consultas_1m ;;
  }

  dimension: flag_mb_tx_consultas_3m {
    type: number
    sql: ${TABLE}.flag_mb_tx_consultas_3m ;;
  }

  dimension: flag_mb_tx_gestiones_12m {
    type: number
    sql: ${TABLE}.flag_mb_tx_gestiones_12m ;;
  }

  dimension: flag_mb_tx_gestiones_1m {
    type: number
    sql: ${TABLE}.flag_mb_tx_gestiones_1m ;;
  }

  dimension: flag_mb_tx_gestiones_3m {
    type: number
    sql: ${TABLE}.flag_mb_tx_gestiones_3m ;;
  }

  dimension: flag_mb_tx_monetaria_12m {
    type: number
    sql: ${TABLE}.flag_mb_tx_monetaria_12m ;;
  }

  dimension: flag_mb_tx_monetaria_1m {
    type: number
    sql: ${TABLE}.flag_mb_tx_monetaria_1m ;;
  }

  dimension: flag_mb_tx_monetaria_3m {
    type: number
    sql: ${TABLE}.flag_mb_tx_monetaria_3m ;;
  }

  dimension: flag_mb_utiliza_token_12m {
    type: number
    sql: ${TABLE}.flag_mb_utiliza_token_12m ;;
  }

  dimension: flag_mm_activa_token_12m {
    type: number
    sql: ${TABLE}.flag_mm_activa_token_12m ;;
  }

  dimension: flag_mm_cliente_digital_activo_nuevo {
    type: number
    sql: ${TABLE}.flag_mm_cliente_digital_activo_nuevo ;;
  }

  dimension: flag_mm_logueo_1m {
    type: number
    sql: ${TABLE}.flag_mm_logueo_1m ;;
  }

  dimension: flag_mm_logueo_3m {
    type: number
    sql: ${TABLE}.flag_mm_logueo_3m ;;
  }

  dimension: flag_mm_tx_consultas_12m {
    type: number
    sql: ${TABLE}.flag_mm_tx_consultas_12m ;;
  }

  dimension: flag_mm_tx_consultas_1m {
    type: number
    sql: ${TABLE}.flag_mm_tx_consultas_1m ;;
  }

  dimension: flag_mm_tx_consultas_3m {
    type: number
    sql: ${TABLE}.flag_mm_tx_consultas_3m ;;
  }

  dimension: flag_mm_tx_gestiones_12m {
    type: number
    sql: ${TABLE}.flag_mm_tx_gestiones_12m ;;
  }

  dimension: flag_mm_tx_gestiones_1m {
    type: number
    sql: ${TABLE}.flag_mm_tx_gestiones_1m ;;
  }

  dimension: flag_mm_tx_gestiones_3m {
    type: number
    sql: ${TABLE}.flag_mm_tx_gestiones_3m ;;
  }

  dimension: flag_mm_tx_monetaria_12m {
    type: number
    sql: ${TABLE}.flag_mm_tx_monetaria_12m ;;
  }

  dimension: flag_mm_tx_monetaria_1m {
    type: number
    sql: ${TABLE}.flag_mm_tx_monetaria_1m ;;
  }

  dimension: flag_mm_tx_monetaria_3m {
    type: number
    sql: ${TABLE}.flag_mm_tx_monetaria_3m ;;
  }

  dimension: flag_mm_utiliza_token_12m {
    type: number
    sql: ${TABLE}.flag_mm_utiliza_token_12m ;;
  }

  dimension: flag_onb_1m {
    type: number
    sql: ${TABLE}.flag_onb_1m ;;
  }

  dimension: flag_onb_3m {
    type: number
    sql: ${TABLE}.flag_onb_3m ;;
  }

  dimension: flag_tx_blanqueo_1m {
    type: number
    sql: ${TABLE}.flag_tx_blanqueo_1m ;;
  }

  dimension: flag_tx_blanqueo_3m {
    type: number
    sql: ${TABLE}.flag_tx_blanqueo_3m ;;
  }

  dimension: flag_tx_consultas_12m {
    type: number
    sql: ${TABLE}.flag_tx_consultas_12m ;;
  }

  dimension: flag_tx_consultas_1m {
    type: number
    sql: ${TABLE}.flag_tx_consultas_1m ;;
  }

  dimension: flag_tx_consultas_3m {
    type: number
    sql: ${TABLE}.flag_tx_consultas_3m ;;
  }

  dimension: flag_tx_gestiones_12m {
    type: number
    sql: ${TABLE}.flag_tx_gestiones_12m ;;
  }

  dimension: flag_tx_gestiones_1m {
    type: number
    sql: ${TABLE}.flag_tx_gestiones_1m ;;
  }

  dimension: flag_tx_gestiones_3m {
    type: number
    sql: ${TABLE}.flag_tx_gestiones_3m ;;
  }

  dimension: flag_tx_mandato_1m {
    type: number
    sql: ${TABLE}.flag_tx_mandato_1m ;;
  }

  dimension: flag_tx_mandato_3m {
    type: number
    sql: ${TABLE}.flag_tx_mandato_3m ;;
  }

  dimension: flag_tx_monetaria_12m {
    type: number
    sql: ${TABLE}.flag_tx_monetaria_12m ;;
  }

  dimension: flag_tx_monetaria_1m {
    type: number
    sql: ${TABLE}.flag_tx_monetaria_1m ;;
  }

  dimension: flag_tx_monetaria_3m {
    type: number
    sql: ${TABLE}.flag_tx_monetaria_3m ;;
  }

  dimension: flag_utiliza_token_12m {
    type: string
    sql: ${TABLE}.flag_utiliza_token_12m ;;
  }

  dimension: q_hb_logueo_1m {
    hidden: yes
    type: number
    sql: ${TABLE}.q_hb_logueo_1m ;;
  }

  measure:: q_hb_logueo_3m {
    type: sum
    sql: ${TABLE}.q_hb_logueo_3m ;;
  }

  measure: q_hb_tx_consultas_12m {
    type: sum
    sql: ${TABLE}.q_hb_tx_consultas_12m ;;
  }

  measure: q_hb_tx_consultas_1m {
    type: sum
    sql: ${TABLE}.q_hb_tx_consultas_1m ;;
  }

  measure: q_hb_tx_consultas_3m {
    type: sum
    sql: ${TABLE}.q_hb_tx_consultas_3m ;;
  }

  measure: q_hb_tx_gestiones_12m {
    type: sum
    sql: ${TABLE}.q_hb_tx_gestiones_12m ;;
  }

  measure: q_hb_tx_gestiones_1m {
    type: sum
    sql: ${TABLE}.q_hb_tx_gestiones_1m ;;
  }

  measure: q_hb_tx_gestiones_3m {
    type: sum
    sql: ${TABLE}.q_hb_tx_gestiones_3m ;;
  }

  measure: q_hb_tx_monetaria_12m {
    type: sum
    sql: ${TABLE}.q_hb_tx_monetaria_12m ;;
  }

  measure: q_hb_tx_monetaria_1m {
    type: sum
    sql: ${TABLE}.q_hb_tx_monetaria_1m ;;
  }

  measure: q_hb_tx_monetaria_3m {
    type: sum
    sql: ${TABLE}.q_hb_tx_monetaria_3m ;;
  }

  measure: q_logueos_cliente_digital {
    type: sum
    sql: ${TABLE}.q_logueos_cliente_digital ;;
  }

  measure: q_logueos_digital_activo {
    type: sum
    sql: ${TABLE}.q_logueos_digital_activo ;;
  }

  dimension: q_mb_logueo_1m {
    hidden: yes
    type: number
    sql: ${TABLE}.q_mb_logueo_1m ;;
  }

  measure: q_mb_logueo_3m {
    type: sum
    sql: ${TABLE}.q_mb_logueo_3m ;;
  }

  measure: q_mb_tx_consultas_12m {
    type: sum
    sql: ${TABLE}.q_mb_tx_consultas_12m ;;
  }

  measure: q_mb_tx_consultas_1m {
    type: sum
    sql: ${TABLE}.q_mb_tx_consultas_1m ;;
  }

  measure: q_mb_tx_consultas_3m {
    type: sum
    sql: ${TABLE}.q_mb_tx_consultas_3m ;;
  }

  measure: q_mb_tx_gestiones_12m {
    type: sum
    sql: ${TABLE}.q_mb_tx_gestiones_12m ;;
  }

  measure: q_mb_tx_gestiones_1m {
    type: sum
    sql: ${TABLE}.q_mb_tx_gestiones_1m ;;
  }

  measure: q_mb_tx_gestiones_3m {
    type: sum
    sql: ${TABLE}.q_mb_tx_gestiones_3m ;;
  }

  measure: q_mb_tx_monetaria_12m {
    type: sum
    sql: ${TABLE}.q_mb_tx_monetaria_12m ;;
  }

  measure: q_mb_tx_monetaria_1m {
    type: sum
    sql: ${TABLE}.q_mb_tx_monetaria_1m ;;
  }

  measure: q_mb_tx_monetaria_3m {
    type: sum
    sql: ${TABLE}.q_mb_tx_monetaria_3m ;;
  }

  dimension: q_mm_logueo_1m {
    hidden: yes
    type: number
    sql: ${TABLE}.q_mm_logueo_1m ;;
  }

  measure: q_mm_logueo_3m {
    type: sum
    sql: ${TABLE}.q_mm_logueo_3m ;;
  }

  measure: q_mm_tx_consultas_12m {
    type: sum
    sql: ${TABLE}.q_mm_tx_consultas_12m ;;
  }

  measure: q_mm_tx_consultas_1m {
    type: sum
    sql: ${TABLE}.q_mm_tx_consultas_1m ;;
  }

  measure: q_mm_tx_consultas_3m {
    type: sum
    sql: ${TABLE}.q_mm_tx_consultas_3m ;;
  }

  measure: q_mm_tx_gestiones_12m {
    type: sum
    sql: ${TABLE}.q_mm_tx_gestiones_12m ;;
  }

  measure: q_mm_tx_gestiones_1m {
    type: sum
    sql: ${TABLE}.q_mm_tx_gestiones_1m ;;
  }

  measure: q_mm_tx_gestiones_3m {
    type: sum
    sql: ${TABLE}.q_mm_tx_gestiones_3m ;;
  }

  measure: q_mm_tx_monetaria_12m {
    type: sum
    sql: ${TABLE}.q_mm_tx_monetaria_12m ;;
  }

  measure: q_mm_tx_monetaria_1m {
    type: sum
    sql: ${TABLE}.q_mm_tx_monetaria_1m ;;
  }

  measure: q_mm_tx_monetaria_3m {
    type: sum
    sql: ${TABLE}.q_mm_tx_monetaria_3m ;;
  }

  measure: q_tx_blanqueo_1m {
    type: sum
    sql: ${TABLE}.q_tx_blanqueo_1m ;;
  }

  measure: q_tx_blanqueo_3m {
    type: sum
    sql: ${TABLE}.q_tx_blanqueo_3m ;;
  }

  measure: q_tx_consultas_12m {
    type: sum
    sql: ${TABLE}.q_tx_consultas_12m ;;
  }

  measure: q_tx_consultas_1m {
    type: sum
    sql: ${TABLE}.q_tx_consultas_1m ;;
  }

  measure: q_tx_consultas_3m {
    type: sum
    sql: ${TABLE}.q_tx_consultas_3m ;;
  }

  measure: q_tx_gestiones_12m {
    type: sum
    sql: ${TABLE}.q_tx_gestiones_12m ;;
  }

  measure: q_tx_gestiones_1m {
    type: sum
    sql: ${TABLE}.q_tx_gestiones_1m ;;
  }

  measure: q_tx_gestiones_3m {
    type: sum
    sql: ${TABLE}.q_tx_gestiones_3m ;;
  }

  measure: q_tx_mandato_1m {
    type: sum
    sql: ${TABLE}.q_tx_mandato_1m ;;
  }

  measure: q_tx_mandato_3m {
    type: sum
    sql: ${TABLE}.q_tx_mandato_3m ;;
  }

  measure: q_tx_monetaria_12m {
    type: sum
    sql: ${TABLE}.q_tx_monetaria_12m ;;
  }

  measure: q_tx_monetaria_1m {
    type: sum
    sql: ${TABLE}.q_tx_monetaria_1m ;;
  }

  measure: q_tx_monetaria_3m {
    type: sum
    sql: ${TABLE}.q_tx_monetaria_3m ;;
  }

  dimension: sucursal_radicacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_radicacion_key ;;
  }
}
