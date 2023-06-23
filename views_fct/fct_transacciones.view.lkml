view: fct_transacciones {
  #sql_table_name:bm-gcp-p1-dw.cdw_raw.{% if lkp_fechas.fecha._is_filtered %}{% assign date1 = 'now' | date: '%Y-%m-%d' %}{% assign date2 = lkp_fechas.fecha | date: '2023-01-01' %}{% if date2 < date1 %}fct_transacciones_particionada{% else %}fct_transacciones{% endif %}{% else %}fct_transacciones{% endif %};;
    view_label: " Fct Transacciones"
  sql_table_name:  {% if lkp_fechas.fecha._is_filtered %}
  {% assign cutoff_date = "2023-01-01" | date: '%s' %}
  {% assign filter_date = lkp_fechas.fecha._end_date | date: '%s' %}
  {% if filter_date < cutoff_date %}
    fct_transacciones_particionada
  {% else %}
    fct_transacciones
  {% endif %}
{% else %}
  fct_transacciones
{% endif %} ;;

  parameter: historico {
    type: unquoted
    allowed_value: {
      label: "Transacciones Historicas"
      value: "fct_transacciones_tc"
    }
    default_value: "fct_transacciones"
  }


#DIMENSIONES Y MEDIDAS

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_transacciones s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

dimension: banco_key {
  hidden: yes
  type: number
  sql: ${TABLE}.banco_key ;;
}

dimension: banco_originante_trf_key {
  hidden: yes
  type: number
  sql: ${TABLE}.banco_originante_trf_key ;;
}

dimension: banco_receptor_trf_key {
  hidden: yes
  type: number
  sql: ${TABLE}.banco_receptor_trf_key ;;
}

dimension: canal_key {
  hidden: yes
  type: number
  sql: ${TABLE}.canal_key ;;
}

dimension: cantidad_transacciones {
  hidden: yes
  type: number
  sql: ${TABLE}.cantidad_transacciones ;;
}

dimension: categoria_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.categoria_cuenta_key ;;
}

dimension: causal_key {
  hidden: yes
  type: number
  sql: ${TABLE}.causal_key ;;
}

dimension: concepto_transaccion {
  type: string
  sql: ${TABLE}.concepto_transaccion ;;
}

dimension: contabiliza {
  hidden: yes
  type: string
  sql: ${TABLE}.contabiliza ;;
}

dimension: convenio_key {
  hidden: yes
  type: number
  sql: ${TABLE}.convenio_key ;;
}

dimension: cotizacion {
  hidden: yes
  type: number
  sql: ${TABLE}.cotizacion ;;
}

dimension: cuenta_contable_credito {
  hidden: yes
  type: string
  sql: ${TABLE}.cuenta_contable_credito ;;
}

dimension: cuenta_contable_debito {
  hidden: yes
  type: string
  sql: ${TABLE}.cuenta_contable_debito ;;
}

dimension: cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cuenta_key ;;
}

dimension: debito_credito {
  type: string
  sql: ${TABLE}.debito_credito ;;
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

dimension_group: fecha_transaccion {
  group_label: "Fecha Transacción"
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
  datatype: datetime
  sql: ${TABLE}.fecha_transaccion ;;
}

dimension: flag_reversa {
  type: string
  sql: ${TABLE}.flag_reversa ;;
}

dimension: hora_transaccion_key {
  hidden: yes
  type: number
  sql: ${TABLE}.hora_transaccion_key ;;
}

dimension: id_proceso {
  hidden: yes
  type: number
  sql: ${TABLE}.id_proceso ;;
}

dimension: importe_transaccion {
  hidden: yes
  type: number
  sql: ${TABLE}.importe_transaccion ;;
}

dimension: importe_transaccion_mn {
  hidden: yes
  type: number
  sql: ${TABLE}.importe_transaccion_mn ;;
}

dimension: monto_transferencia {
  hidden: yes
  type: number
  sql: ${TABLE}.monto_transferencia ;;
}

dimension: numero_operacion_reclamo {
  hidden: yes
  type: number
  sql: ${TABLE}.numero_operacion_reclamo ;;
}

dimension: numero_transaccion {
  type: number
  sql: ${TABLE}.numero_transaccion ;;
}

dimension: producto_cobis {
  hidden: yes
  type: string
  sql: ${TABLE}.producto_cobis ;;
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

dimension: saldo_disponible {
  hidden: yes
  type: number
  sql: ${TABLE}.saldo_disponible ;;
}

dimension: saldo_disponible_mn {
  hidden: yes
  type: number
  sql: ${TABLE}.saldo_disponible_mn ;;
}

dimension: sector_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sector_key ;;
}

dimension: secuencial_transaccion {
  hidden: yes
  type: number
  sql: ${TABLE}.secuencial_transaccion ;;
}

dimension: subsecuencial_transaccion {
  hidden: yes
  type: string
  sql: ${TABLE}.subsecuencial_transaccion ;;
}

dimension: sucursal_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_key ;;
}

