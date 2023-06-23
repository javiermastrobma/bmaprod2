view: lkp_tipologias_reclamos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_tipologias_reclamos`
    ;;
  view_label: "Datos RECLAMO"

  dimension: area_resolucion_principal {
    group_label: "Tipologías Reclamo"
    type: string
    sql: ${TABLE}.area_resolucion_principal ;;
  }

  dimension: calendario {
    group_label: "Tipologías Reclamo"
    type: string
    sql: ${TABLE}.calendario ;;
  }

  dimension: codigo_tipologia {
    group_label: "Tipologías Reclamo"
    type: string
    sql: ${TABLE}.codigo_tipologia ;;
  }

  dimension: complejidad {
    group_label: "Tipologías Reclamo"
    type: string
    sql: ${TABLE}.complejidad ;;
  }

  dimension: descripcion_tipologia {
    group_label: "Tipologías Reclamo"
    type: string
    sql: ${TABLE}.descripcion_tipologia ;;
  }

  dimension: grupo_tipologia_key {
    hidden: yes
    type: number
    sql: ${TABLE}.grupo_tipologia_key ;;
  }

  dimension: nombre_tipologia {
    group_label: "Tipologías Reclamo"
    type: string
    sql: ${TABLE}.nombre_tipologia ;;
  }

  dimension: plazo {
    group_label: "Tipologías Reclamo"
    type: number
    sql: ${TABLE}.plazo ;;
  }

  dimension: plazo_bcra {
    group_label: "Tipologías Reclamo"
    type: string
    sql: ${TABLE}.plazo_bcra ;;
  }

  dimension: producto_tipologia {
    group_label: "Tipologías Reclamo"
    type: string
    sql: ${TABLE}.producto_tipologia ;;
  }

  dimension: tema_reclamado {
    group_label: "Tipologías Reclamo"
    type: string
    sql: ${TABLE}.tema_reclamado ;;
  }

  dimension: tipo_recurrencia {
    group_label: "Tipologías Reclamo"
    type: string
    sql: ${TABLE}.tipo_recurrencia ;;
  }

  dimension: tipologia_reclamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipologia_reclamo_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
