view: lkp_catalogo_productos_crm {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_catalogo_productos_crm`
    ;;
  view_label: "Datos RECLAMO"

  dimension: catalogo_producto_crm_key {
    hidden: yes
    type: number
    sql: ${TABLE}.catalogo_producto_crm_key ;;
  }

  dimension: codigo_producto {
    group_label: "Catálogo Productos CRM"
    type: string
    sql: ${TABLE}.codigo_producto ;;
  }

  dimension: descripcion_producto {
    group_label: "Catálogo Productos CRM"
    type: string
    sql: ${TABLE}.descripcion_producto ;;
  }

  dimension: familia_producto {
    group_label: "Catálogo Productos CRM"
    type: string
    sql: ${TABLE}.familia_producto ;;
  }

  dimension: flg_crediticio {
    group_label: "Catálogo Productos CRM"
    type: string
    sql: ${TABLE}.flg_crediticio ;;
  }

  dimension: modulo_cobis {
    group_label: "Catálogo Productos CRM"
    type: string
    sql: ${TABLE}.modulo_cobis ;;
  }

  dimension: nombre_producto {
    group_label: "Catálogo Productos CRM"
    type: string
    sql: ${TABLE}.nombre_producto ;;
  }

  dimension: producto_cobis {
    group_label: "Catálogo Productos CRM"
    type: string
    sql: ${TABLE}.producto_cobis ;;
  }

  dimension: subproducto {
    group_label: "Catálogo Productos CRM"
    type: string
    sql: ${TABLE}.subproducto ;;
  }

  dimension: tipo_producto {
    group_label: "Catálogo Productos CRM"
    type: string
    sql: ${TABLE}.tipo_producto ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
