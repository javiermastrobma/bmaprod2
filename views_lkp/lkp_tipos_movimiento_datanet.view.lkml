view: lkp_tipos_movimiento_datanet {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_tipos_movimiento_datanet`
    ;;
  view_label: "Otras Dimensiones"

  dimension: codigo_tipo_movimiento_datanet {
    group_label: "Tipos Movimiento Datanet"
    type: string
    sql: ${TABLE}.codigo_tipo_movimiento_datanet ;;
  }

  dimension: tipo_movimiento_datanet {
    group_label: "Tipos Movimiento Datanet"
    type: string
    sql: ${TABLE}.tipo_movimiento_datanet ;;
  }

  dimension: tipo_movimiento_datanet_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_movimiento_datanet_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
