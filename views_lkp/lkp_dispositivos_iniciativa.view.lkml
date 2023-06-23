view: lkp_dispositivos_iniciativa {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_dispositivos_iniciativa`
    ;;
    view_label: "Datos DIGITAL"

  dimension: descripcion_dispositivo {
    group_label: "Dispositivos Iniciativa"
    type: string
    sql: ${TABLE}.descripcion_dispositivo ;;
  }

  dimension: dispositivo_iniciativa_key {
    hidden: yes
    type: number
    sql: ${TABLE}.dispositivo_iniciativa_key ;;
  }

  dimension: dispositivo_iniciativa_source {
    group_label: "Dispositivos Iniciativa"
    type: string
    sql: ${TABLE}.dispositivo_iniciativa_source ;;
  }

  dimension: iniciativa_canal_digital_key {
    hidden: yes
    type: number
    sql: ${TABLE}.iniciativa_canal_digital_key ;;
  }

  dimension: sucursal_transaccion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.dispositivo_iniciativa_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
