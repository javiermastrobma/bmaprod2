view: lkp_reclamos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_reclamos`
    ;;
  view_label: "Datos RECLAMO"

  dimension: analista_comprometido_fraude_key {
    hidden: yes
    type: number
    sql: ${TABLE}.analista_comprometido_fraude_key ;;
  }

  dimension: analista_ingreso_key {
    hidden: yes
    type: number
    sql: ${TABLE}.analista_ingreso_key ;;
  }

  dimension: analista_ingreso_resolucion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.analista_ingreso_resolucion_key ;;
  }

  dimension: analista_modificacion_resolucion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.analista_modificacion_resolucion_key ;;
  }

  dimension: analista_reclamo_asignado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.analista_reclamo_asignado_key ;;
  }

  dimension: antiguedad_reclamo_dias_corridos {
    group_label: "Reclamos"
    type: number
    sql: ${TABLE}.antiguedad_reclamo_dias_corridos ;;
  }

  dimension: antiguedad_reclamo_dias_habiles {
    group_label: "Reclamos"
    type: number
    sql: ${TABLE}.antiguedad_reclamo_dias_habiles ;;
  }

  dimension: banca_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banca_key ;;
  }

  dimension: canal_fraude {
    group_label: "Reclamos"
    type: string
    sql: ${TABLE}.canal_fraude ;;
  }

  dimension: carta {
    group_label: "Reclamos"
    type: string
    sql: ${TABLE}.carta ;;
  }

  dimension: categoria_cliente {
    group_label: "Reclamos"
    type: string
    sql: ${TABLE}.categoria_cliente ;;
  }

  dimension: causa_resolucion_reclamo {
    group_label: "Reclamos"
    type: string
    sql: ${TABLE}.causa_resolucion_reclamo ;;
  }

  dimension: causal_fraude {
    group_label: "Reclamos"
    type: string
    sql: ${TABLE}.causal_fraude ;;
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

  dimension: detalle_medio_fraude {
    group_label: "Reclamos"
    type: string
    sql: ${TABLE}.detalle_medio_fraude ;;
  }

  measure: dias_restantes_resolucion {
    group_label: "Reclamos"
    type: sum
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

  dimension: fecha_cierre_reclamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_cierre_reclamo_key ;;
  }

  dimension: fecha_creacion_fraude_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_creacion_fraude_key ;;
  }

  dimension: fecha_derivacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_derivacion_key ;;
  }

  dimension: fecha_estimada_resolucion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_estimada_resolucion_key ;;
  }

  dimension: fecha_ingreso_reclamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_ingreso_reclamo_key ;;
  }

  dimension: fecha_ingreso_resolucion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_ingreso_resolucion_key ;;
  }

  dimension: fecha_modificacion_resolucion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_modificacion_resolucion_key ;;
  }

  dimension: fecha_resolucion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_resolucion_key ;;
  }

  dimension: fecha_ultimo_contacto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_ultimo_contacto_key ;;
  }

  dimension: fraude {
    group_label: "Reclamos"
    type: string
    sql: ${TABLE}.fraude ;;
  }

  dimension: intentos_contacto {
    group_label: "Reclamos"
    type: number
    sql: ${TABLE}.intentos_contacto ;;
  }

  dimension: medio_utilizado_fraude {
    group_label: "Reclamos"
    type: string
    sql: ${TABLE}.medio_utilizado_fraude ;;
  }

  dimension: metodo_contacto {
    group_label: "Reclamos"
    type: string
    sql: ${TABLE}.metodo_contacto ;;
  }

  dimension: monto_reclamado_dolares {
    group_label: "Reclamos"
    type: number
    sql: ${TABLE}.monto_reclamado_dolares ;;
  }

  dimension: monto_reclamado_pesos {
    group_label: "Reclamos"
    type: number
    sql: ${TABLE}.monto_reclamado_pesos ;;
  }

  dimension: motivo_cierre_reclamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.motivo_cierre_reclamo_key ;;
  }

  dimension: numero_reclamo {
    group_label: "Reclamos"
    type: string
    sql: ${TABLE}.numero_reclamo ;;
  }

  dimension: poliza_key {
    hidden: yes
    type: number
    sql: ${TABLE}.poliza_key ;;
  }

  dimension: prioridad {
    group_label: "Reclamos"
    type: string
    sql: ${TABLE}.prioridad ;;
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

  dimension: reabierto {
    group_label: "Reclamos"
    type: string
    sql: ${TABLE}.reabierto ;;
  }

  dimension: reclamo_key {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.reclamo_key ;;
  }

  dimension: reclamo_referente {
    group_label: "Reclamos"
    type: string
    sql: ${TABLE}.reclamo_referente ;;
  }

  dimension: referente {
    group_label: "Reclamos"
    type: string
    sql: ${TABLE}.referente ;;
  }

  dimension: reinicio {
    group_label: "Reclamos"
    type: string
    sql: ${TABLE}.reinicio ;;
  }

  dimension: reiteraciones {
    group_label: "Reclamos"
    type: number
    sql: ${TABLE}.reiteraciones ;;
  }

  dimension: resolucion {
    group_label: "Reclamos"
    type: string
    sql: ${TABLE}.resolucion ;;
  }

  dimension: resolucion_anterior {
    group_label: "Reclamos"
    type: string
    sql: ${TABLE}.resolucion_anterior ;;
  }

  dimension: resolucion_en_canal {
    group_label: "Reclamos"
    type: string
    sql: ${TABLE}.resolucion_en_canal ;;
  }

  dimension: revision {
    group_label: "Reclamos"
    type: string
    sql: ${TABLE}.revision ;;
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

  dimension: sector_reclamo_fraude_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sector_reclamo_fraude_key ;;
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

  dimension: tiempo_desvio {
    group_label: "Reclamos"
    type: number
    sql: ${TABLE}.tiempo_desvio ;;
  }

  dimension: tiempo_estimado_resolucion {
    group_label: "Reclamos"
    type: number
    sql: ${TABLE}.tiempo_estimado_resolucion ;;
  }

  dimension: tiempo_real_cierre {
    group_label: "Reclamos"
    type: number
    sql: ${TABLE}.tiempo_real_cierre ;;
  }

  dimension: tiempo_real_resolucion {
    group_label: "Reclamos"
    type: number
    sql: ${TABLE}.tiempo_real_resolucion ;;
  }

  dimension: tipo_fraude_reclamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_fraude_reclamo_key ;;
  }

  dimension: tipo_persona {
    group_label: "Reclamos"
    type: string
    sql: ${TABLE}.tipo_persona ;;
  }

  dimension: tipo_resolucion_fraude_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_resolucion_fraude_key ;;
  }

  dimension: tipologia_actualizada_reclamo {
    group_label: "Reclamos"
    type: string
    sql: ${TABLE}.tipologia_actualizada_reclamo ;;
  }

  dimension: tipologia_reclamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipologia_reclamo_key ;;
  }

  dimension: valor_cliente {
    group_label: "Reclamos"
    type: string
    sql: ${TABLE}.valor_cliente ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
