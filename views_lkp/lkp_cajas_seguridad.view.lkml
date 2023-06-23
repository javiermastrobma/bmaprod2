view: lkp_cajas_seguridad {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_cajas_seguridad`
    ;;
  view_label: "Datos CAJA SEGURIDAD"

  dimension: caja_seguridad_key {
    hidden: yes
    type: number
    sql: ${TABLE}.caja_seguridad_key ;;
  }

  dimension: cuerpo {
    group_label: "Cajas de Seguridad"
    type: string
    sql: ${TABLE}.cuerpo ;;
  }

  dimension: descripcion {
    group_label: "Cajas de Seguridad"
    type: string
    sql: ${TABLE}.descripcion ;;
  }

  dimension: estado_caja_seguridad_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_caja_seguridad_key ;;
  }

  dimension: modelo {
    group_label: "Cajas de Seguridad"
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: numero_caja_seguridad {
    group_label: "Cajas de Seguridad"
    type: string
    sql: ${TABLE}.numero_caja_seguridad ;;
  }

  dimension: producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_key ;;
  }

  dimension: recinto {
    group_label: "Cajas de Seguridad"
    type: string
    sql: ${TABLE}.recinto ;;
  }

  dimension: sucursal_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: sucursal_cuenta_source {
    group_label: "Cajas de Seguridad"
    type: number
    sql: ${TABLE}.sucursal_cuenta_source ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
