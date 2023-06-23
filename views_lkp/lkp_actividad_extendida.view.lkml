view: lkp_actividad_extendida {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_actividad_extendida`
    ;;
    view_label: "Datos CLIENTE"

  dimension: actividad_bcra {
    group_label: "Actividad Extendida"
    type: string
    sql: ${TABLE}.actividad_bcra ;;
  }

  dimension: actividad_extendida {
    group_label: "Actividad Extendida"
    type: string
    sql: ${TABLE}.actividad_extendida ;;
  }

  dimension: actividad_extendida_key {
    hidden: yes
    type: number
    sql: ${TABLE}.actividad_extendida_key ;;
  }

  dimension: codigo_actividad_bcra {
    group_label: "Actividad Extendida"
    type: string
    sql: ${TABLE}.codigo_actividad_bcra ;;
  }

  dimension: codigo_actividad_extendida {
    group_label: "Actividad Extendida"
    type: string
    sql: ${TABLE}.codigo_actividad_extendida ;;
  }

  dimension: grupo {
    group_label: "Actividad Extendida"
    type: string
    sql: ${TABLE}.grupo ;;
  }

  dimension: seccion {
    group_label: "Actividad Extendida"
    type: string
    sql: ${TABLE}.seccion ;;
  }

  dimension: seccion_letra {
    group_label: "Actividad Extendida"
    type: string
    sql: ${TABLE}.seccion_letra ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
