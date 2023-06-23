view: lkp_tipos_paquete {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_tipos_paquete`
    ;;

dimension: nombre_paquete {
  view_label: "Datos PAQUETE"
  group_label: "Tipos Paquete"
  type: string
  sql: ${TABLE}.nombre_paquete ;;
}

dimension: otros_atributos_paquete {
  view_label: "Datos PAQUETE"
  group_label: "Tipos Paquete"
  type: string
  sql: ${TABLE}.otros_atributos_paquete ;;
}

dimension: tipos_paquete_key {
  hidden: yes
  type: number
  sql: ${TABLE}.tipos_paquete_key ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
