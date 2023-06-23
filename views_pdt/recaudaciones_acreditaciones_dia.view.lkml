view: recaudaciones_acreditaciones_dia {
  derived_table: {
    datagroup_trigger: recaudaciones_acreditaciones_dia_datagroup
    sql: SELECT
      fe.fecha_key,
      fe.periodo,
      cc.codigo_cliente,
      cc.nombre,
      b.banca,
      b.segmento,
      b.subsegmento,
      b.categoria,
      "0" as origen_captura_source,
      re.descripcion forma_pago,
      "Cobranzas" grupo,
      "Recaudaciones" concepto,
      CONCAT("Recaudaciones", " ", re.descripcion) subconcepto,
      ofi.oficial_cuenta,
      sr.division,
      sr.region,
      sr.sucursal,
      sr.sucursal_source,
      0 as cantidad,
      SUM(fct.importe_recaudado) importe
      FROM fct_recaudaciones fct
      LEFT JOIN lkp_convenios co ON fct.convenio_key = co.convenio_key
      INNER JOIN lkp_clientes_completa cc ON fct.cliente_convenio_key = cc.cliente_key
      INNER JOIN lkp_bancas b ON cc.banca_comite_key = b.banca_key
      INNER JOIN lkp_fechas fe ON fct.fecha_pago_key = fe.fecha_key
      INNER JOIN lkp_formas_pago_recaudacion re ON re.forma_pago_recaudacion_key = fct.forma_pago_recaudacion_key
      LEFT JOIN lkp_oficiales_cuenta ofi ON cc.oficial_cuenta_key = ofi.oficial_cuenta_key
      LEFT JOIN lkp_sucursales_cuenta sr ON cc.sucursal_radicacion_key = sr.sucursal_cuenta_key
      WHERE
      fe.anio >= EXTRACT(YEAR FROM CURRENT_DATE()) -1
      and b.banca in ("Empresas", "Agro", "Megra", "Gobierno", "Corporativa")
      and re.descripcion in ("DEBITO EN CUENTA", "EFECTIVO", "TRANSFERENCIA POR CANAL")
      GROUP BY
      fe.fecha_key,
      fe.periodo,
      cc.codigo_cliente,
      cc.nombre,
      b.banca,
      b.segmento,
      b.subsegmento,
      b.categoria,
      origen_captura_source,
      forma_pago,
      grupo,
      concepto,
      subconcepto,
      ofi.oficial_cuenta,
      sr.division,
      sr.region,
      sr.sucursal,
      sr.sucursal_source,
      cantidad
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: fecha_key {
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: periodo {
    type: string
    sql: ${TABLE}.periodo ;;
  }

  dimension: codigo_cliente {
    type: number
    sql: ${TABLE}.codigo_cliente ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }

  dimension: banca {
    type: string
    sql: ${TABLE}.banca ;;
  }

  dimension: segmento {
    type: string
    sql: ${TABLE}.segmento ;;
  }

  dimension: subsegmento {
    type: string
    sql: ${TABLE}.subsegmento ;;
  }

  dimension: categoria {
    type: string
    sql: ${TABLE}.categoria ;;
  }

  dimension: origen_captura_source {
    type: number
    sql: ${TABLE}.origen_captura_source ;;
  }

  dimension: forma_pago {
    type: string
    sql: ${TABLE}.forma_pago ;;
  }

  dimension: grupo {
    type: string
    sql: ${TABLE}.grupo ;;
  }

  dimension: concepto {
    type: string
    sql: ${TABLE}.concepto ;;
  }

  dimension: subconcepto {
    type: string
    sql: ${TABLE}.subconcepto ;;
  }

  dimension: oficial_cuenta {
    type: string
    sql: ${TABLE}.oficial_cuenta ;;
  }

  dimension: division {
    type: string
    sql: ${TABLE}.division ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: sucursal {
    type: string
    sql: ${TABLE}.sucursal ;;
  }

  dimension: sucursal_source {
    type: number
    sql: ${TABLE}.sucursal_source ;;
  }

  dimension: cantidad {
    type: number
    sql: ${TABLE}.cantidad ;;
  }

  dimension: importe {
    type: number
    sql: ${TABLE}.importe ;;
  }

  set: detail {
    fields: [
      periodo,
      codigo_cliente,
      nombre,
      banca,
      segmento,
      subsegmento,
      categoria,
      forma_pago,
      grupo,
      concepto,
      subconcepto,
      oficial_cuenta,
      division,
      region,
      sucursal,
      sucursal_source,
      importe
    ]
  }
}
