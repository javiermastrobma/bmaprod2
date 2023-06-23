view: recaudaciones {
  derived_table: {
    datagroup_trigger: recaudaciones_datagroup
    sql: SELECT
f.fecha_key,
f.periodo,
cc.codigo_cliente,
cc.nombre,
b.banca,
b.segmento,
b.subsegmento,
b.categoria,
oc.origen_captura_source,
oc.origen_captura_descripcion forma_pago,
'Cobranzas' grupo,
'Valores al Cobro' concepto,
CASE WHEN oc.origen_captura_descripcion LIKE '%ELECTRONICO%' OR oc.origen_captura_descripcion LIKE '%ECHEQ%' THEN 'VAC Cheque Electronico' ELSE 'VAC Cheque Fisico' END as subconcepto,
ofi.oficial_cuenta,
sr.division,
sr.region,
sr.sucursal,
sr.sucursal_Source,
0 as cantidad,
sum(sc.importe) as importe
FROM fct_seguimiento_cheques sc
LEFT JOIN lkp_clientes_completa cc ON sc.cliente_key = cc.cliente_key
LEFT JOIN lkp_bancas b ON cc.banca_comite_key = b.banca_key
LEFT JOIN lkp_origenes_captura oc ON sc.origen_captura_key = oc.origen_captura_key
LEFT JOIN lkp_fechas f ON sc.fecha_cancelacion_key = f.fecha_key
LEFT JOIN lkp_estados_cheque ch ON sc.estado_cheque_key = ch.estado_cheque_key
LEFT JOIN lkp_cuentas c ON sc.cuenta_aviso = c.codigo_cuenta
LEFT JOIN lkp_oficiales_cuenta ofi on cc.oficial_cuenta_key = ofi.oficial_cuenta_key
LEFT JOIN lkp_sucursales_cuenta sr on (cc.sucursal_radicacion_key = sr.sucursal_cuenta_key)
WHERE
f.anio >= EXTRACT(YEAR FROM CURRENT_DATE()) -1
and b.banca in ('Empresas', 'Agro', 'Megra','Gobierno','Corporativa')
and (ch.estado_cheque_descripcion is null or ch.estado_cheque_descripcion in ("Conforme"))
and oc.origen_captura_descripcion in ("RECA-DEPOSITOREMOTO", "RECA-SUCURSALES", "VALDIMOR-RECA", "DESCUENTO-RECA-REMOTO", "REDEPOSITO-DEPOSITOREMOTO", "REDEPOSITO-RECASUCURSALES", "RECA GESTION AL COBRO DE ECHEQS INGRESADOS POR RECA", "REDEPOSITO-DESC-RECA-REMOTO", "RECAUDACIONES", "REDEPOSITO_VALDIMOR-RECA", "RECA RE DEPOSITO DE ECHEQS POR RECA")

GROUP BY
f.fecha_key,
f.periodo,
cc.codigo_cliente,
cc.nombre,
b.banca,
b.segmento,
b.subsegmento,
b.categoria,
oc.origen_captura_source,
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
