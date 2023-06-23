view: fct_detalle_transacciones_prestamos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_detalle_transacciones_prestamos`
    ;;
    view_label: " Fct Detalle Transacciones Prestamos"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_detalle_transacciones_prestamos s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
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

  dimension: categoria_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.categoria_cuenta_key ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: codigo_valor_key {
    hidden: yes
    type: number
    sql: ${TABLE}.codigo_valor_key ;;
  }

  dimension: cotizacion {
    type: number
    sql: ${TABLE}.cotizacion ;;
  }

  dimension: cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }

  dimension: cuenta_referencia_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_referencia_key ;;
  }

  dimension: cuotas_numero_pagas {
    type: string
    sql: ${TABLE}.cuotas_numero_pagas ;;
  }

  dimension: especie_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_key ;;
  }

  dimension: estado_transaccion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_transaccion_key ;;
  }

  dimension: fecha_aplicacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_aplicacion_key ;;
  }

  dimension: fecha_desembolso_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_desembolso_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: fecha_pago_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_pago_key ;;
  }

  dimension: mercado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.mercado_key ;;
  }

  dimension: monto {
    type: number
    sql: ${TABLE}.monto ;;
  }

  dimension: oficial_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_cuenta_key ;;
  }

  dimension: perfil {
    type: string
    sql: ${TABLE}.perfil ;;
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

  dimension: rubro_prestamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.rubro_prestamo_key ;;
  }

  dimension: sector_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sector_key ;;
  }

  dimension: sucursal_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: tem {
    type: number
    sql: ${TABLE}.tem ;;
  }

  dimension: tipo_cartera_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_cartera_key ;;
  }

  dimension: tipo_persona_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_persona_key ;;
  }

  dimension: tna {
    type: number
    sql: ${TABLE}.tna ;;
  }

  dimension: total_mn {
    type: number
    sql: ${TABLE}.total_mn ;;
  }

  dimension: transaccion_prestamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.transaccion_prestamo_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
