view: fct_situacion_diaria_convenios_cuenta_bonificaciones {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_situacion_diaria_convenios_cuenta_bonificaciones`
    ;;
    view_label: " Fct Situación Diaria Convenios Cuenta Bonificaciones"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_situacion_diaria_convenios_cuenta_bonificaciones s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: categoria_convenio_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.categoria_convenio_cuenta_key ;;
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

  dimension: costo_convenio {
    type: number
    sql: ${TABLE}.costo_convenio ;;
  }

  dimension: cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }

  dimension: estado_convenio_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_convenio_cuenta_key ;;
  }

  dimension: estado_paquete_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_paquete_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: paquete_key {
    hidden: yes
    type: number
    sql: ${TABLE}.paquete_key ;;
  }

  dimension: porcentaje_empresa {
    type: number
    sql: ${TABLE}.porcentaje_empresa ;;
  }

  dimension: producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_key ;;
  }

  dimension: rubro_bonificacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.rubro_bonificacion_key ;;
  }

  dimension: sucursal_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: usuario_alta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.usuario_alta_key ;;
  }

  dimension: valor_bonificacion {
    type: number
    sql: ${TABLE}.valor_bonificacion ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
