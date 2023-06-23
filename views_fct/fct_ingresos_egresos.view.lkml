view: fct_ingresos_egresos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_ingresos_egresos`
    ;;
    view_label: " Fct Ingresos Egresos"

dimension: banco_key {
  hidden: yes
  type: number
  sql: ${TABLE}.banco_key ;;
}

dimension: cantidad {
  type: number
  sql: ${TABLE}.cantidad ;;
}

dimension: concepto_tc_key {
  hidden: yes
  type: number
  sql: ${TABLE}.concepto_tc_key ;;
}

dimension: cotizacion {
  type: number
  sql: ${TABLE}.cotizacion ;;
}

dimension: especie_key {
  hidden: yes
  type: number
  sql: ${TABLE}.especie_key ;;
}

dimension: fecha_comprobante_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_comprobante_key ;;
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

dimension: marca_key {
  hidden: yes
  type: number
  sql: ${TABLE}.marca_key ;;
}

dimension: nir {
  type: number
  sql: ${TABLE}.nir ;;
}

dimension: numero_comprobante {
  type: string
  sql: ${TABLE}.numero_comprobante ;;
}

dimension: plan_cuentas_key {
  hidden: yes
  type: number
  sql: ${TABLE}.plan_cuentas_key ;;
}

dimension: proveedor_key {
  hidden: yes
  type: number
  sql: ${TABLE}.proveedor_key ;;
}

dimension: reverso {
  type: string
  sql: ${TABLE}.reverso ;;
}

dimension: sucursal_contable_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_contable_key ;;
}

measure: count {
  type: count
  drill_fields: []
}
}
