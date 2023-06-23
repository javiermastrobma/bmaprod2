view: lkp_contratos_glm {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_contratos_glm`
    ;;
    view_label: "Otras Dimensiones"

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: codigo_contrato_glm {
    group_label: "Contratos GLM"
    type: string
    sql: ${TABLE}.codigo_contrato_glm ;;
  }

  dimension: contrato_glm_key {
    hidden: yes
    type: number
    sql: ${TABLE}.contrato_glm_key ;;
  }

  dimension: descripcion_contrato_glm {
    group_label: "Contratos GLM"
    type: string
    sql: ${TABLE}.descripcion_contrato_glm ;;
  }

  dimension: numero_contrato_glm {
    group_label: "Contratos GLM"
    type: number
    sql: ${TABLE}.numero_contrato_glm ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
