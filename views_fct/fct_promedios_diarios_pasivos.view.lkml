view: fct_promedios_diarios_pasivos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_promedios_diarios_pasivos`
    ;;
    view_label: " Fct Promedios Diarios Pasivos"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_promedios_diarios_pasivos s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

  dimension: actividad_key {
    hidden: yes
    type: number
    sql: ${TABLE}.Actividad_Key ;;
  }

  dimension: banca_key {
    hidden: yes
    type: number
    sql: ${TABLE}.Banca_Key ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.Banco_Key ;;
  }

  dimension: centralizado {
    type: string
    sql: ${TABLE}.Centralizado ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente_Key ;;
  }

  dimension: cotizacion {
    type: number
    sql: ${TABLE}.Cotizacion ;;
  }

  dimension: cuenta_key {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.Cuenta_Key ;;
  }

  dimension: especie_key {
    hidden: yes
    type: number
    sql: ${TABLE}.Especie_Key ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.Fecha_Key ;;
  }

  dimension: oficial_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.Oficial_Cuenta_Key ;;
  }

  dimension: producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.Producto_Key ;;
  }

  measure: promedio_anterior_mo {
    type: sum
    sql: ${TABLE}.Promedio_Anterior_MO ;;
  }

  measure: promedio_diario_mo {
    type: sum
    sql: ${TABLE}.Promedio_Diario_MO ;;
  }

  measure: promedio_diario_pesos {
    type: sum
    sql: ${TABLE}.Promedio_Diario_Pesos ;;
  }

  dimension: residencia_key {
    hidden: yes
    type: number
    sql: ${TABLE}.Residencia_Key ;;
  }

  measure: saldo_dia {
    type: sum
    sql: ${TABLE}.Saldo_Dia ;;
  }

  measure: saldo_promedio_mes {
    type: sum
    sql: ${TABLE}.Saldo_Promedio_Mes ;;
  }

  dimension: sector_key {
    hidden: yes
    type: number
    sql: ${TABLE}.Sector_Key ;;
  }

  dimension: sucursal_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.Sucursal_Cuenta_Key ;;
  }

  dimension: tipo_persona_key {
    hidden: yes
    type: number
    sql: ${TABLE}.Tipo_Persona_Key ;;
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
      label: "Promedio Anterior Mo"
      value: "promedio_anterior_mo"
    }
    allowed_value: {
      label: "Promedio Diario Mo"
      value: "promedio_diario_mo"
    }
    allowed_value: {
      label: "Promedio Diario Pesos"
      value: "promedio_diario_pesos"
    }
    allowed_value: {
      label: "Saldo Dia"
      value: "saldo_dia"
    }
    allowed_value: {
      label: "Saldo Promedio Mes"
      value: "saldo_promedio_mes"
    }

  }

  measure: saldo_dia_comparacion_1 {
    view_label: "Comparación Periodos (Customizables)"
    label: "Métrica Seleccionada (Fecha 1)"
    group_label: "Saldo Dia Comparación"
    type: sum
    sql: case when {% condition fecha_1 %} TIMESTAMP(${lkp_fechas.fecha_date}) {% endcondition %} then {% if parametro_comparacion._parameter_value == "promedio_anterior_mo" %}${TABLE}.Promedio_Anterior_Mo{% elsif parametro_comparacion._parameter_value == "promedio_diario_mo" %}${TABLE}.Promedio_Diario_Mo{% elsif parametro_comparacion._parameter_value == "promedio_diario_pesos" %}${TABLE}.Promedio_Diario_Pesos{% elsif parametro_comparacion._parameter_value == "saldo_dia" %} ${TABLE}.Saldo_Dia{% elsif parametro_comparacion._parameter_value == "saldo_promedio_mes" %}${TABLE}.Saldo_Promedio_Mes{% endif %} end ;;
  }

  measure: saldo_dia_comparacion_2 {
    view_label: "Comparación Periodos (Customizables)"
    label: "Métrica Seleccionada (Fecha 2)"
    group_label: "Saldo Dia Comparación"
    type: sum
    sql: case when {% condition fecha_2 %} TIMESTAMP(${lkp_fechas.fecha_date}) {% endcondition %} then {% if parametro_comparacion._parameter_value == "promedio_anterior_mo" %}${TABLE}.Promedio_Anterior_Mo{% elsif parametro_comparacion._parameter_value == "promedio_diario_mo" %}${TABLE}.Promedio_Diario_Mo{% elsif parametro_comparacion._parameter_value == "promedio_diario_pesos" %}${TABLE}.Promedio_Diario_Pesos{% elsif parametro_comparacion._parameter_value == "saldo_dia" %} ${TABLE}.Saldo_Dia{% elsif parametro_comparacion._parameter_value == "saldo_promedio_mes" %}${TABLE}.Saldo_Promedio_Mes{% endif %} end ;;
  }

  measure: saldo_dia_comparacion_3 {
    view_label: "Comparación Periodos (Customizables)"
    label: "Métrica Seleccionada (Fecha 3)"
    group_label: "Saldo Dia Comparación"
    type: sum
    sql: case when {% condition fecha_3 %} TIMESTAMP(${lkp_fechas.fecha_date}) {% endcondition %} then {% if parametro_comparacion._parameter_value == "promedio_anterior_mo" %}${TABLE}.Promedio_Anterior_Mo{% elsif parametro_comparacion._parameter_value == "promedio_diario_mo" %}${TABLE}.Promedio_Diario_Mo{% elsif parametro_comparacion._parameter_value == "promedio_diario_pesos" %}${TABLE}.Promedio_Diario_Pesos{% elsif parametro_comparacion._parameter_value == "saldo_dia" %} ${TABLE}.Saldo_Dia{% elsif parametro_comparacion._parameter_value == "saldo_promedio_mes" %}${TABLE}.Saldo_Promedio_Mes{% endif %} end ;;
  }

  measure: saldo_dia_comparacion_4 {
    view_label: "Comparación Periodos (Customizables)"
    label: "Métrica Seleccionada (Fecha 4)"
    group_label: "Saldo Dia Comparación"
    type: sum
    sql: case when {% condition fecha_4 %} TIMESTAMP(${lkp_fechas.fecha_date}) {% endcondition %} then {% if parametro_comparacion._parameter_value == "promedio_anterior_mo" %}${TABLE}.Promedio_Anterior_Mo{% elsif parametro_comparacion._parameter_value == "promedio_diario_mo" %}${TABLE}.Promedio_Diario_Mo{% elsif parametro_comparacion._parameter_value == "promedio_diario_pesos" %}${TABLE}.Promedio_Diario_Pesos{% elsif parametro_comparacion._parameter_value == "saldo_dia" %} ${TABLE}.Saldo_Dia{% elsif parametro_comparacion._parameter_value == "saldo_promedio_mes" %}${TABLE}.Saldo_Promedio_Mes{% endif %} end ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
