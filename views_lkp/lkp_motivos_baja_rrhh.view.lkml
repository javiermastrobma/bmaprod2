view: lkp_motivos_baja_rrhh {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_motivos_baja_rrhh`
    ;;
    view_label: "Datos RRHH"

  dimension: motivo_baja {
    group_label: "Motivos Baja"
    type: string
    sql: ${TABLE}.motivo_baja ;;
  }

  dimension: motivo_baja_rrhh_key {
    hidden: yes
    type: number
    sql: ${TABLE}.motivo_baja_rrhh_key ;;
  }

  dimension: tipo_egreso {
    group_label: "Motivos Baja"
    type: string
    sql: ${TABLE}.tipo_egreso ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
