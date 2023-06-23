view: lkp_motivos_cierre_reclamos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_motivos_cierre_reclamos`
    ;;
  view_label: "Datos RECLAMO"

  dimension: descripcion_motivo_cierre {
    group_label: "Motivos Cierre Reclamo"
    type: string
    sql: ${TABLE}.descripcion_motivo_cierre ;;
  }

  dimension: motivo_cierre_reclamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.motivo_cierre_reclamo_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
