view: fct_solicitudes_tc {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_solicitudes_tc`
    ;;
  view_label: " Fct Solicitudes Tc"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_solicitudes_tc s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: canalventa {
    type: string
    sql: ${TABLE}.canalventa ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: convenio_key {
    hidden: yes
    type: number
    sql: ${TABLE}.convenio_key ;;
  }

  dimension: cuenta_tc_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_tc_key ;;
  }

  dimension: entidad {
    type: number
    sql: ${TABLE}.entidad ;;
  }

  dimension: estado_solicitud_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_solicitud_key ;;
  }

  dimension_group: fecha_envio {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.fecha_envio ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension_group: fecha_retorno {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.fecha_retorno ;;
  }

  dimension: marca_key {
    hidden: yes
    type: number
    sql: ${TABLE}.marca_key ;;
  }

  dimension: numero_envio_marca {
    type: number
    sql: ${TABLE}.numero_envio_marca ;;
  }

  dimension: numero_paquete {
    type: number
    sql: ${TABLE}.numero_paquete ;;
  }

  dimension: numero_solicitud {
    type: number
    sql: ${TABLE}.numero_solicitud ;;
  }

  dimension: numero_tc {
    type: string
    sql: ${TABLE}.numero_tc ;;
  }

  dimension: promotor {
    type: string
    sql: ${TABLE}.promotor ;;
  }

  dimension: tipo_solicitud {
    type: string
    sql: ${TABLE}.tipo_solicitud ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
