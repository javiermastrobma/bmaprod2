view: lkp_tipos_operacion_canal_digital {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_tipos_operacion_canal_digital`
    ;;
  view_label: "Datos DIGITAL"

  dimension: abreviacion_operacion_canal {
    group_label: "Tipos Operación Canal Digital"
    type: string
    sql: ${TABLE}.abreviacion_operacion_canal ;;
  }

  dimension: descripcion_tipo {
    group_label: "Tipos Operación Canal Digital"
    type: string
    sql: ${TABLE}.descripcion_tipo ;;
  }

  dimension: grupo_operacion_canal {
    group_label: "Tipos Operación Canal Digital"
    type: string
    sql: ${TABLE}.grupo_operacion_canal ;;
  }

  dimension: subgrupo_operacion_canal {
    group_label: "Tipos Operación Canal Digital"
    type: string
    sql: ${TABLE}.subgrupo_operacion_canal ;;
  }

  dimension: tipo_operacion_canal {
    group_label: "Tipos Operación Canal Digital"
    type: string
    sql: ${TABLE}.tipo_operacion_canal ;;
  }

  dimension: tipo_operacion_canal_digital_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_operacion_canal_digital_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
