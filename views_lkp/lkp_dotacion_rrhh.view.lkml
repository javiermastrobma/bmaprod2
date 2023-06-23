view: lkp_dotacion_rrhh {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_dotacion_rrhh`
    ;;

dimension: afiliacion_sindical_rrhh_key {
  hidden: yes
  type: number
  sql: ${TABLE}.afiliacion_sindical_rrhh_key ;;
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

dimension: categoria_rrhh_key {
  hidden: yes
  type: number
  sql: ${TABLE}.categoria_rrhh_key ;;
}

dimension: cuil {
  view_label: "Otras Dimensiones"
  group_label: "Dotación RRHH"
  type: string
  sql: ${TABLE}.cuil ;;
}

dimension: dominio {
  view_label: "Otras Dimensiones"
  group_label: "Dotación RRHH"
  type: string
  sql: ${TABLE}.dominio ;;
}

dimension: dotacion_rrhh_key {
  hidden: yes
  type: number
  sql: ${TABLE}.dotacion_rrhh_key ;;
}

dimension: email {
  view_label: "Otras Dimensiones"
  group_label: "Dotación RRHH"
  type: string
  sql: ${TABLE}.email ;;
}

dimension_group: fecha_desde {
  view_label: "Otras Dimensiones"
  group_label: "Dotación RRHH"
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
  sql: ${TABLE}.fecha_desde ;;
}

dimension: fecha_egreso_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_egreso_key ;;
}

dimension: fecha_fin_contrato_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_fin_contrato_key ;;
}

dimension_group: fecha_hasta {
  view_label: "Otras Dimensiones"
  group_label: "Dotación RRHH"
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
  sql: ${TABLE}.fecha_hasta ;;
}

dimension: fecha_ingreso_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_ingreso_key ;;
}

dimension: fecha_inicio_puesto_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_inicio_puesto_key ;;
}

dimension: fecha_inicio_sector_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_inicio_sector_key ;;
}

dimension_group: fecha_nacimiento {
  view_label: "Otras Dimensiones"
  group_label: "Dotación RRHH"
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
  sql: ${TABLE}.fecha_nacimiento ;;
}

dimension: legajo {
  view_label: "Otras Dimensiones"
  group_label: "Dotación RRHH"
  type: string
  sql: ${TABLE}.legajo ;;
}

dimension: localidad {
  view_label: "Otras Dimensiones"
  group_label: "Dotación RRHH"
  type: string
  sql: ${TABLE}.localidad ;;
}

dimension: login_usuario {
  view_label: "Otras Dimensiones"
  group_label: "Dotación RRHH"
  type: string
  sql: ${TABLE}.login_usuario ;;
}

dimension: motivo_alta_rrhh_key {
  hidden: yes
  type: number
  sql: ${TABLE}.motivo_alta_rrhh_key ;;
}

dimension: motivo_baja_rrhh_key {
  hidden: yes
  type: number
  sql: ${TABLE}.motivo_baja_rrhh_key ;;
}

dimension: nombre {
  view_label: "Otras Dimensiones"
  group_label: "Dotación RRHH"
  type: string
  sql: ${TABLE}.nombre ;;
}

dimension: nro_documento {
  view_label: "Otras Dimensiones"
  group_label: "Dotación RRHH"
  type: number
  sql: ${TABLE}.nro_documento ;;
}

dimension: provincia_key {
  hidden: yes
  type: number
  sql: ${TABLE}.provincia_key ;;
}

dimension: puesto_rrhh_key {
  hidden: yes
  type: number
  sql: ${TABLE}.puesto_rrhh_key ;;
}

dimension: restringido {
  view_label: "Otras Dimensiones"
  group_label: "Dotación RRHH"
  type: string
  sql: ${TABLE}.restringido ;;
}

dimension: seccional_gremial_rrhh_key {
  hidden: yes
  type: number
  sql: ${TABLE}.seccional_gremial_rrhh_key ;;
}

dimension: sexo {
  view_label: "Otras Dimensiones"
  group_label: "Dotación RRHH"
  type: string
  sql: ${TABLE}.sexo ;;
}

dimension: sucursal_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_cuenta_key ;;
}

dimension: tipo_contrato_rrhh_key {
  hidden: yes
  type: number
  sql: ${TABLE}.tipo_contrato_rrhh_key ;;
}

dimension: unidad_eo_rrhh_key {
  hidden: yes
  type: number
  sql: ${TABLE}.unidad_eo_rrhh_key ;;
}

dimension: vigente {
  view_label: "Otras Dimensiones"
  group_label: "Dotación RRHH"
  type: string
  sql: ${TABLE}.vigente ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