dimension: sucursal_origen_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_origen_key ;;
}

dimension: terminal_transaccion {
  hidden: yes
  type: string
  sql: ${TABLE}.terminal_transaccion ;;
}

dimension: tipo_cuenta_credito {
  hidden: yes
  type: string
  sql: ${TABLE}.tipo_cuenta_credito ;;
}

dimension: tipo_cuenta_debito {
  hidden: yes
  type: string
  sql: ${TABLE}.tipo_cuenta_debito ;;
}

dimension: tipo_transaccion {
  hidden: yes
  type: number
  sql: ${TABLE}.tipo_transaccion ;;
}

dimension: tipo_transferencia_key {
  hidden: yes
  type: number
  sql: ${TABLE}.tipo_transferencia_key ;;
}

dimension: usuario_transaccion {
  hidden: yes
  type: string
  sql: ${TABLE}.usuario_transaccion ;;
}

dimension: min_fecha_key_dim {
  hidden: yes
  type: number
  sql: (SELECT MIN(f.fecha_key) FROM fct_transacciones t left join lkp_fechas f ON t.fecha_key = f.fecha_key) ;;
}

dimension: min_fecha_date_dim {
  hidden: yes
  type: number
  sql: (SELECT LEFT(CAST(MIN(f.fecha) AS STRING), 10) FROM fct_transacciones t left join lkp_fechas f ON t.fecha_key = f.fecha_key) ;;
}

measure: sum_importe_transaccion_mn {
  type: sum
  sql: ${importe_transaccion_mn} ;;
}

measure: sum_cantidad_transacciones {
  type: sum
  sql: ${cantidad_transacciones} ;;
}

measure: min_fecha_key {
  hidden: yes
  type: min
  sql: ${lkp_fechas.fecha_key} ;;
}

measure: min_fecha_date {
  hidden: yes
  type: min
  sql: ${lkp_fechas.fecha_date} ;;
}

measure: count {
  type: count
  drill_fields: []
}


#FILTROS

filter: filtro_flag_reversa {
  sql: ${flag_reversa} != "9" ;;
  }
filter: causal_tipo_transferencia {
  label: "Causales PS"
  sql: (${lkp_causales.causal} in (303, 1001, 1004, 1304, 1501, 1780, 1783, 1935, 2028, 4068) or (${lkp_causales.causal} = 1444 and ${lkp_tipos_transferencia.tipo_transferencia} = "Sueldos")) ;;
  }
}
#VIEW PARA PLAN SUELDO ACREDITACIONES SALARIALES

view: transacciones_ps {
  extends: [fct_transacciones]

#FILTROS

  filter: filtro_flag_reversa {
    hidden: yes
    sql: ${flag_reversa} != "9" ;;
  }
  filter: causal_tipo_transferencia {
    hidden: yes
    label: "Causales PS"
    sql: (${lkp_causales.causal} in (303, 1001, 1004, 1304, 1501, 1780, 1783, 1935, 2028, 4068) or (${lkp_causales.causal} = 1444 and ${lkp_tipos_transferencia.tipo_transferencia} = "Sueldos")) ;;
  }
}
