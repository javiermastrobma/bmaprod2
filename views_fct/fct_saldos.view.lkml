include: "/views/views_lkp/pop_fanout.view.lkml"
view: fct_saldos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_saldos` ;; #{% if lkp_clientes_completa._in_query or lkp_cuentas._in_query %}fct_saldos{% else %}agr_saldos{% endif %}` ;;
  view_label: " Fct Saldos"

  dimension: event_raw {
    sql:  ${lkp_fechas.fecha::datetime} ;;
    type: date_raw
    hidden: yes
  }

  filter: flag_fin_mes_fecha_maxima {
    sql: ${lkp_fechas.flag_fin_mes} = "S" OR ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_saldos s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_saldos s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

  dimension: abono_key {
    hidden: yes
    type: number
    sql: ${TABLE}.abono_key ;;
  }

  dimension: actividad_key {
    hidden: yes
    type: number
    sql: ${TABLE}.actividad_key ;;
  }

  dimension: acuerdo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.acuerdo_key ;;
  }

  dimension: ajuste_devengado_dia {
    description: "Ajuste devengado COBIS, en moneda local"
    type: number
    sql: ${TABLE}.ajuste_devengado_dia ;;
  }

  measure: sum_ajuste_devengado_dia {
    description: "Ajuste devengado COBIS, en moneda local"
    type: sum
    sql: ${TABLE}.ajuste_devengado_dia ;;
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

  dimension: bloqueo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.bloqueo_key ;;
  }

  dimension: cantidad_cuentas {
    hidden: yes
    type: number
    sql: ${TABLE}.cantidad_cuentas ;;
  }

  dimension: categoria_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.categoria_cuenta_key ;;
  }

  dimension: clasificacion_contable_key {
    hidden: yes
    type: number
    sql: ${TABLE}.clasificacion_contable_key ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: cotizacion {
    type: number
    sql: ${TABLE}.cotizacion ;;
  }

  dimension: cuenta_key {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }

  dimension: especie_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_key ;;
  }

  dimension: estado_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_cuenta_key ;;
  }

  dimension_group: etl_insertado {
    hidden: yes
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
    sql: ${TABLE}.etl_insertado ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

    # dimension_group: fecha_pop {
    #   type: time
    #   timeframes: [
    #     raw,
    #     time,
    #     date,
    #     week,
    #     month,
    #     quarter,
    #     year
    #   ]
    #   sql: ${pop_fanout.fecha_pop_date} ;;
    # }

  dimension_group: fecha_ultimo_movim_cliente {
    hidden: yes
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
    sql: ${TABLE}.fecha_ultimo_movim_cliente ;;
  }

  dimension: fecha_vencimiento_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_vencimiento_key ;;
  }

  dimension: inactividad_key {
    hidden: yes
    type: number
    sql: ${TABLE}.inactividad_key ;;
  }

  dimension: interes_devengado_dia {
    description: "Interés devengado COBIS, en moneda local"
    type: number
    sql: ${TABLE}.interes_devengado_dia ;;
  }

  measure: sum_interes_devengado_dia {
    description: "Interés devengado COBIS, en moneda local"
    type: sum
    sql: ${TABLE}.interes_devengado_dia ;;
  }

  dimension: nir {
    hidden: yes
    type: number
    sql: ${TABLE}.nir ;;
  }

  dimension: oficial_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_cuenta_key ;;
  }

  dimension: plazo {
    type: number
    sql: ${TABLE}.plazo ;;
  }

  dimension: producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_key ;;
  }

  dimension: renta_amortizacion {
    hidden: yes
    type: number
    sql: ${TABLE}.renta_amortizacion ;;
  }

  dimension: residencia_key {
    hidden: yes
    type: number
    sql: ${TABLE}.residencia_key ;;
  }

  dimension: saldo_dia {
    type: number
    sql: ${TABLE}.saldo_dia ;;
  }

  measure: saldo_dia_mo {
    description: "Saldo del día seleccionado en moneda de origen. Para PF sólo contempla Capital a excepción del estado INMOVILIZADO (Capital + Intereses)"
    label: "Saldo Dia Moneda de Origen"
    hidden: no
    type: sum
    sql: ${TABLE}.saldo_dia ;;
  }

  dimension: saldo_dia_pesificado {
    type: number
    sql: ${saldo_dia} * ${cotizacion};;
  }

  measure: metrica_percentil_25 {
    type: percentile
    percentile: 25
    sql: {% if parametro_comparacion._parameter_value == "ajuste_devengado_dia" %}${TABLE}.ajuste_devengado_dia{% elsif parametro_comparacion._parameter_value == "interes_devengado_dia" %}${TABLE}.interes_devengado_dia{% elsif parametro_comparacion._parameter_value == "saldo_dia_mo" %}${TABLE}.saldo_dia{% elsif parametro_comparacion._parameter_value == "saldo_dia_pes" %}${TABLE}.saldo_dia * ${TABLE}.cotizacion{% elsif parametro_comparacion._parameter_value == "saldo_promedio_mes" %}${TABLE}.saldo_promedio_mes{% elsif parametro_comparacion._parameter_value == "saldo_promedio_mes_pes" %}${TABLE}.saldo_promedio_mes * ${TABLE}.cotizacion{% else %}${TABLE}.saldo_dia * ${TABLE}.cotizacion{% endif %} ;;
  }

  measure: metrica_percentil_75 {
    type: percentile
    percentile: 75
    sql: {% if parametro_comparacion._parameter_value == "ajuste_devengado_dia" %}${TABLE}.ajuste_devengado_dia{% elsif parametro_comparacion._parameter_value == "interes_devengado_dia" %}${TABLE}.interes_devengado_dia{% elsif parametro_comparacion._parameter_value == "saldo_dia_mo" %}${TABLE}.saldo_dia{% elsif parametro_comparacion._parameter_value == "saldo_dia_pes" %}${TABLE}.saldo_dia * ${TABLE}.cotizacion{% elsif parametro_comparacion._parameter_value == "saldo_promedio_mes" %}${TABLE}.saldo_promedio_mes{% elsif parametro_comparacion._parameter_value == "saldo_promedio_mes_pes" %}${TABLE}.saldo_promedio_mes * ${TABLE}.cotizacion{% else %}${TABLE}.saldo_dia * ${TABLE}.cotizacion{% endif %} ;;
  }

  measure: metrica_percentil_50 {
    type: percentile
    percentile: 50
    sql: {% if parametro_comparacion._parameter_value == "ajuste_devengado_dia" %}${TABLE}.ajuste_devengado_dia{% elsif parametro_comparacion._parameter_value == "interes_devengado_dia" %}${TABLE}.interes_devengado_dia{% elsif parametro_comparacion._parameter_value == "saldo_dia_mo" %}${TABLE}.saldo_dia{% elsif parametro_comparacion._parameter_value == "saldo_dia_pes" %}${TABLE}.saldo_dia * ${TABLE}.cotizacion{% elsif parametro_comparacion._parameter_value == "saldo_promedio_mes" %}${TABLE}.saldo_promedio_mes{% elsif parametro_comparacion._parameter_value == "saldo_promedio_mes_pes" %}${TABLE}.saldo_promedio_mes * ${TABLE}.cotizacion{% else %}${TABLE}.saldo_dia * ${TABLE}.cotizacion{% endif %} ;;
  }

  measure: metrica_mediana {
    type: median
    sql: {% if parametro_comparacion._parameter_value == "ajuste_devengado_dia" %}${TABLE}.ajuste_devengado_dia{% elsif parametro_comparacion._parameter_value == "interes_devengado_dia" %}${TABLE}.interes_devengado_dia{% elsif parametro_comparacion._parameter_value == "saldo_dia_mo" %}${TABLE}.saldo_dia{% elsif parametro_comparacion._parameter_value == "saldo_dia_pes" %}${TABLE}.saldo_dia * ${TABLE}.cotizacion{% elsif parametro_comparacion._parameter_value == "saldo_promedio_mes" %}${TABLE}.saldo_promedio_mes{% elsif parametro_comparacion._parameter_value == "saldo_promedio_mes_pes" %}${TABLE}.saldo_promedio_mes * ${TABLE}.cotizacion{% else %}${TABLE}.saldo_dia * ${TABLE}.cotizacion{% endif %} ;;
  }

  measure: sum_saldo_dia_pesificado {
    type: sum
    sql: ${saldo_dia} * ${cotizacion};;
  }

  dimension: saldo_prom_contable_fin_mes {
    hidden: yes
    type: number
    sql: ${TABLE}.saldo_prom_contable_fin_mes ;;
  }

  dimension: saldo_promedio_mes {
    description: "Saldo prospectivo (criterio cobis, en moneda de origen)"
    type: number
    sql: ${TABLE}.saldo_promedio_mes ;;
  }

  measure: sum_saldo_promedio_mes {
    label: "Saldo Promedio Mes Moneda de Origen"
    description: "Saldo prospectivo (criterio cobis, en moneda de origen)"
    type: sum
    sql: ${TABLE}.saldo_promedio_mes ;;
  }

  dimension: saldo_promedio_mes_pesificado {
    type: number
    sql: ${TABLE}.saldo_promedio_mes * ${TABLE}.cotizacion;;
  }

  measure: sum_saldo_promedio_mes_pesificado {
    type: sum
    sql: ${TABLE}.saldo_promedio_mes * ${TABLE}.cotizacion;;
  }

  dimension: sector_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sector_key ;;
  }

  dimension: situacion_deudor_banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.situacion_deudor_banco_key ;;
  }

  dimension: situacion_deudor_bcra_key {
    hidden: yes
    type: number
    sql: ${TABLE}.situacion_deudor_bcra_key ;;
  }

  dimension: sucursal_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: tasa {
    type: number
    sql: ${TABLE}.tasa ;;
  }

  dimension: tipo_cartera_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_cartera_key ;;
  }

  dimension: tipo_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_cuenta_key ;;
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

  filter: fecha_1 {
    view_label: "Comparación Periodos (Customizables)"
    group_label: "Fechas de comparación"
    description: "Seleccionar día hábil"
    label: "Fecha 1"
    type: date
    #convert_tz: no
  }

  filter: fecha_2 {
    view_label: "Comparación Periodos (Customizables)"
    group_label: "Fechas de comparación"
    description: "Seleccionar día hábil"
    label: "Fecha 2"
    type: date
    #convert_tz: no
  }

  filter: fecha_3 {
    view_label: "Comparación Periodos (Customizables)"
    group_label: "Fechas de comparación"
    description: "Seleccionar día hábil"
    label: "Fecha 3"
    type: date
    #convert_tz: no
  }

  filter: fecha_4 {
    view_label: "Comparación Periodos (Customizables)"
    group_label: "Fechas de comparación"
    description: "Seleccionar día hábil"
    label: "Fecha 4"
    type: date
    #convert_tz: no
  }

  parameter: parametro_comparacion {
    view_label: "Comparación Periodos (Customizables)"
    label: "Métrica a Comparar"
    type: unquoted
    allowed_value: {
      label: "Ajuste Devengado Día"
      value: "ajuste_devengado_dia"
    }
    allowed_value: {
      label: "Interés Devengado Día"
      value: "interes_devengado_dia"
    }
    allowed_value: {
      label: "Saldo Dia Moneda de Origen"
      value: "saldo_dia_mo"
    }
    allowed_value: {
      label: "Saldo Día Pesificado"
      value: "saldo_dia_pes"
    }
    allowed_value: {
      label: "Saldo Promedio Mes"
      value: "saldo_promedio_mes"
    }
    allowed_value: {
      label: "Saldo Promedio Mes Pesificado"
      value: "saldo_promedio_mes_pes"
    }
  }

  measure: saldo_dia_comparacion_1 {
    view_label: "Comparación Periodos (Customizables)"
    label: "Métrica Seleccionada (Fecha 1)"
    group_label: "Saldo Dia Comparación"
    type: sum
    sql: case when {% condition fecha_1 %} TIMESTAMP(${lkp_fechas.fecha_date}) {% endcondition %} then {% if parametro_comparacion._parameter_value == "ajuste_devengado_dia" %}${TABLE}.ajuste_devengado_dia{% elsif parametro_comparacion._parameter_value == "interes_devengado_dia" %}${TABLE}.interes_devengado_dia{% elsif parametro_comparacion._parameter_value == "saldo_dia_mo" %}${TABLE}.saldo_dia{% elsif parametro_comparacion._parameter_value == "saldo_dia_pes" %} ${TABLE}.saldo_dia * ${TABLE}.cotizacion{% elsif parametro_comparacion._parameter_value == "saldo_promedio_mes" %}${TABLE}.saldo_promedio_mes{% elsif parametro_comparacion._parameter_value == "saldo_promedio_mes_pes" %}${TABLE}.saldo_promedio_mes * ${TABLE}.cotizacion{% else %}${TABLE}.saldo_dia{% endif %} end ;;
  }

  measure: saldo_dia_comparacion_2 {
    view_label: "Comparación Periodos (Customizables)"
    label: "Métrica Seleccionada (Fecha 2)"
    group_label: "Saldo Dia Comparación"
    type: sum
    sql: case when {% condition fecha_2 %} TIMESTAMP(${lkp_fechas.fecha_date}) {% endcondition %} then {% if parametro_comparacion._parameter_value == "ajuste_devengado_dia" %}${TABLE}.ajuste_devengado_dia{% elsif parametro_comparacion._parameter_value == "interes_devengado_dia" %}${TABLE}.interes_devengado_dia{% elsif parametro_comparacion._parameter_value == "saldo_dia_mo" %}${TABLE}.saldo_dia{% elsif parametro_comparacion._parameter_value == "saldo_dia_pes" %} ${TABLE}.saldo_dia * ${TABLE}.cotizacion{% elsif parametro_comparacion._parameter_value == "saldo_promedio_mes" %}${TABLE}.saldo_promedio_mes{% elsif parametro_comparacion._parameter_value == "saldo_promedio_mes_pes" %}${TABLE}.saldo_promedio_mes * ${TABLE}.cotizacion{% else %}${TABLE}.saldo_dia{% endif %} end ;;
  }

  measure: saldo_dia_comparacion_3 {
    view_label: "Comparación Periodos (Customizables)"
    label: "Métrica Seleccionada (Fecha 3)"
    group_label: "Saldo Dia Comparación"
    type: sum
    sql: case when {% condition fecha_3 %} TIMESTAMP(${lkp_fechas.fecha_date}) {% endcondition %} then {% if parametro_comparacion._parameter_value == "ajuste_devengado_dia" %}${TABLE}.ajuste_devengado_dia{% elsif parametro_comparacion._parameter_value == "interes_devengado_dia" %}${TABLE}.interes_devengado_dia{% elsif parametro_comparacion._parameter_value == "saldo_dia_mo" %}${TABLE}.saldo_dia{% elsif parametro_comparacion._parameter_value == "saldo_dia_pes" %} ${TABLE}.saldo_dia * ${TABLE}.cotizacion{% elsif parametro_comparacion._parameter_value == "saldo_promedio_mes" %}${TABLE}.saldo_promedio_mes{% elsif parametro_comparacion._parameter_value == "saldo_promedio_mes_pes" %}${TABLE}.saldo_promedio_mes * ${TABLE}.cotizacion{% else %}${TABLE}.saldo_dia{% endif %} end ;;
  }

  measure: saldo_dia_comparacion_4 {
    view_label: "Comparación Periodos (Customizables)"
    label: "Métrica Seleccionada (Fecha 4)"
    group_label: "Saldo Dia Comparación"
    type: sum
    sql: case when {% condition fecha_4 %} TIMESTAMP(${lkp_fechas.fecha_date}) {% endcondition %} then {% if parametro_comparacion._parameter_value == "ajuste_devengado_dia" %}${TABLE}.ajuste_devengado_dia{% elsif parametro_comparacion._parameter_value == "interes_devengado_dia" %}${TABLE}.interes_devengado_dia{% elsif parametro_comparacion._parameter_value == "saldo_dia_mo" %}${TABLE}.saldo_dia{% elsif parametro_comparacion._parameter_value == "saldo_dia_pes" %} ${TABLE}.saldo_dia * ${TABLE}.cotizacion{% elsif parametro_comparacion._parameter_value == "saldo_promedio_mes" %}${TABLE}.saldo_promedio_mes{% elsif parametro_comparacion._parameter_value == "saldo_promedio_mes_pes" %}${TABLE}.saldo_promedio_mes * ${TABLE}.cotizacion{% else %}${TABLE}.saldo_dia{% endif %} end ;;
  }
}
