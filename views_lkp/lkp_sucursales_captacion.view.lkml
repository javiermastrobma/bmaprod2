view: lkp_sucursales_captacion {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_sucursales_captacion`
    ;;
  view_label: "Datos GeoLOCALIZACIÓN"

  dimension: agente_financiero {
    group_label: "Sucursal Captación"
    type: string
    sql: ${TABLE}.agente_financiero ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: categoria_bcra {
    group_label: "Sucursal Captación"
    type: string
    sql: ${TABLE}.categoria_bcra ;;
  }

  dimension: codigo_region_contable {
    group_label: "Sucursal Captación"
    type: string
    sql: ${TABLE}.codigo_region_contable ;;
  }

  dimension: departamento {
    group_label: "Sucursal Captación"
    type: string
    sql: ${TABLE}.departamento ;;
  }

  dimension: dimension {
    group_label: "Sucursal Captación"
    type: string
    sql: ${TABLE}.dimension ;;
  }

  dimension: division {
    group_label: "Sucursal Captación"
    type: string
    sql: ${TABLE}.division ;;
  }

  dimension: inactiva {
    group_label: "Sucursal Captación"
    type: string
    sql: ${TABLE}.inactiva ;;
  }

  dimension: latitud {
    group_label: "Sucursal Captación"
    type: number
    sql: ${TABLE}.latitud ;;
  }

  dimension: localidad {
    group_label: "Sucursal Captación"
    type: string
    sql: ${TABLE}.localidad ;;
  }

  dimension: longitud {
    group_label: "Sucursal Captación"
    type: number
    sql: ${TABLE}.longitud ;;
  }

  dimension: provincia {
    group_label: "Sucursal Captación"
    type: string
    sql: ${TABLE}.provincia ;;
  }

  dimension: region {
    group_label: "Sucursal Captación"
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: region_contable {
    group_label: "Sucursal Captación"
    type: string
    sql: ${TABLE}.region_contable ;;
  }

  dimension: sucursal {
    group_label: "Sucursal Captación"
    type: string
    sql: ${TABLE}.sucursal ;;
  }

  dimension: sucursal_anterior {
    group_label: "Sucursal Captación"
    type: string
    sql: ${TABLE}.sucursal_anterior ;;
  }

  dimension: sucursal_captacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_captacion_key ;;
  }

  dimension: sucursal_source {
    group_label: "Sucursal Captación"
    type: number
    sql: ${TABLE}.sucursal_source ;;
  }

  dimension: sucursal_source_anterior {
    group_label: "Sucursal Captación"
    type: number
    sql: ${TABLE}.sucursal_source_anterior ;;
  }

  dimension: superficie_financiera {
    group_label: "Sucursal Captación"
    type: number
    sql: ${TABLE}.superficie_financiera ;;
  }

  dimension: tasa_comision_canje {
    group_label: "Sucursal Captación"
    type: number
    sql: ${TABLE}.tasa_comision_canje ;;
  }

  dimension: tipo_sucursal {
    group_label: "Sucursal Captación"
    type: string
    sql: ${TABLE}.tipo_sucursal ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
