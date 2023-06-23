view: lkp_motivos_ausentismo {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_motivos_ausentismo`
    ;;
  view_label: "Datos RECLAMO"

  dimension: codigo_motivo_ausentismo {
    group_label: "Motivos Ausentismo"
    type: number
    sql: ${TABLE}.codigo_motivo_ausentismo ;;
  }

  dimension: coordinacion_motivo_ausentismo {
    group_label: "Motivos Ausentismo"
    type: string
    sql: ${TABLE}.coordinacion_motivo_ausentismo ;;
  }

  dimension: descripcion_motivo_ausentismo {
    group_label: "Motivos Ausentismo"
    type: string
    sql: ${TABLE}.descripcion_motivo_ausentismo ;;
  }

  dimension: motivo_ausentismo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.motivo_ausentismo_key ;;
  }

  dimension: tipo_motivo_ausentismo {
    group_label: "Motivos Ausentismo"
    type: string
    sql: ${TABLE}.tipo_motivo_ausentismo ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
