view: fct_seguimiento_td {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_seguimiento_td`
    ;;
    view_label: " Fct Seguimiento TD"

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

dimension: cantidad_intentos {
  type: number
  sql: ${TABLE}.cantidad_intentos ;;
}

dimension: carta_rendicion {
  type: string
  sql: ${TABLE}.carta_rendicion ;;
}

dimension: cliente_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cliente_key ;;
}

dimension: codigo_postal {
  type: string
  sql: ${TABLE}.codigo_postal ;;
}

dimension: cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cuenta_key ;;
}

dimension: direccion {
  type: string
  sql: ${TABLE}.direccion ;;
}

dimension: duracion_aprobacion_banco {
  type: number
  sql: ${TABLE}.duracion_aprobacion_banco ;;
}

dimension: duracion_carga_ingreso_sucursal {
  type: number
  sql: ${TABLE}.duracion_carga_ingreso_sucursal ;;
}

dimension: duracion_confeccion_plastico {
  type: number
  sql: ${TABLE}.duracion_confeccion_plastico ;;
}

dimension: duracion_destruccion {
  type: number
  sql: ${TABLE}.duracion_destruccion ;;
}

dimension: duracion_devolucion_sucursal {
  type: number
  sql: ${TABLE}.duracion_devolucion_sucursal ;;
}

dimension: duracion_distribucion {
  type: number
  sql: ${TABLE}.duracion_distribucion ;;
}

dimension: duracion_entrega_cliente_sucursal {
  type: number
  sql: ${TABLE}.duracion_entrega_cliente_sucursal ;;
}

dimension: duracion_imposicion_permisionaria {
  type: number
  sql: ${TABLE}.duracion_imposicion_permisionaria ;;
}

dimension: duracion_intentos_entrega_permisionaria {
  type: number
  sql: ${TABLE}.duracion_intentos_entrega_permisionaria ;;
}

dimension: duracion_total {
  type: number
  sql: ${TABLE}.duracion_total ;;
}

dimension: emision_distribucion_key {
  hidden: yes
  type: number
  sql: ${TABLE}.emision_distribucion_key ;;
}

dimension: estado_permisionaria {
  type: string
  sql: ${TABLE}.estado_permisionaria ;;
}

dimension: estado_td_destruccion_key {
  hidden: yes
  type: number
  sql: ${TABLE}.estado_td_destruccion_key ;;
}

dimension: etapa_key {
  hidden: yes
  type: number
  sql: ${TABLE}.etapa_key ;;
}

dimension: fecha_activacion_sistema_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_activacion_sistema_key ;;
}

dimension: fecha_aprobacion_banco_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_aprobacion_banco_key ;;
}

dimension: fecha_aprobacion_marca_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_aprobacion_marca_key ;;
}

dimension: fecha_carga_solicitud_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_carga_solicitud_key ;;
}

dimension: fecha_destruccion_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_destruccion_key ;;
}

dimension: fecha_devolucion_sucursal_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_devolucion_sucursal_key ;;
}

dimension: fecha_entrega_a_sucursal_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_entrega_a_sucursal_key ;;
}

dimension: fecha_entrega_cliente_en_domicilio_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_entrega_cliente_en_domicilio_key ;;
}

dimension: fecha_entrega_cliente_en_sucursal_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_entrega_cliente_en_sucursal_key ;;
}

dimension: fecha_imposicion_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_imposicion_key ;;
}

dimension: fecha_logico_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_logico_key ;;
}

dimension: fecha_novedad_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_novedad_key ;;
}

dimension: fecha_recepcion_sucursal_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_recepcion_sucursal_key ;;
}

dimension: fecha_retiro_marca_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_retiro_marca_key ;;
}

dimension: fecha_ultima_visita_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_ultima_visita_key ;;
}

dimension: indicador_zona {
  type: string
  sql: ${TABLE}.indicador_zona ;;
}

dimension: localidad {
  type: string
  sql: ${TABLE}.localidad ;;
}

dimension: motivo_permisionaria {
  type: string
  sql: ${TABLE}.motivo_permisionaria ;;
}

dimension: ntd_key {
  hidden: yes
  type: number
  sql: ${TABLE}.ntd_key ;;
}

dimension: numero_pieza {
  type: string
  sql: ${TABLE}.numero_pieza ;;
}

dimension: numero_solicitud {
  type: number
  sql: ${TABLE}.numero_solicitud ;;
}

dimension: numero_tarjeta {
  type: string
  sql: ${TABLE}.numero_tarjeta ;;
}

dimension: numero_tarjeta_anterior {
  type: string
  sql: ${TABLE}.numero_tarjeta_anterior ;;
}

dimension: oficial_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.oficial_cuenta_key ;;
}

dimension: permisionario_key {
  hidden: yes
  type: number
  sql: ${TABLE}.permisionario_key ;;
}

dimension: proveedor_key {
  hidden: yes
  type: number
  sql: ${TABLE}.proveedor_key ;;
}

dimension: sucursal_entrega_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_entrega_key ;;
}

dimension: sucursal_ingreso_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_ingreso_key ;;
}

dimension: tipo_entrega {
  type: string
  sql: ${TABLE}.tipo_entrega ;;
}

dimension: tipo_solicitud {
  type: string
  sql: ${TABLE}.tipo_solicitud ;;
}

measure: count {
  type: count
  drill_fields: []
}
}
