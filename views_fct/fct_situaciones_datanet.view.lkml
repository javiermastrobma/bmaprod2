view: fct_situaciones_datanet {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_situaciones_datanet`
    ;;
    view_label: " Fct Situaciones Datanet"

  dimension: abonado {
    type: string
    sql: ${TABLE}.abonado ;;
  }

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_situaciones_datanet s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

  dimension: abonado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.abonado_key ;;
  }

  dimension: actividad_key {
    hidden: yes
    type: number
    sql: ${TABLE}.actividad_key ;;
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

  dimension: cantidad_tef {
    type: number
    sql: ${TABLE}.cantidad_tef ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: comision_calculada {
    type: number
    sql: ${TABLE}.comision_calculada ;;
  }

  dimension: cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }

  dimension: cuenta_transferida_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_transferida_key ;;
  }

  dimension: esquema_comision_key {
    hidden: yes
    type: number
    sql: ${TABLE}.esquema_comision_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: fecha_solicitud_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_solicitud_key ;;
  }

  dimension: monto_total_tef {
    type: number
    sql: ${TABLE}.monto_total_tef ;;
  }

  dimension: oficial_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_cuenta_key ;;
  }

  dimension: producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_key ;;
  }

  dimension: residencia_key {
    hidden: yes
    type: number
    sql: ${TABLE}.residencia_key ;;
  }

  dimension: sector_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sector_key ;;
  }

  dimension: sucursal_cuenta_transferida_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_transferida_key ;;
  }

  dimension: tipo_operacion_datanet_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_operacion_datanet_key ;;
  }

  dimension: tipo_persona_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_persona_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
