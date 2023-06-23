view: lkp_condiciones_mipyme {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_condiciones_mipyme`
    ;;

  dimension: condicion_mipyme {
    type: string
    sql: ${TABLE}.condicion_mipyme ;;
  }

  dimension: condicion_mipyme_key {
    hidden: yes
    type: number
    sql: ${TABLE}.condicion_mipyme_key ;;
  }

  dimension: condicion_mipyme_source {
    type: string
    sql: ${TABLE}.condicion_mipyme_source ;;
  }

  dimension: magnitud_mipyme_source {
    type: string
    sql: ${TABLE}.magnitud_mipyme_source ;;
  }

  dimension: sector_mipyme_source {
    type: string
    sql: ${TABLE}.sector_mipyme_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
