view: lkp_sucursales_radicacion_embebed {
  fields_hidden_by_default: yes
  sql_table_name: `bm-gcp-p1-dw.looker_embebed.lkp_sucursales_radicacion`
    ;;

  dimension: agente_financiero {
    type: string
    sql: ${TABLE}.agente_financiero ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: categoria_bcra {
    type: string
    sql: ${TABLE}.categoria_bcra ;;
  }

  dimension: codigo_region_contable {
    type: string
    sql: ${TABLE}.codigo_region_contable ;;
  }

  dimension: departamento {
    type: string
    sql: ${TABLE}.departamento ;;
  }

  dimension: dimension {
    type: string
    sql: ${TABLE}.dimension ;;
  }

  dimension: division {
    hidden: no
    label: "División Cuenta"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Cuenta"
    type: string
    sql: ${TABLE}.division ;;
  }

  dimension: inactiva {
    type: string
    sql: ${TABLE}.inactiva ;;
  }

  dimension: latitud {
    type: number
    sql: ${TABLE}.latitud ;;
  }

  dimension: localidad {
    type: string
    sql: ${TABLE}.localidad ;;
  }

  dimension: longitud {
    type: number
    sql: ${TABLE}.longitud ;;
  }

  dimension: provincia {
    type: string
    sql: ${TABLE}.provincia ;;
  }

  dimension: region {
    hidden: no
    label: "Region Cuenta"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Cuenta"
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: region_contable {
    type: string
    sql: ${TABLE}.region_contable ;;
  }

  dimension: sucursal {
    hidden: no
    label: "Sucursal Cuenta"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Cuenta"
    type: string
    sql: ${TABLE}.sucursal ;;
  }

  dimension: sucursal_cuenta_source {
    hidden: no
    label: "Sucursal Cuenta Source"
    view_label: "Datos GeoLOCALIZACIÓN"
    group_label: "Sucursal Cuenta"
    type: string
    sql: CONCAT(${sucursal_source}, " ", ${sucursal}) ;;
  }

  dimension: sucursal_anterior {
    type: string
    sql: ${TABLE}.sucursal_anterior ;;
  }

  dimension: sucursal_radicacion_key {
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: sucursal_source {
    type: number
    sql: ${TABLE}.sucursal_source ;;
  }

  dimension: sucursal_source_anterior {
    type: number
    sql: ${TABLE}.sucursal_source_anterior ;;
  }

  dimension: superficie_financiera {
    type: number
    sql: ${TABLE}.superficie_financiera ;;
  }

  dimension: tasa_comision_canje {
    type: number
    sql: ${TABLE}.tasa_comision_canje ;;
  }

  dimension: tipo_sucursal {
    type: string
    sql: ${TABLE}.tipo_sucursal ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
