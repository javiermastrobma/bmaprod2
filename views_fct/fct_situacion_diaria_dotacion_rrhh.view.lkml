view: fct_situacion_diaria_dotacion_rrhh {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_situacion_diaria_dotacion_rrhh`
    ;;
    view_label: " Fct Situación Diaria Dotación RRHH"

  dimension: afiliacion_sindical_rrhh_key {
    hidden: yes
    type: number
    sql: ${TABLE}.afiliacion_sindical_rrhh_key ;;
  }

  dimension: area_destino_key {
    hidden: yes
    type: number
    sql: ${TABLE}.area_destino_key ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: cantidad_dotacion {
    type: number
    sql: ${TABLE}.cantidad_dotacion ;;
  }

  dimension: categoria_rrhh_key {
    hidden: yes
    type: number
    sql: ${TABLE}.categoria_rrhh_key ;;
  }

  dimension: dotacion_rrhh_key {
    hidden: yes
    type: number
    sql: ${TABLE}.dotacion_rrhh_key ;;
  }

  dimension: fecha_fin_contrato_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_fin_contrato_key ;;
  }

  dimension: fecha_inicio_puesto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_inicio_puesto_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_situacion_diaria_dotacion_rrhh s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

  dimension: login_usuario {
    type: string
    sql: ${TABLE}.login_usuario ;;
  }

  dimension: puesto_rrhh_key {
    hidden: yes
    type: number
    sql: ${TABLE}.puesto_rrhh_key ;;
  }

  dimension: seccional_gremial_rrhh_key {
    hidden: yes
    type: number
    sql: ${TABLE}.seccional_gremial_rrhh_key ;;
  }

  dimension: sucursal_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: tipo_contrato_rrhh_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_contrato_rrhh_key ;;
  }

  dimension: unidad_eo_rrhh_key {
    hidden: yes
    type: number
    sql: ${TABLE}.unidad_eo_rrhh_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
