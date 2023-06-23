view: lkp_unidades_eo_rrhh {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_unidades_eo_rrhh`
    ;;
  view_label: "Datos RRHH"

  dimension: agrupacion_gerencia {
    group_label: "Unidades Estructura Organizacional"
    type: string
    sql: ${TABLE}.agrupacion_gerencia ;;
  }

  dimension: alta_gerencia {
    group_label: "Unidades Estructura Organizacional"
    type: string
    sql: ${TABLE}.alta_gerencia ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: division_unidad {
    group_label: "Unidades Estructura Organizacional"
    type: string
    sql: ${TABLE}.division_unidad ;;
  }

  dimension: gerencia_unidad {
    group_label: "Unidades Estructura Organizacional"
    type: string
    sql: ${TABLE}.gerencia_unidad ;;
  }

  dimension: region_unidad {
    group_label: "Unidades Estructura Organizacional"
    type: string
    sql: ${TABLE}.region_unidad ;;
  }

  dimension: unidad {
    group_label: "Unidades Estructura Organizacional"
    type: string
    sql: ${TABLE}.unidad ;;
  }

  dimension: unidad_eo_rrhh_key {
    hidden: yes
    type: number
    sql: ${TABLE}.unidad_eo_rrhh_key ;;
  }

  dimension: unidad_source {
    group_label: "Unidades Estructura Organizacional"
    type: string
    sql: ${TABLE}.unidad_source ;;
  }

  dimension: unidad_superior_source {
    group_label: "Unidades Estructura Organizacional"
    type: string
    sql: ${TABLE}.unidad_superior_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
