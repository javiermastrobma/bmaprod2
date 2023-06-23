view: lkp_objetivos_campania {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_objetivos_campania`
    ;;
  view_label: "Datos CAMPAÑA"

  dimension: banca_crm {
    group_label: "Objetivos Campaña"
    type: string
    sql: ${TABLE}.banca_crm ;;
  }

  dimension: clase {
    group_label: "Objetivos Campaña"
    type: string
    sql: ${TABLE}.clase ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: codigo_prospecto_crm {
    group_label: "Objetivos Campaña"
    type: string
    sql: ${TABLE}.codigo_prospecto_crm ;;
  }

  dimension: no_calificar {
    group_label: "Objetivos Campaña"
    type: string
    sql: ${TABLE}.no_calificar ;;
  }

  dimension: nombre {
    group_label: "Objetivos Campaña"
    type: string
    sql: ${TABLE}.nombre ;;
  }

  dimension: numero_documento {
    group_label: "Objetivos Campaña"
    type: string
    sql: ${TABLE}.numero_documento ;;
  }

  dimension: numero_documento_trib {
    group_label: "Objetivos Campaña"
    type: string
    sql: ${TABLE}.numero_documento_trib ;;
  }

  dimension: objetivo_campania_key {
    hidden: yes
    type: number
    sql: ${TABLE}.objetivo_campania_key ;;
  }

  dimension: origen {
    group_label: "Objetivos Campaña"
    type: string
    sql: ${TABLE}.origen ;;
  }

  dimension: restringido {
    group_label: "Objetivos Campaña"
    type: string
    sql: ${TABLE}.restringido ;;
  }

  dimension: sucursal_radicacion_crm_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_radicacion_crm_key ;;
  }

  dimension: tipo_documento {
    group_label: "Objetivos Campaña"
    type: string
    sql: ${TABLE}.tipo_documento ;;
  }

  dimension: tipo_documento_trib {
    group_label: "Objetivos Campaña"
    type: string
    sql: ${TABLE}.tipo_documento_trib ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
