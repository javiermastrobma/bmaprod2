view: fct_cartera_activa {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_cartera_activa`
    ;;
    view_label: " Fct Cartera Activa"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_cartera_activa s
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

  dimension: ajcap_cien {
    type: number
    sql: ${TABLE}.ajcap_cien ;;
  }

  dimension: ajcap_cien_cg {
    type: number
    sql: ${TABLE}.ajcap_cien_cg ;;
  }

  dimension: ajcap_cien_sg {
    type: number
    sql: ${TABLE}.ajcap_cien_sg ;;
  }

  dimension: ajuste_av_gar_a {
    type: number
    sql: ${TABLE}.ajuste_av_gar_a ;;
  }

  dimension: ajuste_av_gar_b {
    type: number
    sql: ${TABLE}.ajuste_av_gar_b ;;
  }

  dimension: ajuste_av_sin_gar {
    type: number
    sql: ${TABLE}.ajuste_av_sin_gar ;;
  }

  dimension: ajuste_v_gar_a {
    type: number
    sql: ${TABLE}.ajuste_v_gar_a ;;
  }

  dimension: ajuste_v_gar_b {
    type: number
    sql: ${TABLE}.ajuste_v_gar_b ;;
  }

  dimension: ajuste_v_sin_gar {
    type: number
    sql: ${TABLE}.ajuste_v_sin_gar ;;
  }

  dimension: archivoid {
    type: number
    value_format_name: id
    sql: ${TABLE}.archivoid ;;
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

  dimension: calif_act {
    type: string
    sql: ${TABLE}.calif_act ;;
  }

  dimension: calif_ant {
    type: string
    sql: ${TABLE}.calif_ant ;;
  }

  dimension: cantidad_cuentas {
    type: number
    sql: ${TABLE}.cantidad_cuentas ;;
  }

  dimension: capital_av_gar_a {
    type: number
    sql: ${TABLE}.capital_av_gar_a ;;
  }

  dimension: capital_av_gar_b {
    type: number
    sql: ${TABLE}.capital_av_gar_b ;;
  }

  dimension: capital_av_sin_gar {
    type: number
    sql: ${TABLE}.capital_av_sin_gar ;;
  }

  dimension: capital_v_gar_a {
    type: number
    sql: ${TABLE}.capital_v_gar_a ;;
  }

  dimension: capital_v_gar_b {
    type: number
    sql: ${TABLE}.capital_v_gar_b ;;
  }

  dimension: capital_v_sin_gar {
    type: number
    sql: ${TABLE}.capital_v_sin_gar ;;
  }

  dimension: categoria_cuenta_key {
    type: number
    sql: ${TABLE}.categoria_cuenta_key ;;
  }

  dimension: centralizado {
    type: string
    sql: ${TABLE}.centralizado ;;
  }

  dimension: cien_cg {
    type: number
    sql: ${TABLE}.cien_cg ;;
  }

  dimension: cien_sg {
    type: number
    sql: ${TABLE}.cien_sg ;;
  }

  dimension: clas_autom {
    type: string
    sql: ${TABLE}.clas_autom ;;
  }

  dimension: clas_final {
    type: string
    sql: ${TABLE}.clas_final ;;
  }

  dimension: clasif_6 {
    type: string
    sql: ${TABLE}.clasif_6 ;;
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

  dimension: codigo_cesion {
    type: string
    sql: ${TABLE}.codigo_cesion ;;
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

  dimension: dias_atraso_bcra {
    type: number
    sql: ${TABLE}.dias_atraso_bcra ;;
  }

  dimension: dias_mora_key {
    hidden: yes
    type: number
    sql: ${TABLE}.dias_mora_key ;;
  }

  dimension: dias_sobregiro {
    type: number
    sql: ${TABLE}.dias_sobregiro ;;
  }

  dimension: dif_pv_24 {
    type: number
    sql: ${TABLE}.dif_pv_24 ;;
  }

  dimension: dif_pv_60 {
    type: number
    sql: ${TABLE}.dif_pv_60 ;;
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

  dimension: estado_deuda_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_deuda_key ;;
  }

  dimension_group: fech_vto_div {
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
    sql: ${TABLE}.fech_vto_div ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
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

  dimension: int_cien {
    type: number
    sql: ${TABLE}.int_cien ;;
  }

  dimension: intereses_av_gar_a {
    type: number
    sql: ${TABLE}.intereses_av_gar_a ;;
  }

  dimension: intereses_av_gar_b {
    type: number
    sql: ${TABLE}.intereses_av_gar_b ;;
  }

  dimension: intereses_av_sin_gar {
    type: number
    sql: ${TABLE}.intereses_av_sin_gar ;;
  }

  dimension: intereses_v_gar_a {
    type: number
    sql: ${TABLE}.intereses_v_gar_a ;;
  }

  dimension: intereses_v_gar_b {
    type: number
    sql: ${TABLE}.intereses_v_gar_b ;;
  }

  dimension: intereses_v_sin_gar {
    type: number
    sql: ${TABLE}.intereses_v_sin_gar ;;
  }

  dimension: mercado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.mercado_key ;;
  }

  dimension: nueva_asist {
    type: string
    sql: ${TABLE}.nueva_asist ;;
  }

  dimension: num_banco {
    type: string
    sql: ${TABLE}.num_banco ;;
  }

  dimension: ocif_av_gar_a {
    type: number
    sql: ${TABLE}.ocif_av_gar_a ;;
  }

  dimension: ocif_av_gar_b {
    type: number
    sql: ${TABLE}.ocif_av_gar_b ;;
  }

  dimension: ocif_av_sin_gar {
    type: number
    sql: ${TABLE}.ocif_av_sin_gar ;;
  }

  dimension: ocif_v_gar_b {
    type: number
    sql: ${TABLE}.ocif_v_gar_b ;;
  }

  dimension: ocif_v_sin_gar {
    type: number
    sql: ${TABLE}.ocif_v_sin_gar ;;
  }

  dimension: oficial_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_cuenta_key ;;
  }

  dimension: operacion {
    type: number
    sql: ${TABLE}.operacion ;;
  }

  dimension: prev_ajcap_cien {
    type: number
    sql: ${TABLE}.prev_ajcap_cien ;;
  }

  dimension: prev_ajuste_av_gar_a {
    type: number
    sql: ${TABLE}.prev_ajuste_av_gar_a ;;
  }

  dimension: prev_ajuste_av_gar_b {
    hidden: yes
    type: number
    sql: ${TABLE}.prev_ajuste_av_gar_b ;;
  }

  dimension: prev_ajuste_av_sin_gar {
    type: number
    sql: ${TABLE}.prev_ajuste_av_sin_gar ;;
  }

  dimension: prev_ajuste_v_gar_a {
    hidden: yes
    type: number
    sql: ${TABLE}.prev_ajuste_v_gar_a ;;
  }

  dimension: prev_ajuste_v_gar_b {
    type: number
    sql: ${TABLE}.prev_ajuste_v_gar_b ;;
  }

  dimension: prev_ajuste_v_sin_gar {
    type: number
    sql: ${TABLE}.prev_ajuste_v_sin_gar ;;
  }

  dimension: prev_ant {
    type: number
    sql: ${TABLE}.prev_ant ;;
  }

  dimension: prev_capital_av_gar_a {
    type: number
    sql: ${TABLE}.prev_capital_av_gar_a ;;
  }

  dimension: prev_capital_av_gar_b {
    type: number
    sql: ${TABLE}.prev_capital_av_gar_b ;;
  }

  dimension: prev_capital_av_sin_gar {
    type: number
    sql: ${TABLE}.prev_capital_av_sin_gar ;;
  }

  dimension: prev_capital_v_gar_a {
    type: number
    sql: ${TABLE}.prev_capital_v_gar_a ;;
  }

  dimension: prev_capital_v_gar_b {
    type: number
    sql: ${TABLE}.prev_capital_v_gar_b ;;
  }

  dimension: prev_capital_v_sin_gar {
    type: number
    sql: ${TABLE}.prev_capital_v_sin_gar ;;
  }

  dimension: prev_int_cien {
    type: number
    sql: ${TABLE}.prev_int_cien ;;
  }

  dimension: prev_intereses_av_gar_a {
    type: number
    sql: ${TABLE}.prev_intereses_av_gar_a ;;
  }

  dimension: prev_intereses_av_gar_b {
    type: number
    sql: ${TABLE}.prev_intereses_av_gar_b ;;
  }

  dimension: prev_intereses_av_sin_gar {
    type: number
    sql: ${TABLE}.prev_intereses_av_sin_gar ;;
  }

  dimension: prev_intereses_v_gar_a {
    type: number
    sql: ${TABLE}.prev_intereses_v_gar_a ;;
  }

  dimension: prev_intereses_v_gar_b {
    type: number
    sql: ${TABLE}.prev_intereses_v_gar_b ;;
  }

  dimension: prev_intereses_v_sin_gar {
    type: number
    sql: ${TABLE}.prev_intereses_v_sin_gar ;;
  }

  dimension: prev_ocif_av_gar_a {
    type: number
    sql: ${TABLE}.prev_ocif_av_gar_a ;;
  }

  dimension: prev_ocif_av_gar_b {
    type: number
    sql: ${TABLE}.prev_ocif_av_gar_b ;;
  }

  dimension: prev_ocif_av_sin_gar {
    type: number
    sql: ${TABLE}.prev_ocif_av_sin_gar ;;
  }

  dimension: prev_ocif_v_gar_b {
    type: number
    sql: ${TABLE}.prev_ocif_v_gar_b ;;
  }

  dimension: prev_ocif_v_sin_gar {
    type: number
    sql: ${TABLE}.prev_ocif_v_sin_gar ;;
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

  measure: saldo_deuda {
    type: sum
    sql: ${TABLE}.saldo_deuda ;;
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

  dimension: tramite {
    type: string
    sql: ${TABLE}.tramite ;;
  }

  dimension: unidad_cobro_key {
    hidden: yes
    type: number
    sql: ${TABLE}.unidad_cobro_key ;;
  }

  dimension: unidad_recupero_key {
    hidden: yes
    type: number
    sql: ${TABLE}.unidad_recupero_key ;;
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
      label: "Saldo Deuda"
      value: "saldo_deuda"
    }
  }

  measure: saldo_dia_comparacion_1 {
    view_label: "Comparación Periodos (Customizables)"
    label: "Métrica Seleccionada (Fecha 1)"
    group_label: "Saldo Dia Comparación"
    type: sum
    sql: case when {% condition fecha_1 %} TIMESTAMP(${lkp_fechas.fecha_date}) {% endcondition %}
    then {% if parametro_comparacion._parameter_value == "saldo_deuda" %}${TABLE}.saldo_deuda
    {% endif %}
    end ;;
  }
  measure: saldo_dia_comparacion_2 {
    view_label: "Comparación Periodos (Customizables)"
    label: "Métrica Seleccionada (Fecha 1)"
    group_label: "Saldo Dia Comparación"
    type: sum
    sql: case when {% condition fecha_1 %} TIMESTAMP(${lkp_fechas.fecha_date}) {% endcondition %}
          then {% if parametro_comparacion._parameter_value == "saldo_deuda" %}${TABLE}.saldo_deuda
          {% endif %}
          end ;;
  }
  measure: saldo_dia_comparacion_3 {
    view_label: "Comparación Periodos (Customizables)"
    label: "Métrica Seleccionada (Fecha 1)"
    group_label: "Saldo Dia Comparación"
    type: sum
    sql: case when {% condition fecha_1 %} TIMESTAMP(${lkp_fechas.fecha_date}) {% endcondition %}
          then {% if parametro_comparacion._parameter_value == "saldo_deuda" %}${TABLE}.saldo_deuda
          {% endif %}
          end ;;
  }
  measure: saldo_dia_comparacion_4 {
    view_label: "Comparación Periodos (Customizables)"
    label: "Métrica Seleccionada (Fecha 1)"
    group_label: "Saldo Dia Comparación"
    type: sum
    sql: case when {% condition fecha_1 %} TIMESTAMP(${lkp_fechas.fecha_date}) {% endcondition %}
          then {% if parametro_comparacion._parameter_value == "saldo_deuda" %}${TABLE}.saldo_deuda
          {% endif %}
          end ;;
  }



}
