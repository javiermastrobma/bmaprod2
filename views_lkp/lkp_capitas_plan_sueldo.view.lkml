view: lkp_capitas_plan_sueldo {
  fields_hidden_by_default: yes
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_capitas_plan_sueldo`
    ;;

dimension: banco_key {
  hidden: yes
  type: number
  sql: ${TABLE}.banco_key ;;
}

dimension: capita_key {
  primary_key: yes
  type: number
  sql: ${TABLE}.capita_key ;;
}

dimension: cliente_capita_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cliente_capita_key ;;
}

dimension: cliente_convenio_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cliente_convenio_key ;;
}

dimension: estado_capita {
  hidden: no
  view_label: "Otras Dimensiones"
  type: string
  sql: ${TABLE}.estado_capita ;;
}

dimension: fecha_alta_capita_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_alta_capita_key ;;
}

dimension: fecha_ultimo_estado_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_ultimo_estado_key ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
