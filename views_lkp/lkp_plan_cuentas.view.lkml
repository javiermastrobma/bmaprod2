view: lkp_plan_cuentas {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_plan_cuentas`
    ;;

dimension: agrupacion_1 {
  view_label: "Datos CUENTA CONTABLE"
  type: string
  sql: ${TABLE}.agrupacion_1 ;;
}

dimension: agrupacion_2 {
  view_label: "Datos CUENTA CONTABLE"
  type: string
  sql: ${TABLE}.agrupacion_2 ;;
}

dimension: agrupacion_3 {
  view_label: "Datos CUENTA CONTABLE"
  type: string
  sql: ${TABLE}.agrupacion_3 ;;
}

dimension: agrupacion_4 {
  view_label: "Datos CUENTA CONTABLE"
  type: string
  sql: ${TABLE}.agrupacion_4 ;;
}

dimension: agrupacion_comisiones_1 {
  view_label: "Datos CUENTA CONTABLE"
  type: string
  sql: ${TABLE}.agrupacion_comisiones_1 ;;
}

dimension: agrupacion_contabilidad_1 {
  view_label: "Datos CUENTA CONTABLE"
  type: string
  sql: ${TABLE}.agrupacion_contabilidad_1 ;;
}

dimension: agrupacion_contabilidad_2 {
  view_label: "Datos CUENTA CONTABLE"
  type: string
  sql: ${TABLE}.agrupacion_contabilidad_2 ;;
}

dimension: agrupacion_gastos_1 {
  view_label: "Datos CUENTA CONTABLE"
  type: string
  sql: ${TABLE}.agrupacion_gastos_1 ;;
}

dimension: agrupacion_gastos_2 {
  view_label: "Datos CUENTA CONTABLE"
  type: string
  sql: ${TABLE}.agrupacion_gastos_2 ;;
}

dimension: bloqueo {
  view_label: "Datos CUENTA CONTABLE"
  type: string
  sql: ${TABLE}.bloqueo ;;
}

dimension: capitulo {
  view_label: "Datos CUENTA CONTABLE"
  type: string
  sql: ${TABLE}.capitulo ;;
}

dimension: codigo_cuenta {
  hidden: yes
  type: string
  sql: ${TABLE}.codigo_cuenta ;;
}

dimension: codigo_moneda {
  hidden: yes
  type: number
  sql: ${TABLE}.codigo_moneda ;;
}

dimension: cuenta_contable {
  view_label: "Datos CUENTA CONTABLE"
  type: string
  sql: ${TABLE}.cuenta_contable ;;
}

dimension: inventario {
  view_label: "Datos CUENTA CONTABLE"
  type: string
  sql: ${TABLE}.inventario ;;
}

dimension: moneda_residencia {
  hidden: yes
  type: string
  sql: ${TABLE}.moneda_residencia ;;
}

dimension: movimiento {
  view_label: "Datos CUENTA CONTABLE"
  type: string
  sql: ${TABLE}.movimiento ;;
}

dimension: naturaleza_cuenta {
  hidden: yes
  type: string
  sql: ${TABLE}.naturaleza_cuenta ;;
}

dimension: nivel {
  hidden: yes
  type: number
  sql: ${TABLE}.nivel ;;
}

dimension: nombre_cuenta {
  view_label: "Datos CUENTA CONTABLE"
  type: string
  sql: ${TABLE}.nombre_cuenta ;;
}

dimension: otros_atributos {
  hidden: yes
  type: string
  sql: ${TABLE}.otros_atributos ;;
}

dimension: plan_cuentas_key {
  hidden: yes
  type: number
  sql: ${TABLE}.plan_cuentas_key ;;
}

dimension: publica {
  view_label: "Datos CUENTA CONTABLE"
  type: string
  sql: ${TABLE}.publica ;;
}

dimension: rubro {
  view_label: "Datos CUENTA CONTABLE"
  type: string
  sql: ${TABLE}.rubro ;;
}

dimension: sector_responsable_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sector_responsable_key ;;
}

dimension: uso_cuenta {
  hidden: yes
  type: string
  sql: ${TABLE}.uso_cuenta ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
  }
}


#LKP_PLAN_CUENTAS_ACTIVO PERTENECIENTE A ESTRELLA FCT_BIENES_USO
view: lkp_plan_cuentas_activo {
  extends: [lkp_plan_cuentas]

  dimension: agrupacion_1 {
    group_label: "Plan Cuentas Activo"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_1 ;;
  }

  dimension: agrupacion_2 {
    group_label: "Plan Cuentas Activo"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_2 ;;
  }

  dimension: agrupacion_3 {
    group_label: "Plan Cuentas Activo"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_3 ;;
  }

  dimension: agrupacion_4 {
    group_label: "Plan Cuentas Activo"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_4 ;;
  }

  dimension: agrupacion_comisiones_1 {
    group_label: "Plan Cuentas Activo"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_comisiones_1 ;;
  }

  dimension: agrupacion_contabilidad_1 {
    group_label: "Plan Cuentas Activo"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_contabilidad_1 ;;
  }

  dimension: agrupacion_contabilidad_2 {
    group_label: "Plan Cuentas Activo"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_contabilidad_2 ;;
  }

  dimension: agrupacion_gastos_1 {
    group_label: "Plan Cuentas Activo"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_gastos_1 ;;
  }

  dimension: agrupacion_gastos_2 {
    group_label: "Plan Cuentas Activo"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_gastos_2 ;;
  }

  dimension: bloqueo {
    group_label: "Plan Cuentas Activo"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.bloqueo ;;
  }

  dimension: capitulo {
    group_label: "Plan Cuentas Activo"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.capitulo ;;
  }

  dimension: cuenta_contable {
    group_label: "Plan Cuentas Activo"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.cuenta_contable ;;
  }

  dimension: inventario {
    group_label: "Plan Cuentas Activo"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.inventario ;;
  }

  dimension: movimiento {
    group_label: "Plan Cuentas Activo"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.movimiento ;;
  }

  dimension: nombre_cuenta {
    group_label: "Plan Cuentas Activo"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.nombre_cuenta ;;
  }

  dimension: publica {
    group_label: "Plan Cuentas Activo"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.publica ;;
  }

  dimension: rubro {
    group_label: "Plan Cuentas Activo"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.rubro ;;
  }
}



#LKP_PLAN_CUENTAS_ACTUALIZACION_ACTIVO PERTENECIENTE A ESTRELLA FCT_BIENES_USO
view: lkp_plan_cuentas_actualizacion_activo {
  extends: [lkp_plan_cuentas]

  dimension: agrupacion_1 {
    group_label: "Plan Cuentas Actualización Activo"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_1 ;;
  }

  dimension: agrupacion_2 {
    group_label: "Plan Cuentas Actualización Activo"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_2 ;;
  }

  dimension: agrupacion_3 {
    group_label: "Plan Cuentas Actualización Activo"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_3 ;;
  }

  dimension: agrupacion_4 {
    group_label: "Plan Cuentas Actualización Activo"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_4 ;;
  }

  dimension: agrupacion_comisiones_1 {
    group_label: "Plan Cuentas Actualización Activo"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_comisiones_1 ;;
  }

  dimension: agrupacion_contabilidad_1 {
    group_label: "Plan Cuentas Actualización Activo"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_contabilidad_1 ;;
  }

  dimension: agrupacion_contabilidad_2 {
    group_label: "Plan Cuentas Actualización Activo"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_contabilidad_2 ;;
  }

  dimension: agrupacion_gastos_1 {
    group_label: "Plan Cuentas Actualización Activo"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_gastos_1 ;;
  }

  dimension: agrupacion_gastos_2 {
    group_label: "Plan Cuentas Actualización Activo"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_gastos_2 ;;
  }

  dimension: bloqueo {
    group_label: "Plan Cuentas Actualización Activo"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.bloqueo ;;
  }

  dimension: capitulo {
    group_label: "Plan Cuentas Actualización Activo"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.capitulo ;;
  }

  dimension: cuenta_contable {
    group_label: "Plan Cuentas Actualización Activo"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.cuenta_contable ;;
  }

  dimension: inventario {
    group_label: "Plan Cuentas Actualización Activo"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.inventario ;;
  }

  dimension: movimiento {
    group_label: "Plan Cuentas Actualización Activo"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.movimiento ;;
  }

  dimension: nombre_cuenta {
    group_label: "Plan Cuentas Actualización Activo"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.nombre_cuenta ;;
  }

  dimension: publica {
    group_label: "Plan Cuentas Actualización Activo"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.publica ;;
  }

  dimension: rubro {
    group_label: "Plan Cuentas Actualización Activo"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.rubro ;;
  }
}



#LKP_PLAN_CUENTAS_AMORTIZACION_ACUMULADA_REEXPRESION PERTENECIENTE A ESTRELLA FCT_BIENES_USO
view: lkp_plan_cuentas_amortizacion_acumulada_reexpresion {
  extends: [lkp_plan_cuentas]

  dimension: agrupacion_1 {
    group_label: "Plan Cuentas Amort. Acum. Reexpresión"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_1 ;;
  }

  dimension: agrupacion_2 {
    group_label: "Plan Cuentas Amort. Acum. Reexpresión"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_2 ;;
  }

  dimension: agrupacion_3 {
    group_label: "Plan Cuentas Amort. Acum. Reexpresión"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_3 ;;
  }

  dimension: agrupacion_4 {
    group_label: "Plan Cuentas Amort. Acum. Reexpresión"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_4 ;;
  }

  dimension: agrupacion_comisiones_1 {
    group_label: "Plan Cuentas Amort. Acum. Reexpresión"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_comisiones_1 ;;
  }

  dimension: agrupacion_contabilidad_1 {
    group_label: "Plan Cuentas Amort. Acum. Reexpresión"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_contabilidad_1 ;;
  }

  dimension: agrupacion_contabilidad_2 {
    group_label: "Plan Cuentas Amort. Acum. Reexpresión"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_contabilidad_2 ;;
  }

  dimension: agrupacion_gastos_1 {
    group_label: "Plan Cuentas Amort. Acum. Reexpresión"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_gastos_1 ;;
  }

  dimension: agrupacion_gastos_2 {
    group_label: "Plan Cuentas Amort. Acum. Reexpresión"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_gastos_2 ;;
  }

  dimension: bloqueo {
    group_label: "Plan Cuentas Amort. Acum. Reexpresión"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.bloqueo ;;
  }

  dimension: capitulo {
    group_label: "Plan Cuentas Amort. Acum. Reexpresión"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.capitulo ;;
  }

  dimension: cuenta_contable {
    group_label: "Plan Cuentas Amort. Acum. Reexpresión"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.cuenta_contable ;;
  }

  dimension: inventario {
    group_label: "Plan Cuentas Amort. Acum. Reexpresión"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.inventario ;;
  }

  dimension: movimiento {
    group_label: "Plan Cuentas Amort. Acum. Reexpresión"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.movimiento ;;
  }

  dimension: nombre_cuenta {
    group_label: "Plan Cuentas Amort. Acum. Reexpresión"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.nombre_cuenta ;;
  }

  dimension: publica {
    group_label: "Plan Cuentas Amort. Acum. Reexpresión"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.publica ;;
  }

  dimension: rubro {
    group_label: "Plan Cuentas Amort. Acum. Reexpresión"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.rubro ;;
  }
}



#LKP_PLAN_CUENTAS_AMORTIZACION_ACUMULADO PERTENECIENTE A ESTRELLA FCT_BIENES_USO
view: lkp_plan_cuentas_amortizacion_acumulado {
  extends: [lkp_plan_cuentas]

  dimension: agrupacion_1 {
    group_label: "Plan Cuentas Amortización Acumulado"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_1 ;;
  }

  dimension: agrupacion_2 {
    group_label: "Plan Cuentas Amortización Acumulado"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_2 ;;
  }

  dimension: agrupacion_3 {
    group_label: "Plan Cuentas Amortización Acumulado"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_3 ;;
  }

  dimension: agrupacion_4 {
    group_label: "Plan Cuentas Amortización Acumulado"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_4 ;;
  }

  dimension: agrupacion_comisiones_1 {
    group_label: "Plan Cuentas Amortización Acumulado"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_comisiones_1 ;;
  }

  dimension: agrupacion_contabilidad_1 {
    group_label: "Plan Cuentas Amortización Acumulado"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_contabilidad_1 ;;
  }

  dimension: agrupacion_contabilidad_2 {
    group_label: "Plan Cuentas Amortización Acumulado"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_contabilidad_2 ;;
  }

  dimension: agrupacion_gastos_1 {
    group_label: "Plan Cuentas Amortización Acumulado"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_gastos_1 ;;
  }

  dimension: agrupacion_gastos_2 {
    group_label: "Plan Cuentas Amortización Acumulado"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_gastos_2 ;;
  }

  dimension: bloqueo {
    group_label: "Plan Cuentas Amortización Acumulado"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.bloqueo ;;
  }

  dimension: capitulo {
    group_label: "Plan Cuentas Amortización Acumulado"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.capitulo ;;
  }

  dimension: cuenta_contable {
    group_label: "Plan Cuentas Amortización Acumulado"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.cuenta_contable ;;
  }

  dimension: inventario {
    group_label: "Plan Cuentas Amortización Acumulado"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.inventario ;;
  }

  dimension: movimiento {
    group_label: "Plan Cuentas Amortización Acumulado"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.movimiento ;;
  }

  dimension: nombre_cuenta {
    group_label: "Plan Cuentas Amortización Acumulado"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.nombre_cuenta ;;
  }

  dimension: publica {
    group_label: "Plan Cuentas Amortización Acumulado"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.publica ;;
  }

  dimension: rubro {
    group_label: "Plan Cuentas Amortización Acumulado"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.rubro ;;
  }
}



#LKP_PLAN_CUENTAS_AMORTIZACION_REEXPRESION PERTENECIENTE A ESTRELLA FCT_BIENES_USO
view: lkp_plan_cuentas_amortizacion_reexpresion {
  extends: [lkp_plan_cuentas]

  dimension: agrupacion_1 {
    group_label: "Plan Cuentas Amortización Reexpresión"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_1 ;;
  }

  dimension: agrupacion_2 {
    group_label: "Plan Cuentas Amortización Reexpresión"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_2 ;;
  }

  dimension: agrupacion_3 {
    group_label: "Plan Cuentas Amortización Reexpresión"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_3 ;;
  }

  dimension: agrupacion_4 {
    group_label: "Plan Cuentas Amortización Reexpresión"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_4 ;;
  }

  dimension: agrupacion_comisiones_1 {
    group_label: "Plan Cuentas Amortización Reexpresión"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_comisiones_1 ;;
  }

  dimension: agrupacion_contabilidad_1 {
    group_label: "Plan Cuentas Amortización Reexpresión"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_contabilidad_1 ;;
  }

  dimension: agrupacion_contabilidad_2 {
    group_label: "Plan Cuentas Amortización Reexpresión"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_contabilidad_2 ;;
  }

  dimension: agrupacion_gastos_1 {
    group_label: "Plan Cuentas Amortización Reexpresión"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_gastos_1 ;;
  }

  dimension: agrupacion_gastos_2 {
    group_label: "Plan Cuentas Amortización Reexpresión"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_gastos_2 ;;
  }

  dimension: bloqueo {
    group_label: "Plan Cuentas Amortización Reexpresión"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.bloqueo ;;
  }

  dimension: capitulo {
    group_label: "Plan Cuentas Amortización Reexpresión"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.capitulo ;;
  }

  dimension: cuenta_contable {
    group_label: "Plan Cuentas Amortización Reexpresión"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.cuenta_contable ;;
  }

  dimension: inventario {
    group_label: "Plan Cuentas Amortización Reexpresión"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.inventario ;;
  }

  dimension: movimiento {
    group_label: "Plan Cuentas Amortización Reexpresión"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.movimiento ;;
  }

  dimension: nombre_cuenta {
    group_label: "Plan Cuentas Amortización Reexpresión"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.nombre_cuenta ;;
  }

  dimension: publica {
    group_label: "Plan Cuentas Amortización Reexpresión"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.publica ;;
  }

  dimension: rubro {
    group_label: "Plan Cuentas Amortización Reexpresión"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.rubro ;;
  }
}



#LKP_PLAN_CUENTAS_AMORTIZACION PERTENECIENTE A ESTRELLA FCT_BIENES_USO
view: lkp_plan_cuentas_amortizacion {
  extends: [lkp_plan_cuentas]

  dimension: agrupacion_1 {
    group_label: "Plan Cuentas Amortización"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_1 ;;
  }

  dimension: agrupacion_2 {
    group_label: "Plan Cuentas Amortización"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_2 ;;
  }

  dimension: agrupacion_3 {
    group_label: "Plan Cuentas Amortización"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_3 ;;
  }

  dimension: agrupacion_4 {
    group_label: "Plan Cuentas Amortización"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_4 ;;
  }

  dimension: agrupacion_comisiones_1 {
    group_label: "Plan Cuentas Amortización"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_comisiones_1 ;;
  }

  dimension: agrupacion_contabilidad_1 {
    group_label: "Plan Cuentas Amortización"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_contabilidad_1 ;;
  }

  dimension: agrupacion_contabilidad_2 {
    group_label: "Plan Cuentas Amortización"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_contabilidad_2 ;;
  }

  dimension: agrupacion_gastos_1 {
    group_label: "Plan Cuentas Amortización"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_gastos_1 ;;
  }

  dimension: agrupacion_gastos_2 {
    group_label: "Plan Cuentas Amortización"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.agrupacion_gastos_2 ;;
  }

  dimension: bloqueo {
    group_label: "Plan Cuentas Amortización"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.bloqueo ;;
  }

  dimension: capitulo {
    group_label: "Plan Cuentas Amortización"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.capitulo ;;
  }

  dimension: cuenta_contable {
    group_label: "Plan Cuentas Amortización"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.cuenta_contable ;;
  }

  dimension: inventario {
    group_label: "Plan Cuentas Amortización"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.inventario ;;
  }

  dimension: movimiento {
    group_label: "Plan Cuentas Amortización"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.movimiento ;;
  }

  dimension: nombre_cuenta {
    group_label: "Plan Cuentas Amortización"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.nombre_cuenta ;;
  }

  dimension: publica {
    group_label: "Plan Cuentas Amortización"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.publica ;;
  }

  dimension: rubro {
    group_label: "Plan Cuentas Amortización"
    view_label: "Datos CUENTA CONTABLE"
    type: string
    sql: ${TABLE}.rubro ;;
  }
}
