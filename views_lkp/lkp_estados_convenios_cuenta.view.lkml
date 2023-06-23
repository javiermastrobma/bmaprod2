view: lkp_estados_convenios_cuenta {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_estados_convenios_cuenta`
    ;;
  view_label: "Datos CONVENIO CUENTA"

dimension: banco_key {
  hidden: yes
  type: number
  sql: ${TABLE}.banco_key ;;
}

dimension: codigo_estado_convenio_cuenta {
  group_label: "Estados Convenios Cuenta"
  type: string
  sql: ${TABLE}.codigo_estado_convenio_cuenta ;;
}

dimension: descripcion_estado {
  group_label: "Estados Convenios Cuenta"
  type: string
  sql: ${TABLE}.descripcion_estado ;;
}

dimension: estado_convenio_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.estado_convenio_cuenta_key ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
