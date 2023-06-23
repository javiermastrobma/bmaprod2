view: fct_bienes_uso {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_bienes_uso`
    ;;
    view_label: " Fct Bienes Uso"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_bienes_uso s
      LEFT JOIN lkp_fechas f ON s.fecha_transaccion_key = f.fecha_key) ;;
  }
  dimension: amortizacion_acumulada {
    type: number
    sql: ${TABLE}.amortizacion_acumulada ;;
  }

  dimension: amortizacion_acumulada_reexpresion {
    type: number
    sql: ${TABLE}.amortizacion_acumulada_reexpresion ;;
  }

  dimension: amortizacion_mes {
    type: number
    sql: ${TABLE}.amortizacion_mes ;;
  }

  dimension: amortizacion_mes_reexpresion {
    type: number
    sql: ${TABLE}.amortizacion_mes_reexpresion ;;
  }

  dimension: amortizacion_normal_a_contabilizar {
    type: number
    sql: ${TABLE}.amortizacion_normal_a_contabilizar ;;
  }

  dimension: amortizacion_normal_contable {
    type: number
    sql: ${TABLE}.amortizacion_normal_contable ;;
  }

  dimension: amortizacion_normal_planificada {
    type: number
    sql: ${TABLE}.amortizacion_normal_planificada ;;
  }

  dimension: area_destino_key {
    hidden: yes
    type: number
    sql: ${TABLE}.area_destino_key ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: bien_uso_key {
    hidden: yes
    type: number
    sql: ${TABLE}.bien_uso_key ;;
  }

  dimension: cantidad {
    type: number
    sql: ${TABLE}.cantidad ;;
  }

  dimension: cantidad_alta {
    type: number
    sql: ${TABLE}.cantidad_alta ;;
  }

  dimension: cantidad_baja {
    type: number
    sql: ${TABLE}.cantidad_baja ;;
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

  dimension: plan_cuentas_activo_axi_key {
    hidden: yes
    type: number
    sql: ${TABLE}.plan_cuentas_activo_axi_key ;;
  }

  dimension: plan_cuentas_activo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.plan_cuentas_activo_key ;;
  }

  dimension: plan_cuentas_actualizacion_activo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.plan_cuentas_actualizacion_activo_key ;;
  }

  dimension: plan_cuentas_amort_acumu_reexpresion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.plan_cuentas_amort_acumu_reexpresion_key ;;
  }

  dimension: plan_cuentas_amortizacion_acumulada_axi_key {
    hidden: yes
    type: number
    sql: ${TABLE}.plan_cuentas_amortizacion_acumulada_axi_key ;;
  }

  dimension: plan_cuentas_amortizacion_acumulada_key {
    hidden: yes
    type: number
    sql: ${TABLE}.plan_cuentas_amortizacion_acumulada_key ;;
  }

  dimension: plan_cuentas_amortizacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.plan_cuentas_amortizacion_key ;;
  }

  dimension: plan_cuentas_amortizacion_reexpresion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.plan_cuentas_amortizacion_reexpresion_key ;;
  }

  dimension: plan_cuentas_gastos_amortizacion_axi_key {
    hidden: yes
    type: number
    sql: ${TABLE}.plan_cuentas_gastos_amortizacion_axi_key ;;
  }

  dimension: revalorizacion_capital_actualizado {
    type: number
    sql: ${TABLE}.revalorizacion_capital_actualizado ;;
  }

  dimension: revalorizacion_contable {
    type: number
    sql: ${TABLE}.revalorizacion_contable ;;
  }

  dimension: revalorizacion_planificada {
    type: number
    sql: ${TABLE}.revalorizacion_planificada ;;
  }

  dimension: valor_origen {
    type: number
    sql: ${TABLE}.valor_origen ;;
  }

  dimension: valor_residual {
    type: number
    sql: ${TABLE}.valor_residual ;;
  }

  dimension: variacion_valor_origen {
    type: number
    sql: ${TABLE}.variacion_valor_origen ;;
  }

  dimension: vida_transcurrida {
    type: number
    sql: ${TABLE}.vida_transcurrida ;;
  }

  dimension: vida_util {
    type: number
    sql: ${TABLE}.vida_util ;;
  }

  dimension: vida_util_remanente {
    type: number
    sql: ${TABLE}.vida_util_remanente ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
