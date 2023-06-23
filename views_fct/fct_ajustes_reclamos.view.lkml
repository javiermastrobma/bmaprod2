view: fct_ajustes_reclamos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_ajustes_reclamos`
    ;;
    label: " Fct Ajustes Reclamos"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_ajustes_reclamos s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

  dimension: analista_creacion_ajuste_key {
    hidden: yes
    type: number
    sql: ${TABLE}.analista_creacion_ajuste_key ;;
  }

  dimension: analista_creacion_concepto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.analista_creacion_concepto_key ;;
  }

  dimension: analista_modificacion_concepto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.analista_modificacion_concepto_key ;;
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

  dimension: catalogo_producto_crm_key {
    hidden: yes
    type: number
    sql: ${TABLE}.catalogo_producto_crm_key ;;
  }

  dimension: causal_ajuste_key {
    hidden: yes
    type: number
    sql: ${TABLE}.causal_ajuste_key ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: concepto_ajuste_key {
    hidden: yes
    type: number
    sql: ${TABLE}.concepto_ajuste_key ;;
  }

  dimension: debito_credito {
    type: string
    sql: ${TABLE}.debito_credito ;;
  }

  dimension: estado_ajuste_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_ajuste_key ;;
  }

  dimension: estado_concepto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_concepto_key ;;
  }

  dimension: fecha_creacion_ajuste_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_creacion_ajuste_key ;;
  }

  dimension: fecha_creacion_concepto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_creacion_concepto_key ;;
  }

  dimension: fecha_envio_concepto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_envio_concepto_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: fecha_modificacion_concepto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_modificacion_concepto_key ;;
  }

  dimension: fecha_valor_concepto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_valor_concepto_key ;;
  }

  dimension: flag_ultimo_concepto {
    type: number
    sql: ${TABLE}.flag_ultimo_concepto ;;
  }

  dimension: importe_concepto {
    type: number
    sql: ${TABLE}.importe_concepto ;;
  }

  dimension: moneda_concepto {
    type: string
    sql: ${TABLE}.moneda_concepto ;;
  }

  dimension: monto_aprobado_pesos {
    type: number
    sql: ${TABLE}.monto_aprobado_pesos ;;
  }

  dimension: monto_solicitado_pesos {
    type: number
    sql: ${TABLE}.monto_solicitado_pesos ;;
  }

  dimension: numero_ajuste {
    type: string
    sql: ${TABLE}.numero_ajuste ;;
  }

  dimension: numero_concepto {
    type: string
    sql: ${TABLE}.numero_concepto ;;
  }

  dimension: producto_generico_ajuste_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_generico_ajuste_key ;;
  }

  dimension: reclamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.reclamo_key ;;
  }

  dimension: sector_producto_ajuste_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sector_producto_ajuste_key ;;
  }

  dimension: tiempo_resolucion_concepto {
    hidden: yes
    type: number
    sql: ${TABLE}.tiempo_resolucion_concepto ;;
  }

  dimension: tipo_autorizacion_ajuste_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_autorizacion_ajuste_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
