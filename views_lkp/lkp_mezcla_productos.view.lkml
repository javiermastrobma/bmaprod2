view: lkp_mezcla_productos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_mezcla_productos`
    ;;

dimension: acuerdo {
  view_label: "Datos PRODUCTO"
  group_label: "Mezcla Productos"
  type: number
  sql: ${TABLE}.acuerdo ;;
}

dimension: caja_ahorro {
  view_label: "Datos PRODUCTO"
  group_label: "Mezcla Productos"
  type: number
  sql: ${TABLE}.caja_ahorro ;;
}

dimension: caja_seguridad {
  view_label: "Datos PRODUCTO"
  group_label: "Mezcla Productos"
  type: number
  sql: ${TABLE}.caja_seguridad ;;
}

dimension: cuenta_corriente {
  view_label: "Datos PRODUCTO"
  group_label: "Mezcla Productos"
  type: number
  sql: ${TABLE}.cuenta_corriente ;;
}

dimension: macroadelanto {
  view_label: "Datos PRODUCTO"
  group_label: "Mezcla Productos"
  type: number
  sql: ${TABLE}.macroadelanto ;;
}

dimension: macrocuenta {
  view_label: "Datos PRODUCTO"
  group_label: "Mezcla Productos"
  type: number
  sql: ${TABLE}.macrocuenta ;;
}

dimension: mezcla_productos_key {
  hidden: yes
  type: number
  sql: ${TABLE}.mezcla_productos_key ;;
}

dimension: otros_prestamos {
  view_label: "Datos PRODUCTO"
  group_label: "Mezcla Productos"
  type: number
  sql: ${TABLE}.otros_prestamos ;;
}

dimension: plazo_fijo {
  view_label: "Datos PRODUCTO"
  group_label: "Mezcla Productos"
  type: number
  sql: ${TABLE}.plazo_fijo ;;
}

dimension: prestamos {
  view_label: "Datos PRODUCTO"
  group_label: "Mezcla Productos"
  type: number
  sql: ${TABLE}.prestamos ;;
}

dimension: prestamos_personales {
  view_label: "Datos PRODUCTO"
  group_label: "Mezcla Productos"
  type: number
  sql: ${TABLE}.prestamos_personales ;;
}

dimension: seguros {
  view_label: "Datos PRODUCTO"
  group_label: "Mezcla Productos"
  type: number
  sql: ${TABLE}.seguros ;;
}

dimension: seguros_acc_per {
  view_label: "Datos PRODUCTO"
  group_label: "Mezcla Productos"
  type: number
  sql: ${TABLE}.seguros_acc_per ;;
}

dimension: seguros_acc_per_jub {
  view_label: "Datos PRODUCTO"
  group_label: "Mezcla Productos"
  type: number
  sql: ${TABLE}.seguros_acc_per_jub ;;
}

dimension: seguros_atm {
  view_label: "Datos PRODUCTO"
  group_label: "Mezcla Productos"
  type: number
  sql: ${TABLE}.seguros_atm ;;
}

dimension: seguros_auto {
  view_label: "Datos PRODUCTO"
  group_label: "Mezcla Productos"
  type: number
  sql: ${TABLE}.seguros_auto ;;
}

dimension: seguros_cons_garan {
  view_label: "Datos PRODUCTO"
  group_label: "Mezcla Productos"
  type: number
  sql: ${TABLE}.seguros_cons_garan ;;
}

dimension: seguros_desemp_prest {
  view_label: "Datos PRODUCTO"
  group_label: "Mezcla Productos"
  type: number
  sql: ${TABLE}.seguros_desemp_prest ;;
}

dimension: seguros_desempleo {
  view_label: "Datos PRODUCTO"
  group_label: "Mezcla Productos"
  type: number
  sql: ${TABLE}.seguros_desempleo ;;
}

dimension: seguros_hogar {
  view_label: "Datos PRODUCTO"
  group_label: "Mezcla Productos"
  type: number
  sql: ${TABLE}.seguros_hogar ;;
}

dimension: seguros_macro_edu {
  view_label: "Datos PRODUCTO"
  group_label: "Mezcla Productos"
  type: number
  sql: ${TABLE}.seguros_macro_edu ;;
}

dimension: seguros_macro_protec {
  view_label: "Datos PRODUCTO"
  group_label: "Mezcla Productos"
  type: number
  sql: ${TABLE}.seguros_macro_protec ;;
}

dimension: seguros_otros {
  view_label: "Datos PRODUCTO"
  group_label: "Mezcla Productos"
  type: number
  sql: ${TABLE}.seguros_otros ;;
}

dimension: seguros_otros_seg {
  view_label: "Datos PRODUCTO"
  group_label: "Mezcla Productos"
  type: number
  sql: ${TABLE}.seguros_otros_seg ;;
}

dimension: seguros_otrosvida {
  view_label: "Datos PRODUCTO"
  group_label: "Mezcla Productos"
  type: number
  sql: ${TABLE}.seguros_otrosvida ;;
}

dimension: seguros_pagos_proteg {
  view_label: "Datos PRODUCTO"
  group_label: "Mezcla Productos"
  type: number
  sql: ${TABLE}.seguros_pagos_proteg ;;
}

dimension: seguros_patrimoniales {
  view_label: "Datos PRODUCTO"
  group_label: "Mezcla Productos"
  type: number
  sql: ${TABLE}.seguros_patrimoniales ;;
}

dimension: seguros_sepelio {
  view_label: "Datos PRODUCTO"
  group_label: "Mezcla Productos"
  type: number
  sql: ${TABLE}.seguros_sepelio ;;
}

dimension: seguros_serv_asist {
  view_label: "Datos PRODUCTO"
  group_label: "Mezcla Productos"
  type: number
  sql: ${TABLE}.seguros_serv_asist ;;
}

dimension: seguros_via_publica {
  view_label: "Datos PRODUCTO"
  group_label: "Mezcla Productos"
  type: number
  sql: ${TABLE}.seguros_via_publica ;;
}

dimension: seguros_vida {
  view_label: "Datos PRODUCTO"
  group_label: "Mezcla Productos"
  type: number
  sql: ${TABLE}.seguros_vida ;;
}

dimension: tarjeta_credito {
  view_label: "Datos PRODUCTO"
  group_label: "Mezcla Productos"
  type: number
  sql: ${TABLE}.tarjeta_credito ;;
}

dimension: tarjeta_debito {
  view_label: "Datos PRODUCTO"
  group_label: "Mezcla Productos"
  type: number
  sql: ${TABLE}.tarjeta_debito ;;
}

dimension: tc_amex {
  view_label: "Datos PRODUCTO"
  group_label: "Mezcla Productos"
  type: number
  sql: ${TABLE}.tc_amex ;;
}

dimension: tc_makro {
  view_label: "Datos PRODUCTO"
  group_label: "Mezcla Productos"
  type: number
  sql: ${TABLE}.tc_makro ;;
}

dimension: tc_master {
  view_label: "Datos PRODUCTO"
  group_label: "Mezcla Productos"
  type: number
  sql: ${TABLE}.tc_master ;;
}

dimension: tc_visa {
  view_label: "Datos PRODUCTO"
  group_label: "Mezcla Productos"
  type: number
  sql: ${TABLE}.tc_visa ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
