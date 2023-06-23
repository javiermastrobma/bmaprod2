view: fct_asientos_manuales {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_asientos_manuales`
    ;;
    view_label: " Fct Asientos Manuales"

    dimension: fecha_max {
      hidden: yes
      type: yesno
      sql:   ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_asientos_manuales s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key)  ;;
    }

  dimension: area_destino_key {
    hidden: yes
    type: number
    sql: ${TABLE}.area_destino_key ;;
  }

  dimension: area_origen_key {
    hidden: yes
    type: number
    sql: ${TABLE}.area_origen_key ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: comprobante {
    type: string
    sql: ${TABLE}.comprobante ;;
  }

  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }

  dimension: digitador {
    type: string
    sql: ${TABLE}.digitador ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: importe {
    type: number
    sql: ${TABLE}.importe ;;
  }

  dimension: plan_cuentas_key {
    hidden: yes
    type: number
    sql: ${TABLE}.plan_cuentas_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
