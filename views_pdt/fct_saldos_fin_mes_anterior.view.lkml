view: fct_saldos_fin_mes_anterior {
  derived_table: {
    sql: select
      --select max(f.Fecha_Fin_Mes_Anterior) from `cdw_raw.fct_saldos` s join `cdw_raw.lkp_fechas` f on (s.Fecha_Key=f.Fecha_Key))
      f.fecha_key,
      s.Cuenta_Key,
      s.producto_key,
      s.Saldo_Dia Saldo_Dia_Mes_Anterior

      from
      `cdw_raw.fct_saldos` s
      INNER JOIN `cdw_raw.lkp_fechas` f ON s.Fecha_Key = f.Fecha_Fin_Mes_Anterior_Key

      where
      f.Fecha = (select max(f.Fecha) from `cdw_raw.fct_saldos` s join `cdw_raw.lkp_fechas` f on (s.Fecha_Key=f.Fecha_Key))

      group by
      f.fecha_key,
      s.Cuenta_Key,
      s.producto_key,
      s.Saldo_Dia
      ;;
  }

  measure: count {
    type: count
  }

  dimension: fecha_key {
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: cuenta_key {
    type: number
    sql: ${TABLE}.Cuenta_Key ;;
  }

  dimension: producto_key {
    type: number
    sql: ${TABLE}.producto_key ;;
  }

  dimension: saldo_dia_mes_anterior {
    type: number
    sql: ${TABLE}.Saldo_Dia_Mes_Anterior ;;
  }
}
