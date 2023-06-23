view: lkp_oficinas_gestion_campania {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_oficinas_gestion_campania`
    ;;
  view_label: "Datos CAMPAÑA"

  dimension: agrupador {
    group_label: "Oficinas Gestión Campaña"
    type: string
    sql: ${TABLE}.agrupador ;;
  }

  dimension: departamento {
    group_label: "Oficinas Gestión Campaña"
    type: string
    sql: ${TABLE}.departamento ;;
  }

  dimension: descripcion_oficina_gestion {
    group_label: "Oficinas Gestión Campaña"
    type: string
    sql: ${TABLE}.descripcion_oficina_gestion ;;
  }

  dimension: division {
    group_label: "Oficinas Gestión Campaña"
    type: string
    sql: ${TABLE}.division ;;
  }

  dimension: localidad {
    group_label: "Oficinas Gestión Campaña"
    type: string
    sql: ${TABLE}.localidad ;;
  }

  dimension: oficina_gestion {
    group_label: "Oficinas Gestión Campaña"
    type: string
    sql: ${TABLE}.oficina_gestion ;;
  }

  dimension: oficina_gestion_campania_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficina_gestion_campania_key ;;
  }

  dimension: provincia {
    group_label: "Oficinas Gestión Campaña"
    type: string
    sql: ${TABLE}.provincia ;;
  }

  dimension: region {
    group_label: "Oficinas Gestión Campaña"
    type: string
    sql: ${TABLE}.region ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
