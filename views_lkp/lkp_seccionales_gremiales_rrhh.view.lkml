view: lkp_seccionales_gremiales_rrhh {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_seccionales_gremiales_rrhh`
    ;;
  view_label: "Datos RRHH"

  dimension: seccional_gremial {
    group_label: "Seccionales Gremiales"
    type: string
    sql: ${TABLE}.seccional_gremial ;;
  }

  dimension: seccional_gremial_rrhh_key {
    hidden: yes
    type: number
    sql: ${TABLE}.seccional_gremial_rrhh_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
