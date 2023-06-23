view: pago_a_proveedores {
  derived_table: {
    datagroup_trigger: pago_a_proveedores_datagroup
    sql: SELECT
      f.fecha_key,
      f.periodo,
      cc.codigo_cliente,
      cc.nombre,
      b.banca,
      b.segmento,
      b.subsegmento,
      b.categoria,
      "0" as origen_captura_source,
      mp.modalidad_pago forma_pago,
      "Pagos" as grupo,
      "Pago a Proveedores - Plataforma Macro" as concepto,
      CASE WHEN mp.modalidad_pago LIKE "%ELECTRONICO%" OR mp.modalidad_pago LIKE "%ECHEQ%" THEN "PP3 Cheque Electronico" ELSE "PP3 Cheque Fisico" END as subconcepto,
      ofi.oficial_cuenta,
      sr.division,
      sr.region,
      sr.sucursal,
      sr.sucursal_source,
      0 as cantidad,
      SUM(opp.monto_pagado) as importe
      FROM fct_ordenes_pago_proveedores opp
      LEFT JOIN lkp_clientes_completa cc ON opp.cliente_key = cc.cliente_key
      LEFT JOIN lkp_bancas b ON cc.banca_comite_key = b.banca_key
      LEFT JOIN lkp_fechas f ON opp.fecha_pago = f.fecha
      LEFT JOIN lkp_modalidades_pago mp ON opp.modalidad_pago_key = mp.modalidad_pago_key
      LEFT JOIN lkp_oficiales_cuenta ofi ON cc.oficial_cuenta_key = ofi.oficial_cuenta_key
      LEFT JOIN lkp_sucursales_cuenta sr ON cc.sucursal_radicacion_key = sr.sucursal_cuenta_key
      WHERE
        f.anio >= EXTRACT(YEAR FROM CURRENT_DATE()) -1 AND f.periodo < CAST(FORMAT_DATE("%Y-%m", CURRENT_DATE()) as STRING)
        and opp.numero_cheque is NOT NULL
        and b.banca in ("Empresas", "Agro", "Megra", "Gobierno", "Corporativa")
        and mp.modalidad_pago NOT in ("ACREDITACION EN CUENTA", "ACREDITACION EN CUENTA OTROS BANCOS")
      GROUP BY
      f.fecha_key,
      f.periodo,
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
