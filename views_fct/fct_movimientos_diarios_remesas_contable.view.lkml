view: fct_movimientos_diarios_remesas_contable {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_movimientos_diarios_remesas_contable`
    ;;
    view_label: " Fct Movimientos Diarios Remesas Contable"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_movimientos_diarios_remesas_contable s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

  dimension: asiento_remesa {
    type: number
    sql: ${TABLE}.asiento_remesa ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: debito_credito {
    type: string
    sql: ${TABLE}.debito_credito ;;
  }

  dimension: descripcion_asiento {
    type: string
    sql: ${TABLE}.descripcion_asiento ;;
  }

  dimension: especie_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: monto_debito_credito {
    type: number
    sql: ${TABLE}.monto_debito_credito ;;
  }

  dimension: plan_cuentas_key {
    hidden: yes
    type: number
    sql: ${TABLE}.plan_cuentas_key ;;
  }

  dimension: sucursal_emisora_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_emisora_key ;;
  }

  dimension: sucursal_receptora_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_receptora_key ;;
  }

  dimension: tipo_movimiento_remesa_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_movimiento_remesa_key ;;
  }

  dimension: tipo_unidad_emisora_remesa_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_unidad_emisora_remesa_key ;;
  }

  dimension: tipo_unidad_receptora_remesa_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_unidad_receptora_remesa_key ;;
  }

  dimension: unidad_acceso_key {
    hidden: yes
    type: number
    sql: ${TABLE}.unidad_acceso_key ;;
  }

  dimension: unidad_emisora_remesa_key {
    hidden: yes
    type: number
    sql: ${TABLE}.unidad_emisora_remesa_key ;;
  }

  dimension: unidad_receptora_remesa_key {
    hidden: yes
    type: number
    sql: ${TABLE}.unidad_receptora_remesa_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
