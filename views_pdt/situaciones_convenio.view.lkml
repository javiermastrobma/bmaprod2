view: situaciones_convenio {
  derived_table: {
    datagroup_trigger: situaciones_convenio_datagroup
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
      "N/A" forma_pago,
      gc.agrupacion_cash_nivel_1 as grupo,
      gc.agrupacion_cash_nivel_2 as concepto,
      gc.agrupacion_cash_nivel_3 as subconcepto,
      ofi.oficial_cuenta,
      sr.division,
      sr.region,
      sr.sucursal,
      sr.sucursal_source,
      sum(sit.cantidad_operaciones) as cantidad,
      sum(sit.importe_total_operaciones*cot.avg_cotizacion) importe
      FROM fct_situaciones_convenios sit
      INNER JOIN lkp_fechas fe ON sit.fecha_key = fe.fecha_key
      INNER JOIN lkp_clientes_completa cli ON sit.cliente_key = cli.cliente_key
      INNER JOIN lkp_bancas ba ON cli.banca_comite_key = ba.banca_key
      LEFT JOIN lkp_oficiales_cuenta ofi ON cli.oficial_cuenta_key = ofi.oficial_cuenta_key
      LEFT JOIN lkp_sucursales_cuenta sr ON cli.sucursal_radicacion_key = sr.sucursal_cuenta_key
      INNER JOIN lkp_convenios conv ON sit.convenio_key = conv.convenio_key
      INNER JOIN lkp_grupos_convenio gc ON conv.grupo_convenio_key = gc.grupo_convenio_key
      INNER JOIN (SELECT f.fecha_key, cot.especie_key, AVG(cot.valor_cierre) avg_cotizacion
                  FROM fct_cotizaciones cot
                  INNER JOIN lkp_fechas f on cot.fecha_key = f.fecha_key
                  WHERE f.periodo >= "2021-01"
                  GROUP BY f.fecha_key, cot.especie_key) cot ON sit.fecha_key = cot.fecha_key AND sit.especie_key = cot.especie_key
      WHERE
        conv.numero_convenio NOT in ("13789", "10155", "10153", "10154", "13790")
        and fe.anio >= EXTRACT(YEAR FROM CURRENT_DATE()) -1
        and ba.banca in ("Empresas", "Agro", "Megra", "Gobierno", "Corporativa")
        and conv.grupo in ("BOL", "CAJ", "DA", "DGR", "JUD", "PROV", "AFCO", "AFPP", "AFSB", "VIAT", "VS")
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
