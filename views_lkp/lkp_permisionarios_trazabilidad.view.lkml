view: lkp_permisionarios_trazabilidad {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_permisionarios_trazabilidad`
    ;;
  view_label: "Datos TRAZABILIDAD"

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: codigo_permisionario {
    group_label: "Permisionarios"
    type: string
    sql: ${TABLE}.codigo_permisionario ;;
  }

  dimension: descripcion {
    group_label: "Permisionarios"
    type: string
    sql: ${TABLE}.descripcion ;;
  }

  dimension: origen {
    group_label: "Permisionarios"
    type: string
    sql: ${TABLE}.origen ;;
  }

  dimension: permisionario_key {
    hidden: yes
    type: number
    sql: ${TABLE}.permisionario_key ;;
  }

  dimension: vigencia {
    group_label: "Permisionarios"
    type: string
    sql: ${TABLE}.vigencia ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
