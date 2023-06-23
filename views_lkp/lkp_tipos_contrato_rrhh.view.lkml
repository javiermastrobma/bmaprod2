view: lkp_tipos_contrato_rrhh {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_tipos_contrato_rrhh`
    ;;
  view_label: "Datos RRHH"

  dimension: tipo_contrato {
    group_label: "Tipos Contrato"
    type: string
    sql: ${TABLE}.tipo_contrato ;;
  }

  dimension: tipo_contrato_rrhh_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_contrato_rrhh_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
