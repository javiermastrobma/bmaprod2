view: lkp_codigos_valor_prestamos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_codigos_valor_prestamos`
    ;;
    view_label: "Datos PRESTAMO"

  dimension: codigo_valor {
    group_label: "Códigos Valor Préstamos"
    type: number
    sql: ${TABLE}.codigo_valor ;;
  }

  dimension: codigo_valor_descripcion {
    group_label: "Códigos Valor Préstamos"
    type: string
    sql: ${TABLE}.codigo_valor_descripcion ;;
  }

  dimension: codigo_valor_key {
    hidden: yes
    type: number
    sql: ${TABLE}.codigo_valor_key ;;
  }

  dimension: concepto {
    group_label: "Códigos Valor Préstamos"
    type: string
    sql: ${TABLE}.concepto ;;
  }

  dimension: estado {
    group_label: "Códigos Valor Préstamos"
    type: string
    sql: ${TABLE}.estado ;;
  }

  dimension: rubro {
    group_label: "Códigos Valor Préstamos"
    type: string
    sql: ${TABLE}.rubro ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
