view: control_operativo_contable {
  derived_table: {
    sql: --SALDOS CONTABLES
      select
        a11.fecha_key fecha_key,
        a14.periodo periodo,
        a14.fecha fecha,
        a13.familia_productos_c familia_productos_c,
        a11.banco_key banco_key,
        0 saldo_operativo,
        (sum(a11.Saldo_mn) / 1000.0) saldo_contable
      from  fct_saldos_contables  a11
        join  lkp_plan_cuentas  a12
          on   (a11.plan_cuentas_key = a12.plan_cuentas_key)
        join (SELECT DISTINCT (AL4.familia_productos) familia_productos_c,
      AL1.agrupacion_contabilidad_1, AL4.familia_productos FROM
      lkp_plan_cuentas AL1, lkp_productos AL4 WHERE
      (AL1.agrupacion_contabilidad_1 = AL4.familia_productos)  AND
      (AL4.cartera = 'Pasiva'))  a13
          on   (a12.agrupacion_contabilidad_1 = a13.agrupacion_contabilidad_1)
        join  lkp_fechas  a14
          on   (a11.fecha_key = a14.fecha_key)
      where  (rtrim(a12.capitulo) in ('PASIVO')
       and a12.rubro in ('DEPOSITOS')
       and a12.movimiento in ('S')
       and a14.fecha between '2023-05-15' and '2023-06-07'
       and a12.agrupacion_1 in ('Capital'))
      group by
        a11.fecha_key,
        a14.fecha,
        a14.periodo,
        a13.familia_productos_c,
        a11.banco_key
      UNION ALL
      -- SALDOS OPERATIVOS
      select
      a11.fecha_key  fecha_key,
      a14.periodo periodo,
      a14.fecha fecha,
      a13.familia_productos_c  familia_productos_c,
      a11.Banco_Key  Banco_Key,
      (sum((a11.saldo_dia * a11.cotizacion))  / 1000.0) saldos_operativos,
      0 saldo_contable
      from  fct_saldos  a11
      join  lkp_productos  a12
      on   (a11.producto_key = a12.producto_key)
      join  (SELECT DISTINCT (AL4.familia_productos) familia_productos_c,
      AL1.agrupacion_contabilidad_1, AL4.familia_productos FROM
      lkp_plan_cuentas AL1, lkp_productos AL4 WHERE
      (AL1.agrupacion_contabilidad_1 = AL4.familia_productos) AND
      (AL4.cartera = 'Pasiva')
      )  a13
      on   (a12.familia_productos = a13.familia_productos)
      join  lkp_fechas  a14
      on   (a11.fecha_key = a14.fecha_key)
      where  (((a13.familia_productos_c)
      in  (select  c22.familia_productos_c
      from  lkp_plan_cuentas c21
      join  (SELECT DISTINCT (AL4.familia_productos) familia_productos_c,
      AL1.agrupacion_contabilidad_1, AL4.familia_productos FROM
      lkp_plan_cuentas AL1, lkp_productos AL4 WHERE
      (AL1.agrupacion_contabilidad_1 = AL4.familia_productos)  AND
      (AL4.cartera = 'Pasiva')
      )  c22
      on   (c21.agrupacion_contabilidad_1 = c22.agrupacion_contabilidad_1)
      where  (rtrim(c21.capitulo) in ('PASIVO')
      and c21.rubro in ('DEPOSITOS')
      and c21.movimiento in ('S')
      and c21.agrupacion_1 in ('Capital'))))
      and a14.fecha between '2023-05-15' and '2023-06-07')
      group by
      a11.fecha_key,
      a14.fecha,
      a14.periodo,
      a13.familia_productos_c,
      a11.banco_key
 ;;
  }

  dimension: fecha_key {
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: periodo {
    type: string
    sql: ${TABLE}.periodo ;;
  }

  dimension_group: fecha {
    type: time
    sql: ${TABLE}.fecha ;;
  }

  dimension: familia_productos_c {
    type: string
    sql: ${TABLE}.familia_productos_c ;;
  }

  dimension: banco_key {
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  measure: saldo_operativo {
    type: sum
    sql: ${TABLE}.saldo_operativo ;;
  }

  measure: saldo_contable {
    type: sum
    sql: ${TABLE}.saldo_contable ;;
  }

}
