view: seg_db_clientes_restringidos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.seg_db_clientes_restringidos`
    ;;

  dimension: banco_key {
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: cliente_key {
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: codigo_cliente_source {
    type: string
    sql: ${TABLE}.codigo_cliente_source ;;
  }

  dimension: restringido {
    type: string
    sql: ${TABLE}.restringido ;;
  }

  dimension: tipo_persona {
    type: string
    sql: ${TABLE}.tipo_persona ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
