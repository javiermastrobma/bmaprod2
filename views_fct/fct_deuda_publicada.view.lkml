view: fct_deuda_publicada {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_deuda_publicada`
    ;;
  view_label: " Fct Deuda Publicada"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_deuda_publicada s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: cliente_convenio_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_convenio_key ;;
  }

  dimension: cliente_deudor_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_deudor_key ;;
  }

  dimension: convenio_key {
    hidden: yes
    type: number
    sql: ${TABLE}.convenio_key ;;
  }

  dimension: cuit_deudor {
    type: number
    sql: ${TABLE}.cuit_deudor ;;
  }

  dimension: especie_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_key ;;
  }

  dimension: estado_dppp_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_dppp_key ;;
  }

  dimension: fecha_emision_dppp_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_emision_dppp_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: fecha_vencimiento_importe_1_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_vencimiento_importe_1_key ;;
  }

  dimension: fecha_vencimiento_importe_2_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_vencimiento_importe_2_key ;;
  }

  dimension: fecha_vencimiento_importe_3_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_vencimiento_importe_3_key ;;
  }

  dimension_group: fecha_vigencia_dppp {
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
    sql: ${TABLE}.fecha_vigencia_dppp ;;
  }

  dimension: identificador_deuda {
    type: number
    sql: ${TABLE}.identificador_deuda ;;
  }

  dimension: importe_1 {
    type: number
    sql: ${TABLE}.importe_1 ;;
  }

  dimension: importe_2 {
    type: number
    sql: ${TABLE}.importe_2 ;;
  }

  dimension: importe_3 {
    type: number
    sql: ${TABLE}.importe_3 ;;
  }

  dimension: prospecto_deudor_key {
    hidden: yes
    type: number
    sql: ${TABLE}.prospecto_deudor_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
