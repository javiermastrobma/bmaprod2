view: lkp_estados_paquetes {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_estados_paquetes`
    ;;

dimension: estado_paquete {
  view_label: "Datos PAQUETE"
  group_label: "Estado Paquete"
  type: string
  sql: ${TABLE}.estado_paquete ;;
}

dimension: estado_paquete_key {
  hidden: yes
  type: number
  sql: ${TABLE}.estado_paquete_key ;;
}

dimension: estado_paquete_source {
  view_label: "Datos PAQUETE"
  group_label: "Estado Paquete"
  type: string
  sql: ${TABLE}.estado_paquete_source ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
