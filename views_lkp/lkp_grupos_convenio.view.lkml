view: lkp_grupos_convenio {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_grupos_convenio`
    ;;
  view_label: "Datos CONVENIO"

dimension: agrupacion_cash_nivel_1 {
  group_label: "Grupos Convenio"
  type: string
  sql: ${TABLE}.agrupacion_cash_nivel_1 ;;
}

dimension: agrupacion_cash_nivel_2 {
  group_label: "Grupos Convenio"
  type: string
  sql: ${TABLE}.agrupacion_cash_nivel_2 ;;
}

dimension: agrupacion_cash_nivel_3 {
  group_label: "Grupos Convenio"
  type: string
  sql: ${TABLE}.agrupacion_cash_nivel_3 ;;
}

dimension: grupo_convenio {
  group_label: "Grupos Convenio"
  type: string
  sql: ${TABLE}.grupo_convenio ;;
}

dimension: grupo_convenio_key {
  hidden: yes
  type: number
  sql: ${TABLE}.grupo_convenio_key ;;
}

dimension: grupo_convenio_source {
  group_label: "Grupos Convenio"
  type: string
  sql: ${TABLE}.grupo_convenio_source ;;
}

dimension: tipo_convenio {
  group_label: "Grupos Convenio"
  type: string
  sql: ${TABLE}.tipo_convenio ;;
}

dimension: tipo_convenio_source {
  group_label: "Grupos Convenio"
  type: string
  sql: ${TABLE}.tipo_convenio_source ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
