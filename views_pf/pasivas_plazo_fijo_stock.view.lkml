view: pasivas_plazo_fijo_stock {
  sql_table_name: `bm-gcp-p1-dw.cdw_stgy.pasivas_plazo_fijo_stock`
    ;;

  filter: ult_mes_ult_dia {
    sql: IF(${lkp_fechas.flag_fin_mes} = "S" OR ${flag_ult_fecha} = "S", true, NULL) ;;
  }

  dimension: agente_financiero {
    type: string
    sql: ${TABLE}.agente_financiero ;;
  }

  dimension: banca {
    type: string
    sql: ${TABLE}.banca ;;
  }

  dimension: banco {
    type: string
    sql: ${TABLE}.banco ;;
  }

  dimension: canal_venta_pf {
    type: string
    sql: ${TABLE}.canal_venta_pf ;;
  }

  dimension: categoria {
    type: string
    sql: ${TABLE}.categoria ;;
  }

  dimension: centralizado {
    type: string
    sql: ${TABLE}.centralizado ;;
  }

  dimension: codigo_cliente {
    type: number
    sql: ${TABLE}.codigo_cliente ;;
  }

  dimension: division {
    type: string
    sql: ${TABLE}.division ;;
  }

  dimension: especie {
    type: string
    sql: ${TABLE}.especie ;;
  }

  dimension: estado_cuenta {
    type: string
    sql: ${TABLE}.estado_cuenta ;;
  }

  dimension: familia_productos {
    type: string
    sql: ${TABLE}.familia_productos ;;
  }

  dimension: fecha_key {
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: flag_ult_fecha {
    type: string
    sql: ${TABLE}.flag_ult_fecha ;;
  }

  dimension: flag_ult_mes {
    type: string
    sql: ${TABLE}.flag_ult_mes ;;
  }

  dimension: marca_uvi {
    type: string
    sql: ${TABLE}.marca_uvi ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }

  dimension: precancelable {
    type: string
    sql: ${TABLE}.precancelable ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.producto ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: sector {
    type: string
    sql: ${TABLE}.sector ;;
  }

  dimension: segmento {
    type: string
    sql: ${TABLE}.segmento ;;
  }

  dimension: subproducto {
    type: string
    sql: ${TABLE}.subproducto ;;
  }

  dimension: subsegmento {
    type: string
    sql: ${TABLE}.subsegmento ;;
  }

  dimension: suc_centralizado {
    type: string
    sql: ${TABLE}.suc_centralizado ;;
  }

  dimension: sucursal {
    type: string
    sql: ${TABLE}.sucursal ;;
  }

  dimension: sucursal_source {
    type: number
    sql: ${TABLE}.sucursal_source ;;
  }

  dimension: tipo_persona {
    type: string
    sql: ${TABLE}.tipo_persona ;;
  }

  dimension: tipo_producto {
    type: string
    sql: ${TABLE}.tipo_producto ;;
  }

  dimension: tipo_saldo {
    type: string
    sql: ${TABLE}.tipo_saldo ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: cant_clientes {
    type: count_distinct
    sql: ${TABLE}.cant_clientes ;;
  }

  measure: cant_pf {
    value_format_name: decimal_0
    type: count_distinct
    sql: ${TABLE}.cant_pf ;;
  }

  measure: capital {
    value_format_name: decimal_0
    type: sum
    sql: ${TABLE}.capital ;;
  }

  measure: saldo_diario {
    value_format_name: decimal_0
    type: sum
    sql: ${TABLE}.saldo_diario ;;
  }

  measure: saldo_promedio {
    value_format_name: decimal_0
    type: average
    sql: ${TABLE}.saldo_promedio ;;
  }
}
