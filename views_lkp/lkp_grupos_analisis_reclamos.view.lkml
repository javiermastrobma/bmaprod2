view: lkp_grupos_analisis_reclamos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_grupos_analisis_reclamos`
    ;;
  view_label: "Datos RECLAMO"

  dimension: coordinador_grupo {
    group_label: "Grupos Análisis Reclamo"
    type: string
    sql: ${TABLE}.coordinador_grupo ;;
  }

  dimension: grupo_analisis_reclamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.grupo_analisis_reclamo_key ;;
  }

  dimension: nombre_grupo_analisis {
    group_label: "Grupos Análisis Reclamo"
    type: string
    sql: ${TABLE}.nombre_grupo_analisis ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
