view: fct_situacion_diaria_reclamos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_situacion_diaria_reclamos`
    ;;
  view_label: " Fct Situación Diaria Reclamos"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_situacion_diaria_reclamos s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

  dimension: actividad_actual_reclamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.actividad_actual_reclamo_key ;;
  }

  dimension: analista_reclamo_asignado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.analista_reclamo_asignado_key ;;
  }

  dimension: antiguedad_reclamo_dias_corridos {
    type: number
    sql: ${TABLE}.antiguedad_reclamo_dias_corridos ;;
  }

  dimension: antiguedad_reclamo_dias_habiles {
    type: number
    sql: ${TABLE}.antiguedad_reclamo_dias_habiles ;;
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

  dimension: carta {
    type: string
    sql: ${TABLE}.carta ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: contrato_leasing_key {
    hidden: yes
    type: number
    sql: ${TABLE}.contrato_leasing_key ;;
  }

  dimension: convenio_key {
    hidden: yes
    type: number
    sql: ${TABLE}.convenio_key ;;
  }

  dimension: cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }

  dimension: cuenta_tc_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_tc_key ;;
  }

  dimension: dias_restantes_resolucion {
    type: number
    sql: ${TABLE}.dias_restantes_resolucion ;;
  }

  dimension: estado_fraude_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_fraude_key ;;
  }

  dimension: estado_reclamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_reclamo_key ;;
  }

  dimension: fecha_asignacion_analista_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_asignacion_analista_key ;;
  }

  dimension: fecha_derivacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_derivacion_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: fraude {
    type: string
    sql: ${TABLE}.fraude ;;
  }

  dimension: monto_ajuste_credito {
    type: number
    sql: ${TABLE}.monto_ajuste_credito ;;
  }

  dimension: monto_ajuste_debito {
    type: number
    sql: ${TABLE}.monto_ajuste_debito ;;
  }

  dimension: monto_reclamado_dolares {
    type: number
    sql: ${TABLE}.monto_reclamado_dolares ;;
  }

  dimension: monto_reclamado_pesos {
    type: number
    sql: ${TABLE}.monto_reclamado_pesos ;;
  }

  dimension: motivo_cierre_reclamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.motivo_cierre_reclamo_key ;;
  }

  dimension: poliza_key {
    hidden: yes
    type: number
    sql: ${TABLE}.poliza_key ;;
  }

  dimension: producto_generico_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_generico_key ;;
  }

  dimension: producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_key ;;
  }

  dimension: reclamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.reclamo_key ;;
  }

  dimension: reiteraciones {
    type: number
    sql: ${TABLE}.reiteraciones ;;
  }

  dimension: sector_reclamo_asignado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sector_reclamo_asignado_key ;;
  }

  dimension: sector_reclamo_cierre_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sector_reclamo_cierre_key ;;
  }

  dimension: sector_reclamo_derivado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sector_reclamo_derivado_key ;;
  }

  dimension: sector_reclamo_ingresado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sector_reclamo_ingresado_key ;;
  }

  dimension: sucursal_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: tipo_fraude_reclamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_fraude_reclamo_key ;;
  }

  dimension: tipo_resolucion_fraude_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_resolucion_fraude_key ;;
  }

  dimension: tipologia_reclamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipologia_reclamo_key ;;
  }

  dimension: valor_cliente {
    type: string
    sql: ${TABLE}.valor_cliente ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
