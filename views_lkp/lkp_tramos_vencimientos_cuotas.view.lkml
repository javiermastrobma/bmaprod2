view: lkp_tramos_vencimientos_cuotas {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_tramos_vencimientos_cuotas`
    ;;
    view_label: "Otras Dimensiones"

  dimension: tramo_vencimiento_cuota_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tramo_vencimiento_cuota_key ;;
  }

  dimension: tramo_vencimiento_cuotas {
    group_label: "Tramos Vencimientos Cuotas"
    type: string
    sql: ${TABLE}.tramo_vencimiento_cuotas ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
