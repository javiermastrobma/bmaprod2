view: lkp_especies {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_especies`
    ;;

dimension: descripcion {
  view_label: "Datos MONEDA"
  type: string
  sql: ${TABLE}.descripcion ;;
}

dimension: especie {
  view_label: "Datos MONEDA"
  type: string
  sql: ${TABLE}.especie ;;
}

dimension: especie_key {
  hidden: yes
  type: number
  sql: ${TABLE}.especie_key ;;
}

dimension: subespecie {
  view_label: "Datos MONEDA"
  type: string
  sql: ${TABLE}.subespecie ;;
}

dimension: subtipo_especie {
  view_label: "Datos MONEDA"
  type: string
  sql: ${TABLE}.subtipo_especie ;;
}

dimension: tipo_especie {
  view_label: "Datos MONEDA"
  type: string
  sql: ${TABLE}.tipo_especie ;;
}

dimension: tipo_valor_residual {
  view_label: "Datos MONEDA"
  type: number
  sql: ${TABLE}.tipo_valor_residual ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}

# VIEW ESPECIES LINEA PARA MODELO ESTRELLA FCT_SITUACION_DIARIA_RI_CLASIFICACIONES

view: lkp_especies_linea {
  extends: [lkp_especies]
  view_label: "Datos MONEDA"

 dimension: descripcion {
    group_label: "Especies Linea"
    type: string
    sql: ${TABLE}.descripcion ;;
  }

  dimension: especie {
    group_label: "Especies Linea"
    type: string
    sql: ${TABLE}.especie ;;
  }

  dimension: subespecie {
    group_label: "Especies Linea"
    type: string
    sql: ${TABLE}.subespecie ;;
  }

  dimension: subtipo_especie {
    group_label: "Especies Linea"
    type: string
    sql: ${TABLE}.subtipo_especie ;;
  }

  dimension: tipo_especie {
    group_label: "Especies Linea"
    type: string
    sql: ${TABLE}.tipo_especie ;;
  }

  dimension: tipo_valor_residual {
    group_label: "Especies Linea"
    type: number
    sql: ${TABLE}.tipo_valor_residual ;;
  }
}

# VIEW ESPECIES SUBLINEA PARA MODELO ESTRELLA FCT_SITUACION_DIARIA_RI_CLASIFICACIONES

view: lkp_especies_sublinea {
  extends: [lkp_especies]
  view_label: "Datos MONEDA"

  dimension: descripcion {
    group_label: "Especies Sublinea"
    type: string
    sql: ${TABLE}.descripcion ;;
  }

  dimension: especie {
    group_label: "Especies Sublinea"
    type: string
    sql: ${TABLE}.especie ;;
  }

  dimension: subespecie {
    group_label: "Especies Sublinea"
    type: string
    sql: ${TABLE}.subespecie ;;
  }

  dimension: subtipo_especie {
    group_label: "Especies Sublinea"
    type: string
    sql: ${TABLE}.subtipo_especie ;;
  }

  dimension: tipo_especie {
    group_label: "Especies Sublinea"
    type: string
    sql: ${TABLE}.tipo_especie ;;
  }

  dimension: tipo_valor_residual {
    group_label: "Especies Sublinea"
    type: number
    sql: ${TABLE}.tipo_valor_residual ;;
  }
}



# VIEW ESPECIES PF PARA MODELO ESTRELLA FCT_CERTIFICADOS_EN_GARANTIA

view: lkp_especies_pf {
  extends: [lkp_especies]
  view_label: "Datos MONEDA"

  dimension: descripcion {
    group_label: "Especies PF"
    type: string
    sql: ${TABLE}.descripcion ;;
  }

  dimension: especie {
    group_label: "Especies PF"
    type: string
    sql: ${TABLE}.especie ;;
  }

  dimension: subespecie {
    group_label: "Especies PF"
    type: string
    sql: ${TABLE}.subespecie ;;
  }

  dimension: subtipo_especie {
    group_label: "Especies PF"
    type: string
    sql: ${TABLE}.subtipo_especie ;;
  }

  dimension: tipo_especie {
    group_label: "Especies PF"
    type: string
    sql: ${TABLE}.tipo_especie ;;
  }

  dimension: tipo_valor_residual {
    group_label: "Especies PF"
    type: number
    sql: ${TABLE}.tipo_valor_residual ;;
  }
}



# VIEW ESPECIES PRESTAMO PARA MODELO ESTRELLA FCT_CERTIFICADOS_EN_GARANTIA

view: lkp_especies_prestamo {
  extends: [lkp_especies]
  view_label: "Datos MONEDA"

  dimension: descripcion {
    group_label: "Especies Préstamo"
    type: string
    sql: ${TABLE}.descripcion ;;
  }

  dimension: especie {
    group_label: "Especies Préstamo"
    type: string
    sql: ${TABLE}.especie ;;
  }

  dimension: subespecie {
    group_label: "Especies Préstamo"
    type: string
    sql: ${TABLE}.subespecie ;;
  }

  dimension: subtipo_especie {
    group_label: "Especies Préstamo"
    type: string
    sql: ${TABLE}.subtipo_especie ;;
  }

  dimension: tipo_especie {
    group_label: "Especies Préstamo"
    type: string
    sql: ${TABLE}.tipo_especie ;;
  }

  dimension: tipo_valor_residual {
    group_label: "Especies Préstamo"
    type: number
    sql: ${TABLE}.tipo_valor_residual ;;
  }
}
