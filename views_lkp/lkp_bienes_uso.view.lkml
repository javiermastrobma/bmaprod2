view: lkp_bienes_uso {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_bienes_uso`
    ;;
    view_label: "Otras Dimensiones"

  dimension: area_destino_key {
    hidden: yes
    type: number
    sql: ${TABLE}.area_destino_key ;;
  }

  dimension: bien_uso_key {
    hidden: yes
    type: number
    sql: ${TABLE}.bien_uso_key ;;
  }

  dimension: categoria_bien {
    group_label: "Bienes de Uso"
    type: string
    sql: ${TABLE}.categoria_bien ;;
  }

  dimension: codigo_activo {
    group_label: "Bienes de Uso"
    type: string
    sql: ${TABLE}.codigo_activo ;;
  }

  dimension: codigo_activo_pre_fusion {
    group_label: "Bienes de Uso"
    type: string
    sql: ${TABLE}.codigo_activo_pre_fusion ;;
  }

  dimension: descripcion {
    group_label: "Bienes de Uso"
    type: string
    sql: ${TABLE}.descripcion ;;
  }

  dimension_group: fecha_alta {
    group_label: "Bienes de Uso"
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
    sql: ${TABLE}.fecha_alta ;;
  }

  dimension_group: fecha_baja {
    group_label: "Bienes de Uso"
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
    sql: ${TABLE}.fecha_baja ;;
  }

  dimension_group: fecha_capitalizacion_activo {
    group_label: "Bienes de Uso"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_capitalizacion_activo ;;
  }

  dimension_group: fecha_contabilizacion {
    group_label: "Bienes de Uso"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_contabilizacion ;;
  }

  dimension_group: fecha_inicio_amortizacion {
    group_label: "Bienes de Uso"
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
    sql: ${TABLE}.fecha_inicio_amortizacion ;;
  }

  dimension: perfil_bien {
    group_label: "Bienes de Uso"
    type: string
    sql: ${TABLE}.perfil_bien ;;
  }

  dimension: plan_cuentas_activo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.plan_cuentas_activo_key ;;
  }

  dimension: unidad_negocio {
    group_label: "Bienes de Uso"
    type: string
    sql: ${TABLE}.unidad_negocio ;;
  }

  dimension: valor_origen {
    group_label: "Bienes de Uso"
    type: number
    sql: ${TABLE}.valor_origen ;;
  }

  dimension: valor_origen_actualizacion {
    group_label: "Bienes de Uso"
    type: number
    sql: ${TABLE}.valor_origen_actualizacion ;;
  }

  dimension: vida_util {
    group_label: "Bienes de Uso"
    type: number
    sql: ${TABLE}.vida_util ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
