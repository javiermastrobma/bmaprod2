view: lkp_convenios_cuenta_bonificaciones {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_convenios_cuenta_bonificaciones`
    ;;
  view_label: "Datos CONVENIO CUENTA"

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
    group_label: "Convenios Cuenta Bonificaciones"
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

  dimension_group: fecha_alta {
    group_label: "Convenios Cuenta Bonificaciones"
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
    sql: ${TABLE}.fecha_alta ;;
  }

  dimension: paquete_key {
    hidden: yes
    type: number
    sql: ${TABLE}.paquete_key ;;
  }

  dimension: porcentaje_empresa {
    group_label: "Convenios Cuenta Bonificaciones"
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
    group_label: "Convenios Cuenta Bonificaciones"
    type: number
    sql: ${TABLE}.valor_bonificacion ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
