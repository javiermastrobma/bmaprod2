view: lkp_estados_contrato_cajas_seguridad {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_estados_contrato_cajas_seguridad`
    ;;
  view_label: "Datos CAJA SEGURIDAD"

  dimension: con_problemas {
    group_label: "Estados Contratos Cajas de Seguridad"
    type: number
    sql: ${TABLE}.con_problemas ;;
  }

  dimension: estado_contrato_cs {
    group_label: "Estados Contratos Cajas de Seguridad"
    type: string
    sql: ${TABLE}.estado_contrato_cs ;;
  }

  dimension: estado_contrato_cs_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_contrato_cs_key ;;
  }

  dimension: estado_contrato_cs_source {
    group_label: "Estados Contratos Cajas de Seguridad"
    type: string
    sql: ${TABLE}.estado_contrato_cs_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
