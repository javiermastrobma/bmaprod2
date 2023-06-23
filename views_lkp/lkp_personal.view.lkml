view: lkp_personal {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_personal`
    ;;
    view_label: "Datos BRANCH"

dimension: clasificacion_puesto {
  hidden: yes
  type: string
  sql: ${TABLE}.clasificacion_puesto ;;
}

dimension: correo_electronico {
  hidden: yes
  type: string
  sql: ${TABLE}.correo_electronico ;;
}

dimension: cuil {
  hidden: yes
  type: string
  sql: ${TABLE}.cuil ;;
}

dimension: dominio {
  hidden: yes
  type: string
  sql: ${TABLE}.dominio ;;
}

dimension_group: fecha_alta_banco {
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
  sql: ${TABLE}.fecha_alta_banco ;;
}

dimension_group: fecha_baja {
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
  sql: ${TABLE}.fecha_baja ;;
}

dimension_group: fecha_inicio_puesto {
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
  sql: ${TABLE}.fecha_inicio_puesto ;;
}

dimension_group: fecha_inicio_sector {
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
  sql: ${TABLE}.fecha_inicio_sector ;;
}

dimension: funcionario_restringido {
  hidden: yes
  type: string
  sql: ${TABLE}.funcionario_restringido ;;
}

dimension: legajo {
  hidden: yes
  type: string
  sql: ${TABLE}.legajo ;;
}

dimension: localidad_source {
  hidden: yes
  type: string
  sql: ${TABLE}.localidad_source ;;
}

dimension: login_usuario {
  type: string
  sql: ${TABLE}.login_usuario ;;
}

dimension: nombre_empleado {
  hidden: yes
  type: string
  sql: ${TABLE}.nombre_empleado ;;
}

dimension: personal_key {
  hidden: yes
  type: number
  sql: ${TABLE}.personal_key ;;
}

dimension: provincia_key {
  hidden: yes
  type: number
  sql: ${TABLE}.provincia_key ;;
}

dimension: puesto {
  hidden: yes
  type: string
  sql: ${TABLE}.puesto ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
