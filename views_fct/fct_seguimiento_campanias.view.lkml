view: fct_seguimiento_campanias {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_seguimiento_campanias`
    ;;
  view_label: " Fct Seguimiento Campañas"

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_seguimiento_campanias s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

  dimension: banca_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banca_key ;;
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

  dimension: canal_final {
    type: string
    sql: ${TABLE}.canal_final ;;
  }

  dimension: canal_gestion {
    type: string
    sql: ${TABLE}.canal_gestion ;;
  }

  dimension: cantidad_contactado {
    type: number
    sql: ${TABLE}.cantidad_contactado ;;
  }

  dimension: cantidad_contactos {
    type: number
    sql: ${TABLE}.cantidad_contactos ;;
  }

  dimension: clase_objetivo {
    type: string
    sql: ${TABLE}.clase_objetivo ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: costo {
    type: number
    sql: ${TABLE}.costo ;;
  }

  dimension: estado_miembro {
    type: string
    sql: ${TABLE}.estado_miembro ;;
  }

  dimension_group: fecha_creacion_miembro {
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
    sql: ${TABLE}.fecha_creacion_miembro ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: fecha_primer_contacto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_primer_contacto_key ;;
  }

  dimension_group: fecha_terminado {
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
    sql: ${TABLE}.fecha_terminado ;;
  }

  dimension_group: fecha_ultima_mod_miembro {
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
    sql: ${TABLE}.fecha_ultima_mod_miembro ;;
  }

  dimension: fecha_ultimo_contacto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_ultimo_contacto_key ;;
  }

  dimension: flag_terminado {
    type: string
    sql: ${TABLE}.flag_terminado ;;
  }

  dimension: marca_toma_producto {
    type: string
    sql: ${TABLE}.marca_toma_producto ;;
  }

  dimension: nombre_propietario {
    type: string
    sql: ${TABLE}.nombre_propietario ;;
  }

  dimension: objetivo_campania_key {
    hidden: yes
    type: number
    sql: ${TABLE}.objetivo_campania_key ;;
  }

  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }

  dimension: oficial_campania_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_campania_key ;;
  }

  dimension: oficina_gestion_campania_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficina_gestion_campania_key ;;
  }

  dimension: programa_campania_key {
    hidden: yes
    type: number
    sql: ${TABLE}.programa_campania_key ;;
  }

  dimension: puesto_propietario {
    type: string
    sql: ${TABLE}.puesto_propietario ;;
  }

  dimension: score_1 {
    type: string
    sql: ${TABLE}.score_1 ;;
  }

  dimension: score_2 {
    type: string
    sql: ${TABLE}.score_2 ;;
  }

  dimension: segmento_crm {
    type: string
    sql: ${TABLE}.segmento_crm ;;
  }

  dimension: subsegmento_crm {
    type: string
    sql: ${TABLE}.subsegmento_crm ;;
  }

  dimension: tiene_comentario {
    type: string
    sql: ${TABLE}.tiene_comentario ;;
  }

  dimension: tratamiento_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tratamiento_key ;;
  }

  dimension: ultima_respuesta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.ultima_respuesta_key ;;
  }

  dimension: ultimo_resultado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.ultimo_resultado_key ;;
  }

  dimension: usuario_ultima_mod_miembro {
    hidden: yes
    type: string
    sql: ${TABLE}.usuario_ultima_mod_miembro ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
