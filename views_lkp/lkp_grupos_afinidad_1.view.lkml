view: lkp_grupos_afinidad_1 {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_grupos_afinidad_1`
    ;;

  dimension: convenio {
    view_label: "Datos CUENTA TARJETA CRÉDITO"
    group_label: "Grupos Afinidad"
    type: string
    sql: ${TABLE}.convenio ;;
  }

  dimension: estado_relacion {
    view_label: "Datos CUENTA TARJETA CRÉDITO"
    group_label: "Grupos Afinidad"
    type: string
    sql: ${TABLE}.estado_relacion ;;
  }

  dimension: grupo_afinidad {
    view_label: "Datos CUENTA TARJETA CRÉDITO"
    group_label: "Grupos Afinidad"
    type: string
    sql: ${TABLE}.grupo_afinidad ;;
  }

  dimension: grupo_afinidad_key {
    hidden: yes
    type: number
    sql: ${TABLE}.grupo_afinidad_key ;;
  }

  dimension: grupo_afinidad_source {
    view_label: "Datos CUENTA TARJETA CRÉDITO"
    group_label: "Grupos Afinidad"
    type: string
    sql: ${TABLE}.grupo_afinidad_source ;;
  }

  dimension: marca {
    view_label: "Datos CUENTA TARJETA CRÉDITO"
    group_label: "Grupos Afinidad"
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: origen {
    view_label: "Datos CUENTA TARJETA CRÉDITO"
    group_label: "Grupos Afinidad"
    type: string
    sql: ${TABLE}.origen ;;
  }

  dimension: tipo_grupo_afinidad {
    view_label: "Datos CUENTA TARJETA CRÉDITO"
    group_label: "Grupos Afinidad"
    type: string
    sql: ${TABLE}.tipo_grupo_afinidad ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
