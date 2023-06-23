view: fct_situaciones_personas {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_situaciones_personas`
    ;;
    view_label: " Fct Situaciones Personas"

  dimension: banca_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banca_key ;;
  }

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_situaciones_personas s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: canasta_productos_key {
    hidden: yes
    type: number
    sql: ${TABLE}.canasta_productos_key ;;
  }

  dimension: cantidad_cuentas_ca_cc {
    type: number
    sql: ${TABLE}.cantidad_cuentas_ca_cc ;;
  }

  dimension: cantidad_macroadelanto {
    type: number
    sql: ${TABLE}.cantidad_macroadelanto ;;
  }

  dimension: cantidad_macrocuentas {
    type: number
    sql: ${TABLE}.cantidad_macrocuentas ;;
  }

  dimension: cantidad_productos_activos {
    type: number
    sql: ${TABLE}.cantidad_productos_activos ;;
  }

  dimension: centralizado {
    type: string
    sql: ${TABLE}.centralizado ;;
  }

  dimension: clasificacion_especial_key {
    hidden: yes
    type: number
    sql: ${TABLE}.clasificacion_especial_key ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: limite_acuerdo {
    type: number
    sql: ${TABLE}.limite_acuerdo ;;
  }

  dimension: oficial_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_cuenta_key ;;
  }

  dimension: saldo_pasivas {
    type: number
    sql: ${TABLE}.saldo_pasivas ;;
  }

  dimension: saldo_promedio_ca {
    type: number
    sql: ${TABLE}.saldo_promedio_ca ;;
  }

  dimension: saldo_promedio_cc {
    type: number
    sql: ${TABLE}.saldo_promedio_cc ;;
  }

  dimension: saldo_promedio_ma {
    type: number
    sql: ${TABLE}.saldo_promedio_ma ;;
  }

  dimension: saldo_promedio_mc {
    type: number
    sql: ${TABLE}.saldo_promedio_mc ;;
  }

  dimension: saldo_promedio_pasivas {
    type: number
    sql: ${TABLE}.saldo_promedio_pasivas ;;
  }

  dimension: saldo_promedio_pf {
    type: number
    sql: ${TABLE}.saldo_promedio_pf ;;
  }

  dimension: situacion_deudor_bcra_key {
    type: number
    sql: ${TABLE}.situacion_deudor_bcra_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
