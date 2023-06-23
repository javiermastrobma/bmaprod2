view: lkp_tipos_tarjeta_debito {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_tipos_tarjeta_debito`
    ;;

dimension: descripcion_tipo_tarjeta {
  type: string
  sql: ${TABLE}.descripcion_tipo_tarjeta ;;
}

dimension: estado {
  type: string
  sql: ${TABLE}.estado ;;
}

dimension: limite_extraccion {
  type: number
  sql: ${TABLE}.limite_extraccion ;;
}

dimension: nombre_tipo_tarjeta {
  type: string
  sql: ${TABLE}.nombre_tipo_tarjeta ;;
}

dimension: persona_juridica {
  type: string
  sql: ${TABLE}.persona_juridica ;;
}

dimension: tipo_tarjeta {
  type: string
  sql: ${TABLE}.tipo_tarjeta ;;
}

dimension: tipo_tarjeta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.tipo_tarjeta_key ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
