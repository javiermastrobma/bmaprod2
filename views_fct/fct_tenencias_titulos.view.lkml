view: fct_tenencias_titulos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_tenencias_titulos`
    ;;
    view_label: " Fct Tenencias Títulos"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_tenencias_titulos s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }
  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
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

  dimension: cotizacion_titulo {
    type: number
    sql: ${TABLE}.cotizacion_titulo ;;
  }

  dimension: cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }

  dimension: especie_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_key ;;
  }

  dimension: especie_titulo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_titulo_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: nir {
    type: number
    sql: ${TABLE}.nir ;;
  }

  dimension: producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_key ;;
  }

  dimension: saldo_bloqueado_vn {
    type: number
    sql: ${TABLE}.saldo_bloqueado_vn ;;
  }

  dimension: saldo_bloqueado_vr {
    type: number
    sql: ${TABLE}.saldo_bloqueado_vr ;;
  }

  dimension: saldo_dia_pesos {
    type: number
    sql: ${TABLE}.saldo_dia_pesos ;;
  }

  dimension: saldo_disponible_vn {
    type: number
    sql: ${TABLE}.saldo_disponible_vn ;;
  }

  dimension: saldo_disponible_vr {
    type: number
    sql: ${TABLE}.saldo_disponible_vr ;;
  }

  dimension: saldo_garantia_vn {
    type: number
    sql: ${TABLE}.saldo_garantia_vn ;;
  }

  dimension: saldo_garantia_vr {
    type: number
    sql: ${TABLE}.saldo_garantia_vr ;;
  }

  dimension: saldo_negociable_vn {
    type: number
    sql: ${TABLE}.saldo_negociable_vn ;;
  }

  dimension: saldo_negociable_vr {
    type: number
    sql: ${TABLE}.saldo_negociable_vr ;;
  }

  dimension: saldo_promedio_pesos {
    type: number
    sql: ${TABLE}.saldo_promedio_pesos ;;
  }

  dimension: saldo_vn {
    type: number
    sql: ${TABLE}.saldo_vn ;;
  }

  dimension: saldo_vr {
    type: number
    sql: ${TABLE}.saldo_vr ;;
  }

  dimension: sucursal_captacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_captacion_key ;;
  }

  dimension: sucursal_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: tipo_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_cuenta_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
