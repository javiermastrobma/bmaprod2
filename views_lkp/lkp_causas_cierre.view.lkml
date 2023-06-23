view: lkp_causas_cierre {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_causas_cierre`
    ;;

dimension: causa_cierre_key {
  hidden: yes
  type: number
  sql: ${TABLE}.causa_cierre_key ;;
}

dimension: causa_cierre_source {
  view_label: "Datos PAQUETE"
  group_label: "Causas Cierre"
  type: number
  sql: ${TABLE}.causa_cierre_source ;;
}

dimension: descripcion {
  view_label: "Datos PAQUETE"
  group_label: "Causas Cierre"
  type: string
  sql: ${TABLE}.descripcion ;;
}

dimension: origen {
  view_label: "Datos PAQUETE"
  group_label: "Causas Cierre"
  type: number
  sql: ${TABLE}.origen ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
