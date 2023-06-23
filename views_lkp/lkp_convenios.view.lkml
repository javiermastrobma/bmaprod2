view: lkp_convenios {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_convenios`
    ;;

dimension: banco_key {
  hidden: yes
  type: number
  sql: ${TABLE}.banco_key ;;
}

dimension: calificacion {
  hidden: yes
  type: string
  sql: ${TABLE}.calificacion ;;
}

dimension: causal_caja_ahorro {
  hidden: yes
  type: string
  sql: ${TABLE}.causal_caja_ahorro ;;
}

dimension: causal_cuenta_corriente {
  hidden: yes
  type: number
  sql: ${TABLE}.causal_cuenta_corriente ;;
}

dimension: cliente_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cliente_key ;;
}

dimension: comportamiento_caja_ahorro {
  hidden: yes
  type: string
  sql: ${TABLE}.comportamiento_caja_ahorro ;;
}

dimension: comportamiento_cuenta_corriente {
  hidden: yes
  type: string
  sql: ${TABLE}.comportamiento_cuenta_corriente ;;
}

dimension: convenio {
  view_label: "Datos CONVENIO"
  type: string
  sql: ${TABLE}.convenio ;;
}

dimension: convenio_key {
  hidden: yes
  type: number
  sql: ${TABLE}.convenio_key ;;
}

dimension: coparticipable {
  hidden: yes
  type: string
  sql: ${TABLE}.coparticipable ;;
}

dimension: cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cuenta_key ;;
}

dimension: debita_comision {
  hidden: yes
  type: string
  sql: ${TABLE}.debita_comision ;;
}

dimension: debito_automatico {
  hidden: yes
  type: string
  sql: ${TABLE}.debito_automatico ;;
}

dimension: desplazamiento_central {
  hidden: yes
  type: number
  sql: ${TABLE}.desplazamiento_central ;;
}

dimension: desplazamiento_general {
  hidden: yes
  type: string
  sql: ${TABLE}.desplazamiento_general ;;
}

dimension: destino_fondos {
  hidden: yes
  type: string
  sql: ${TABLE}.destino_fondos ;;
}

dimension: distribucion_comision {
  hidden: yes
  type: string
  sql: ${TABLE}.distribucion_comision ;;
}

dimension: duracion_convenio {
  hidden: yes
  type: number
  sql: ${TABLE}.duracion_convenio ;;
}

dimension: especie_key {
  hidden: yes
  type: number
  sql: ${TABLE}.especie_key ;;
}

dimension: esquema_comision {
  hidden: yes
  type: string
  sql: ${TABLE}.esquema_comision ;;
}

dimension: estado {
  view_label: "Datos CONVENIO"
  type: string
  sql: ${TABLE}.estado ;;
}

dimension_group: fecha_convenio {
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
  sql: ${TABLE}.fecha_convenio ;;
}

dimension_group: fecha_de_fin {
  view_label: "Datos CONVENIO"
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
  sql: ${TABLE}.fecha_de_fin ;;
}

dimension_group: fecha_de_inicio {
  view_label: "Datos CONVENIO"
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
  sql: ${TABLE}.fecha_de_inicio ;;
}

dimension: forma_distribucion {
  hidden: yes
  type: string
  sql: ${TABLE}.forma_distribucion ;;
}

dimension: grupo {
  view_label: "Datos CONVENIO"
  type: string
  sql: ${TABLE}.grupo ;;
}

dimension: grupo_contable {
  hidden: yes
  type: string
  sql: ${TABLE}.grupo_contable ;;
}

dimension: grupo_convenio {
  hidden: yes
  type: string
  sql: ${TABLE}.grupo_convenio ;;
}

dimension: grupo_convenio_key {
  hidden: yes
  type: number
  sql: ${TABLE}.grupo_convenio_key ;;
}

dimension: minimo_liquidacion {
  hidden: yes
  type: number
  sql: ${TABLE}.minimo_liquidacion ;;
}

dimension: minimo_mensual {
  hidden: yes
  type: number
  sql: ${TABLE}.minimo_mensual ;;
}

dimension: numero_convenio {
  view_label: "Datos CONVENIO"
  type: string
  sql: ${TABLE}.numero_convenio ;;
}

dimension: peridiocidad_rendicion {
  hidden: yes
  type: string
  sql: ${TABLE}.peridiocidad_rendicion ;;
}

dimension: porcentaje_administradora {
  hidden: yes
  type: number
  sql: ${TABLE}.porcentaje_administradora ;;
}

dimension: porcentaje_sucursal_cobradoras {
  hidden: yes
  type: number
  sql: ${TABLE}.porcentaje_sucursal_cobradoras ;;
}

dimension: porcentaje_sucursal_convenio {
  hidden: yes
  type: number
  sql: ${TABLE}.porcentaje_sucursal_convenio ;;
}

dimension: producto_key {
  hidden: yes
  type: number
  sql: ${TABLE}.producto_key ;;
}

dimension: productos_asociados {
  hidden: yes
  type: string
  sql: ${TABLE}.productos_asociados ;;
}

dimension: renovacion_automatica {
  hidden: yes
  type: string
  sql: ${TABLE}.renovacion_automatica ;;
}

dimension: servicios_asociados {
  hidden: yes
  type: string
  sql: ${TABLE}.servicios_asociados ;;
}

dimension: sucursal_administradora {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_administradora ;;
}

dimension: sucursal_convenio_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_convenio_key ;;
}

dimension: tipo {
  view_label: "Datos CONVENIO"
  type: string
  sql: ${TABLE}.tipo ;;
}

dimension: tipo_convenio {
  hidden: yes
  type: string
  sql: ${TABLE}.tipo_convenio ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
