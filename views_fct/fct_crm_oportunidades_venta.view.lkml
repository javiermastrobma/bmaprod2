view: fct_crm_oportunidades_venta {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_crm_oportunidades_venta`
    ;;
    view_label: " Fct CRM Oportunidades Venta"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_crm_oportunidades_venta s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }
  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: campania_key {
    hidden: yes
    type: number
    sql: ${TABLE}.campania_key ;;
  }

  dimension: canal {
    type: string
    sql: ${TABLE}.canal ;;
  }

  dimension: catalogo_producto_crm_key {
    hidden: yes
    type: number
    sql: ${TABLE}.catalogo_producto_crm_key ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: codigo_prospecto_crm {
    type: string
    sql: ${TABLE}.codigo_prospecto_crm ;;
  }

  dimension: creada_por {
    type: string
    sql: ${TABLE}.creada_por ;;
  }

  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }

  dimension: division_equipo {
    type: string
    sql: ${TABLE}.division_equipo ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }

  dimension_group: fecha_cierre {
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
    sql: ${TABLE}.fecha_cierre ;;
  }

  dimension_group: fecha_creacion {
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
    sql: ${TABLE}.fecha_creacion ;;
  }

  dimension_group: fecha_etapa {
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
    sql: ${TABLE}.fecha_etapa ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension_group: fecha_modificacion {
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
    sql: ${TABLE}.fecha_modificacion ;;
  }

  dimension: id_oportunidad {
    type: string
    sql: ${TABLE}.id_oportunidad ;;
  }

  dimension: login_equipo {
    type: string
    sql: ${TABLE}.login_equipo ;;
  }

  dimension: metodo_venta {
    type: string
    sql: ${TABLE}.metodo_venta ;;
  }

  dimension: modificada_por {
    type: string
    sql: ${TABLE}.modificada_por ;;
  }

  dimension: monto_producto {
    type: number
    sql: ${TABLE}.monto_producto ;;
  }

  dimension: motivo_perdida {
    type: string
    sql: ${TABLE}.motivo_perdida ;;
  }

  dimension: nombre_equipo {
    type: string
    sql: ${TABLE}.nombre_equipo ;;
  }

  dimension: nombre_oportunidad {
    type: string
    sql: ${TABLE}.nombre_oportunidad ;;
  }

  dimension: objetivo_campania_key {
    hidden: yes
    type: number
    sql: ${TABLE}.objetivo_campania_key ;;
  }

  dimension: porcentaje_probabilidad {
    type: number
    sql: ${TABLE}.porcentaje_probabilidad ;;
  }

  dimension: puesto_equipo {
    type: string
    sql: ${TABLE}.puesto_equipo ;;
  }

  dimension: resultado_campania_key {
    hidden: yes
    type: number
    sql: ${TABLE}.resultado_campania_key ;;
  }

  dimension: resumen_cierre {
    type: string
    sql: ${TABLE}.resumen_cierre ;;
  }

  dimension: sucursal_generadora_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_generadora_key ;;
  }

  dimension: tipo_fuente {
    type: string
    sql: ${TABLE}.tipo_fuente ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
