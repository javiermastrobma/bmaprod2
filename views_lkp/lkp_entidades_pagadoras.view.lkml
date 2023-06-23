view: lkp_entidades_pagadoras {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_entidades_pagadoras`
    ;;
  view_label: "Otras Dimensiones"

dimension: codigo_entidad_source {
  group_label: "Entidades Pagadoras"
  type: string
  sql: ${TABLE}.codigo_entidad_source ;;
}

dimension: codigo_sucursal_entidad_source {
  group_label: "Entidades Pagadoras"
  type: string
  sql: ${TABLE}.codigo_sucursal_entidad_source ;;
}

dimension: cp_localidad {
  group_label: "Entidades Pagadoras"
  type: string
  sql: ${TABLE}.cp_localidad ;;
}

dimension: cp_provincia {
  group_label: "Entidades Pagadoras"
  type: string
  sql: ${TABLE}.cp_provincia ;;
}

dimension: cp_sucursal_entidad_source {
  group_label: "Entidades Pagadoras"
  type: string
  sql: ${TABLE}.cp_sucursal_entidad_source ;;
}

dimension: entidad_pagadora {
  group_label: "Entidades Pagadoras"
  type: string
  sql: ${TABLE}.entidad_pagadora ;;
}

dimension: entidad_pagadora_key {
  hidden: yes
  type: number
  sql: ${TABLE}.entidad_pagadora_key ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
