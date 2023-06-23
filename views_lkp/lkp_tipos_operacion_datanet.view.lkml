view: lkp_tipos_operacion_datanet {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_tipos_operacion_datanet`
    ;;
  view_label: "Otras Dimensiones"

  dimension: abreviatura {
    group_label: "Tipos Operación Datanet"
    type: string
    sql: ${TABLE}.abreviatura ;;
  }

  dimension: flag_comision {
    group_label: "Tipos Operación Datanet"
    type: string
    sql: ${TABLE}.flag_comision ;;
  }

  dimension: flag_creditos {
    group_label: "Tipos Operación Datanet"
    type: string
    sql: ${TABLE}.flag_creditos ;;
  }

  dimension: flag_debitos {
    group_label: "Tipos Operación Datanet"
    type: string
    sql: ${TABLE}.flag_debitos ;;
  }

  dimension: nombre {
    group_label: "Tipos Operación Datanet"
    type: string
    sql: ${TABLE}.nombre ;;
  }

  dimension: tipo_operacion_datanet {
    group_label: "Tipos Operación Datanet"
    type: number
    sql: ${TABLE}.tipo_operacion_datanet ;;
  }

  dimension: tipo_operacion_datanet_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_operacion_datanet_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
