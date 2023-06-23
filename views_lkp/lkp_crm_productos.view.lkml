view: lkp_crm_productos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_crm_productos`
    ;;

  dimension: crm_codigo_producto {
    type: string
    sql: ${TABLE}.crm_codigo_producto ;;
  }

  dimension: crm_contacto_rol {
    type: string
    sql: ${TABLE}.crm_contacto_rol ;;
  }

  dimension: crm_estado {
    type: string
    sql: ${TABLE}.crm_estado ;;
  }

  dimension: crm_familia_producto {
    type: string
    sql: ${TABLE}.crm_familia_producto ;;
  }

  dimension: crm_numero_producto {
    type: string
    sql: ${TABLE}.crm_numero_producto ;;
  }

  dimension: crm_paquete {
    type: string
    sql: ${TABLE}.crm_paquete ;;
  }

  dimension: crm_producto {
    type: string
    sql: ${TABLE}.crm_producto ;;
  }

  dimension: crm_producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.crm_producto_key ;;
  }

  dimension: crm_subproducto {
    type: string
    sql: ${TABLE}.crm_subproducto ;;
  }

  dimension: cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
