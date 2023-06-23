view: trx_causal {
  derived_table: {
    datagroup_trigger: trx_causal_datagroup
    sql: SELECT
      fe.fecha_key,
      fe.periodo,
      cli.codigo_cliente,
      cli.nombre,
      ba.banca,
      ba.segmento,
      ba.subsegmento,
      ba.categoria,
      "0" as origen_captura_source,
      cau.subtema_1 forma_pago,
      cau.Agrupacion_Cash_Nivel_1 as grupo,
      CASE WHEN cau.causal = 2027 AND txn.debito_credito = "D" THEN "Pago a Proveedores - Plataforma Interbanking"
           WHEN cau.causal = 2027 AND txn.concepto_transaccion like '%AMER%EXP%30574816870' THEN 'Acreditación de Cupones'
           WHEN (cau.causal = 2027 AND txn.concepto_transaccion not like '%AMER%EXP%30574816870' AND txn.debito_credito = 'C') THEN 'Transferencias Créditos'
           WHEN (cau.causal = 3956 AND txn.concepto_transaccion = 'CCERR ARGENPAY SA 30716370964 CIRC.CERRADO') THEN 'Viumi'
           WHEN (cau.causal in (1940,3956,4231) AND txn.debito_credito= 'C' AND txn.concepto_transaccion not in ('CCERR ARGENPAY SA 30716370964 CIRC.CERRADO')) THEN 'Transferencias Créditos'
           else cau.Agrupacion_Cash_Nivel_2 END as concepto,
      case WHEN cau.causal = 2027 AND txn.debito_credito= 'D' THEN 'Pago a Proveedores - Plataforma Interbanking'
           WHEN cau.causal = 2027 AND txn.concepto_transaccion like '%AMER%EXP%30574816870' THEN 'ACup_Amex'
           WHEN (cau.causal = 2027 AND txn.concepto_transaccion not like '%AMER%EXP%30574816870' AND txn.debito_credito= 'C') THEN 'Datanet Créditos'
           WHEN (cau.causal = 3956 AND txn.concepto_transaccion = 'CCERR ARGENPAY SA 30716370964 CIRC.CERRADO') THEN 'Viumi'
           WHEN (cau.causal in (1940,3956,4231) AND txn.debito_credito= 'C' AND txn.concepto_transaccion not in ('CCERR ARGENPAY SA 30716370964 CIRC.CERRADO')) THEN 'Plataforma Macro'
           ELSE cau.agrupacion_cash_nivel_3 END as subconcepto,
      ofi.oficial_cuenta,
      sr.division,
      sr.region,
      sr.sucursal,
      sr.sucursal_source,
      count(1) as cantidad,
      SUM(importe_transaccion_mn) importe
      FROM fct_transacciones txn
      INNER JOIN lkp_fechas fe ON txn.fecha_key = fe.fecha_key
      INNER JOIN lkp_causales cau ON txn.causal_key = cau.causal_key
      INNER JOIN lkp_cuentas cu ON txn.cuenta_key = cu.cuenta_key
      INNER JOIN lkp_clientes_completa cli ON cu.cliente_key = cli.cliente_key
      INNER JOIN lkp_bancas ba ON cli.banca_comite_key = ba.banca_key
      LEFT JOIN lkp_oficiales_cuenta ofi ON cli.oficial_cuenta_key = ofi.oficial_cuenta_key
      LEFT JOIN lkp_sucursales_cuenta sr ON cli.sucursal_radicacion_key = sr.sucursal_cuenta_key
      WHERE
        txn.flag_reversa = "0"
        and ((cau.causal IN (23, 1552, 4196, 196, 696, 3696) and txn.debito_credito = "D" and txn.concepto_transaccion like "%AFIP%") OR IFNULL(cau.causal, 0) NOT in (23, 1552, 4196, 196, 696, 3696))
        and fe.anio >= EXTRACT(YEAR FROM CURRENT_DATE()) -1
        and ba.banca in ("Empresas", "Agro", "Megra", "Gobierno", "Corporativa")
        and cau.agrupacion_cash_nivel_2 != "Valores al Cobro"
        and cau.agrupacion_cash_nivel_1 != "A Determinar"
      GROUP BY
      fe.fecha_key,
      fe.periodo,
      cli.codigo_cliente,
      cli.nombre,
      ba.banca,
      ba.segmento,
      ba.subsegmento,
      ba.categoria,
      origen_captura_source,
      forma_pago,
      grupo,
      concepto,
      subconcepto,
      ofi.oficial_cuenta,
      sr.division,
      sr.region,
      sr.sucursal,
      sr.sucursal_source
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
    value_format_name: decimal_0
  }

  dimension: importe {
    type: number
    sql: ${TABLE}.importe ;;
    value_format_name: decimal_0
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
