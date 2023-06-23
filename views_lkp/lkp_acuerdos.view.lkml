view: lkp_acuerdos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_acuerdos`
    ;;
    view_label: "Datos ACUERDOS"

dimension: acuerdo_key {
  hidden: yes
  type: number
  sql: ${TABLE}.acuerdo_key ;;
}

dimension: codigo_acuerdo {
  group_label: "Acuerdo"
  type: string
  sql: ${TABLE}.codigo_acuerdo ;;
}

dimension: codigo_linea_credito {
  group_label: "Acuerdo"
  type: string
  sql: ${TABLE}.codigo_linea_credito ;;
}

dimension: con_acuerdo {
  group_label: "Acuerdo"
  type: string
  sql: ${TABLE}.con_acuerdo ;;
}

dimension: linea_credito {
  group_label: "Acuerdo"
  type: string
  sql: ${TABLE}.linea_credito ;;
}

dimension: tasa_fija {
  group_label: "Acuerdo"
  type: string
  sql: ${TABLE}.tasa_fija ;;
}

dimension: tasa_fija_por_periodo {
  group_label: "Acuerdo"
  type: string
  sql: ${TABLE}.tasa_fija_por_periodo ;;
}

dimension: tasa_variable {
  group_label: "Acuerdo"
  type: string
  sql: ${TABLE}.tasa_variable ;;
}

dimension: tipo_acuerdo {
  group_label: "Acuerdo"
  type: string
  sql: ${TABLE}.tipo_acuerdo ;;
}

dimension: tipo_tasa {
  group_label: "Acuerdo"
  type: string
  sql: ${TABLE}.tipo_tasa ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
