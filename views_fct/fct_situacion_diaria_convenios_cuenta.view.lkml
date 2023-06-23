view: fct_situacion_diaria_convenios_cuenta {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_situacion_diaria_convenios_cuenta`
    ;;
    view_label: " Fct Situación Diaria Convenios Cuenta"

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

  dimension: convenio_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.convenio_cuenta_key ;;
  }

  dimension: convenio_key {
    hidden: yes
    type: number
    sql: ${TABLE}.convenio_key ;;
  }

  dimension: cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }

  dimension: estado_capita {
    type: string
    sql: ${TABLE}.estado_capita ;;
  }

  dimension: estado_convenio {
    type: string
    sql: ${TABLE}.estado_convenio ;;
  }

  dimension: estado_convenio_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_convenio_cuenta_key ;;
  }

  dimension: estado_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_cuenta_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_situacion_diaria_convenios_cuenta s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

  dimension: fecha_ultimo_estado_capita_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_ultimo_estado_capita_key ;;
  }

  dimension: fecha_ultimo_estado_cc_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_ultimo_estado_cc_key ;;
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

  dimension: sucursal_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
