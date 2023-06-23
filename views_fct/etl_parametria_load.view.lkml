view: etl_parametria_load {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.etl_parametria_load`
    ;;

  dimension: dataset {
    type: string
    description: "Dataset de la tabla"
    sql: ${TABLE}.Dataset ;;
  }

  dimension: nombre_tabla {
    type: string
    description: "Tabla a cargar"
    sql: ${TABLE}.Nombre_Tabla ;;
  }

  dimension: opcion_carga {
    type: string
    description: "Truncate / Append"
    sql: ${TABLE}.Opcion_Carga ;;
  }

  dimension: query_storage {
    type: string
    description: "Path GCS donde se encuentra almacenado el query que debe ejecutarse posterior a la carga de datos"
    sql: ${TABLE}.Query_Storage ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
