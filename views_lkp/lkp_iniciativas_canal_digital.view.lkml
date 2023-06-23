view: lkp_iniciativas_canal_digital {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_iniciativas_canal_digital`
    ;;
  view_label: "Datos DIGITAL"

  dimension: canal_iniciativa {
    group_label: "Iniciativas Canal Digital"
    type: string
    sql: ${TABLE}.canal_iniciativa ;;
  }

  dimension: descripcion_iniciativa {
    group_label: "Iniciativas Canal Digital"
    type: string
    sql: ${TABLE}.descripcion_iniciativa ;;
  }

  dimension: iniciativa_canal_digital_key {
    hidden: yes
    type: number
    sql: ${TABLE}.iniciativa_canal_digital_key ;;
  }

  dimension: iniciativa_source {
    group_label: "Iniciativas Canal Digital"
    type: string
    sql: ${TABLE}.iniciativa_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
