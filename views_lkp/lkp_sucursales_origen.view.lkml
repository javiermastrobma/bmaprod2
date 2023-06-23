view: lkp_sucursales_origen {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_sucursales_origen`
    ;;

dimension: agente_financiero {
  hidden: yes
  type: string
  sql: ${TABLE}.agente_financiero ;;
}

dimension: banco_key {
  hidden: yes
  type: number
  sql: ${TABLE}.banco_key ;;
}

dimension: categoria_bcra {
  hidden: yes
  type: string
  sql: ${TABLE}.categoria_bcra ;;
}

dimension: codigo_region_contable {
  hidden: yes
  type: string
  sql: ${TABLE}.codigo_region_contable ;;
}

dimension: departamento {
  hidden: yes
  type: string
  sql: ${TABLE}.departamento ;;
}

dimension: dimension {
  hidden: yes
  type: string
  sql: ${TABLE}.dimension ;;
}

dimension: division {
  label: "División Origen"
  view_label: "Datos GeoLOCALIZACIÓN"
  group_label: "Sucursal Origen de la Transacción"
  type: string
  sql: ${TABLE}.division ;;
}

dimension: inactiva {
  hidden: yes
  type: string
  sql: ${TABLE}.inactiva ;;
}

dimension: latitud {
  hidden: yes
  type: number
  sql: ${TABLE}.latitud ;;
}

dimension: localidad {
  hidden: yes
  type: string
  sql: ${TABLE}.localidad ;;
}

dimension: longitud {
  hidden: yes
  type: number
  sql: ${TABLE}.longitud ;;
}

dimension: provincia {
  hidden: yes
  type: string
  sql: ${TABLE}.provincia ;;
}

dimension: region {
  label: "Region Origen"
  view_label: "Datos GeoLOCALIZACIÓN"
  group_label: "Sucursal Origen de la Transacción"
  type: string
  sql: ${TABLE}.region ;;
}

dimension: region_contable {
  hidden: yes
  type: string
  sql: ${TABLE}.region_contable ;;
}

dimension: sucursal {
  label: "Sucursal Origen"
  view_label: "Datos GeoLOCALIZACIÓN"
  group_label: "Sucursal Origen de la Transacción"
  type: string
  sql: ${TABLE}.sucursal ;;
}

dimension: sucursal_anterior {
  hidden: yes
  type: string
  sql: ${TABLE}.sucursal_anterior ;;
}

dimension: sucursal_origen_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_origen_key ;;
}

dimension: sucursal_source {
  label: "Region Origen Source"
  view_label: "Datos GeoLOCALIZACIÓN"
  group_label: "Sucursal Origen de la Transacción"
  type: number
  sql: ${TABLE}.sucursal_source ;;
}

dimension: sucursal_source_anterior {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_source_anterior ;;
}

dimension: superficie_financiera {
  hidden: yes
  type: number
  sql: ${TABLE}.superficie_financiera ;;
}

dimension: tasa_comision_canje {
  hidden: yes
  type: number
  sql: ${TABLE}.tasa_comision_canje ;;
}

dimension: tipo_sucursal {
  hidden: yes
  type: string
  sql: ${TABLE}.tipo_sucursal ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
