view: lkp_clasificaciones_contables {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_clasificaciones_contables`
    ;;
    view_label: "Datos CUENTA CONTABLE"

  dimension: clasificacion_contable_key {
    hidden: yes
    type: number
    sql: ${TABLE}.clasificacion_contable_key ;;
  }

  dimension: codigo_cuenta {
    group_label: "Clasificaciones Contables"
    type: string
    sql: ${TABLE}.codigo_cuenta ;;
  }

  dimension: especie_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_key ;;
  }

  dimension: producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_key ;;
  }

  dimension: sector_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sector_key ;;
  }

  dimension: tipo_saldo {
    group_label: "Clasificaciones Contables"
    type: string
    sql: ${TABLE}.tipo_saldo ;;
  }

  dimension: tipo_saldo_factoring {
    group_label: "Clasificaciones Contables"
    type: string
    sql: ${TABLE}.tipo_saldo_factoring ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
