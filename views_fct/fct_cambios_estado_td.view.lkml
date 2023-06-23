view: fct_cambios_estado_td {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_cambios_estado_td`
    ;;
    label: " Fct Cambios Estado TD"

dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_cambios_estado_td s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

dimension: banco_key {
  hidden: yes
  type: number
  sql: ${TABLE}.banco_key ;;
}

dimension: cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cuenta_key ;;
}

dimension: estado_td_key {
  hidden: yes
  type: number
  sql: ${TABLE}.estado_td_key ;;
}

dimension: fecha_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_key ;;
}

dimension: id_proceso {
  type: number
  sql: ${TABLE}.id_proceso ;;
}

dimension: numero_tarjeta {
  type: string
  sql: ${TABLE}.numero_tarjeta ;;
}

dimension: sucursal_estado_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_estado_key ;;
}

measure: count {
  type: count
  drill_fields: []
}
}
