view: lkp_operadores_branch {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_operadores_branch`
    ;;
    view_label: "Datos BRANCH"

  dimension: operador_branch_key {
    hidden: yes
    type: number
    sql: ${TABLE}.operador_branch_key ;;
  }

  dimension: operador_branch_source {
    group_label: "Operadores Branch"
    type: string
    sql: ${TABLE}.operador_branch_source ;;
  }

  dimension: personal_key {
    hidden: yes
    type: number
    sql: ${TABLE}.personal_key ;;
  }

  dimension: unidad_acceso_key {
    hidden: yes
    type: number
    sql: ${TABLE}.unidad_acceso_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
