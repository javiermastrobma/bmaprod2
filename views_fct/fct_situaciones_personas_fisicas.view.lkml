view: fct_situaciones_personas_fisicas {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_situaciones_personas_fisicas`
    ;;
  view_label: " Fct Situaciones Personas Fisicas"

#FILTROS
filter: flag_activo {
  description: "Cliente con Indice Cross Sell > 0, es decir, es titualar de algun producto activo"
  sql: ${indice_cross_sell} > 0 ;;
}

#DIMENSIONES Y MEDIDAS

  dimension: fecha_max {
    hidden: yes
    type: yesno
    sql:  ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_situaciones_personas_fisicas s
      LEFT JOIN lkp_fechas f ON s.fecha_key = f.fecha_key) ;;
  }

measure: acreditacion_cupones_comercio_3 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: number
  sql: ${TABLE}.acreditacion_cupones_comercio_3 ;;
}

measure: acreditacion_cupones_comercio_6 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.acreditacion_cupones_comercio_6 ;;
}

measure: acreditacion_sueldo {
  description: "Saldo promedio mensual (30 días), agrupado por cliente contemplando aquellos que perciban acreditaciones de sueldo"
  type: sum
  sql: ${TABLE}.acreditacion_sueldo ;;
}

measure: acreditacion_sueldo_3 {
  description: "Saldo promedio mensual (3 meses o la cantidad máxima de datos existentes en el año 1 a 2 al momento de cálculo), agrupado por cliente contemplando aquellos que perciban acreditaciones de sueldo"
  type: sum
  sql: ${TABLE}.acreditacion_sueldo_3 ;;
}

measure: acreditacion_sueldo_6 {
  description: "Saldo promedio mensual (6 meses o la cantidad máxima de datos existentes en el año 1 a 5 al momento de cálculo), agrupado por cliente contemplando aquellos que perciban acreditaciones de sueldo"
  type: sum
  sql: ${TABLE}.acreditacion_sueldo_6 ;;
}

measure: acreditacion_transferencias_3 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.acreditacion_transferencias_3 ;;
}

measure: acreditacion_transferencias_6 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.acreditacion_transferencias_6 ;;
}

dimension: antig_cliente {
  type: number
  sql: ${TABLE}.antig_cliente ;;
}

dimension: antig_cliente_prod_vigentes {
  type: number
  sql: ${TABLE}.antig_cliente_prod_vigentes ;;
}

dimension: banca_key {
  hidden: yes
  type: number
  sql: ${TABLE}.banca_key ;;
}

dimension: banco_key {
  hidden: yes
  type: number
  sql: ${TABLE}.banco_key ;;
}

measure: cant_acuerdo {
  type: sum
  sql: ${TABLE}.cant_acuerdo ;;
}

measure: cant_amex_adicional {
  type: sum
  sql: ${TABLE}.cant_amex_adicional ;;
}

measure: cant_amex_titular {
  type: sum
  sql: ${TABLE}.cant_amex_titular ;;
}

measure: cant_caja_ahorro {
  type: sum
  sql: ${TABLE}.cant_caja_ahorro ;;
}

measure: cant_caja_ahorro_dolares {
  type: sum
  sql: ${TABLE}.cant_caja_ahorro_dolares ;;
}

measure: cant_caja_ahorro_pesos {
  type: sum
  sql: ${TABLE}.cant_caja_ahorro_pesos ;;
}

measure: cant_cajas_seguridad {
  type: sum
  sql: ${TABLE}.cant_cajas_seguridad ;;
}

measure: cant_cuenta_corriente {
  type: sum
  sql: ${TABLE}.cant_cuenta_corriente ;;
}

measure: cant_macroadelanto {
  type: sum
  sql: ${TABLE}.cant_macroadelanto ;;
}

measure: cant_macrocuenta {
  type: sum
  sql: ${TABLE}.cant_macrocuenta ;;
}

measure: cant_macrocuenta_con_abono {
  type: sum
  sql: ${TABLE}.cant_macrocuenta_con_abono ;;
}

measure: cant_macrocuenta_sin_abono {
  type: sum
  sql: ${TABLE}.cant_macrocuenta_sin_abono ;;
}

measure: cant_makro_adicional {
  type: sum
  sql: ${TABLE}.cant_makro_adicional ;;
}

measure: cant_makro_titular {
  type: sum
  sql: ${TABLE}.cant_makro_titular ;;
}

measure: cant_master_adicional {
  type: sum
  sql: ${TABLE}.cant_master_adicional ;;
}

measure: cant_master_titular {
  type: sum
  sql: ${TABLE}.cant_master_titular ;;
}

measure: cant_otros_prestamos {
  type: sum
  sql: ${TABLE}.cant_otros_prestamos ;;
}

measure: cant_paq_dinamica {
  type: sum
  sql: ${TABLE}.cant_paq_dinamica ;;
}

measure: cant_paq_premium {
  type: sum
  sql: ${TABLE}.cant_paq_premium ;;
}

measure: cant_paq_valora {
  type: sum
  sql: ${TABLE}.cant_paq_valora ;;
}

measure: cant_pf {
  type: sum
  sql: ${TABLE}.cant_pf ;;
}

measure: cant_pf_dolares {
  type: sum
  sql: ${TABLE}.cant_pf_dolares ;;
}

measure: cant_pf_pesos {
  type: sum
  sql: ${TABLE}.cant_pf_pesos ;;
}

measure: cant_prestamos {
  type: sum
  sql: ${TABLE}.cant_prestamos ;;
}

measure: cant_prestamos_hipotecarios {
  type: sum
  sql: ${TABLE}.cant_prestamos_hipotecarios ;;
}

measure: cant_prestamos_personales {
  type: sum
  sql: ${TABLE}.cant_prestamos_personales ;;
}

measure: cant_prestamos_prendarios {
  type: sum
  sql: ${TABLE}.cant_prestamos_prendarios ;;
}

measure: cant_seguros {
  type: sum
  sql: ${TABLE}.cant_seguros ;;
}

measure: cant_seguros_accidentes_personales {
  type: sum
  sql: ${TABLE}.cant_seguros_accidentes_personales ;;
}

measure: cant_seguros_accidentes_personales_jubilados {
  type: sum
  sql: ${TABLE}.cant_seguros_accidentes_personales_jubilados ;;
}

measure: cant_seguros_atm {
  type: sum
  sql: ${TABLE}.cant_seguros_atm ;;
}

measure: cant_seguros_auto {
  type: sum
  sql: ${TABLE}.cant_seguros_auto ;;
}

measure: cant_seguros_consumo_garantizado {
  type: sum
  sql: ${TABLE}.cant_seguros_consumo_garantizado ;;
}

measure: cant_seguros_desempleo {
  type: sum
  sql: ${TABLE}.cant_seguros_desempleo ;;
}

measure: cant_seguros_desempleo_prestamo {
  type: sum
  sql: ${TABLE}.cant_seguros_desempleo_prestamo ;;
}

measure: cant_seguros_hogar {
  type: sum
  sql: ${TABLE}.cant_seguros_hogar ;;
}

measure: cant_seguros_macro_educacion {
  type: sum
  sql: ${TABLE}.cant_seguros_macro_educacion ;;
}

measure: cant_seguros_macro_proteccion {
  type: sum
  sql: ${TABLE}.cant_seguros_macro_proteccion ;;
}

measure: cant_seguros_otros {
  type: sum
  sql: ${TABLE}.cant_seguros_otros ;;
}

measure: cant_seguros_otros_seguros {
  type: sum
  sql: ${TABLE}.cant_seguros_otros_seguros ;;
}

measure: cant_seguros_otrosvida {
  type: sum
  sql: ${TABLE}.cant_seguros_otrosvida ;;
}

measure: cant_seguros_pagos_protegidos {
  type: sum
  sql: ${TABLE}.cant_seguros_pagos_protegidos ;;
}

measure: cant_seguros_patrimoniales {
  type: sum
  sql: ${TABLE}.cant_seguros_patrimoniales ;;
}

measure: cant_seguros_proteccion_via_publica {
  type: sum
  sql: ${TABLE}.cant_seguros_proteccion_via_publica ;;
}

measure: cant_seguros_sepelio {
  type: sum
  sql: ${TABLE}.cant_seguros_sepelio ;;
}

measure: cant_seguros_servicio_asistencia {
  type: sum
  sql: ${TABLE}.cant_seguros_servicio_asistencia ;;
}

measure: cant_seguros_vida {
  type: sum
  sql: ${TABLE}.cant_seguros_vida ;;
}

measure: cant_tarjetas_credito {
  type: sum
  sql: ${TABLE}.cant_tarjetas_credito ;;
}

measure: cant_tc_adicional {
  type: sum
  sql: ${TABLE}.cant_tc_adicional ;;
}

measure: cant_tc_amex {
  type: sum
  sql: ${TABLE}.cant_tc_amex ;;
}

measure: cant_tc_makro {
  type: sum
  sql: ${TABLE}.cant_tc_makro ;;
}

measure: cant_tc_master {
  type: sum
  sql: ${TABLE}.cant_tc_master ;;
}

measure: cant_tc_titular {
  type: sum
  sql: ${TABLE}.cant_tc_titular ;;
}

measure: cant_tc_visa {
  type: sum
  sql: ${TABLE}.cant_tc_visa ;;
}

measure: cant_td {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.cant_td ;;
}

measure: cant_td_electron {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.cant_td_electron ;;
}

measure: cant_td_maestro {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.cant_td_maestro ;;
}

measure: cant_visa_adicional {
  type: sum
  sql: ${TABLE}.cant_visa_adicional ;;
}

measure: cant_visa_titular {
  type: sum
  sql: ${TABLE}.cant_visa_titular ;;
}

dimension: cliente_key {
  hidden: yes
  primary_key: yes
  type: number
  sql: ${TABLE}.cliente_key ;;
}

measure: compras_efectivo_3 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.compras_efectivo_3 ;;
}

measure: compras_efectivo_6 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.compras_efectivo_6 ;;
}

measure: depositos_autoconsulta_3 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.depositos_autoconsulta_3 ;;
}

measure: depositos_autoconsulta_6 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.depositos_autoconsulta_6 ;;
}

measure: depositos_efectivo_por_caja_3 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.depositos_efectivo_por_caja_3 ;;
}

measure: depositos_efectivo_por_caja_6 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.depositos_efectivo_por_caja_6 ;;
}

measure: depositos_en_cheque_3 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.depositos_en_cheque_3 ;;
}

measure: depositos_en_cheque_6 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.depositos_en_cheque_6 ;;
}

measure: depositos_link_3 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.depositos_link_3 ;;
}

measure: depositos_link_6 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.depositos_link_6 ;;
}

measure: extracciones_cajero_3 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.extracciones_cajero_3 ;;
}

measure: extracciones_cajero_6 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.extracciones_cajero_6 ;;
}

measure: extracciones_efectivo_3 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.extracciones_efectivo_3 ;;
}

measure: extracciones_efectivo_6 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.extracciones_efectivo_6 ;;
}

dimension: fecha_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_key ;;
}

dimension: indice_cross_sell {
  type: number
  sql: ${TABLE}.indice_cross_sell ;;
}

dimension: indice_cs_subgrupo2seg {
  type: number
  sql: ${TABLE}.indice_cs_subgrupo2seg ;;
}

dimension: indice_cs_subgrupo2seg_atm {
  type: number
  sql: ${TABLE}.indice_cs_subgrupo2seg_atm ;;
}

dimension: indice_cs_subgruposeg {
  type: number
  sql: ${TABLE}.indice_cs_subgruposeg ;;
}

dimension: indice_cs_subgruposeg_atm {
  type: number
  sql: ${TABLE}.indice_cs_subgruposeg_atm ;;
}

dimension: indice_relacion {
  type: number
  sql: ${TABLE}.indice_relacion ;;
}

dimension: indice_transaccionalidad_3 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: number
  sql: ${TABLE}.indice_transaccionalidad_3 ;;
}

dimension: indice_transaccionalidad_6 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: number
  sql: ${TABLE}.indice_transaccionalidad_6 ;;
}

measure: ingresos_financieros_3 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.ingresos_financieros_3 ;;
}

measure: ingresos_financieros_6 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.ingresos_financieros_6 ;;
}

measure: ingresos_servicios_3 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.ingresos_servicios_3 ;;
}

measure: ingresos_servicios_6 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.ingresos_servicios_6 ;;
}

measure: liquidacion_prestamos_3 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.liquidacion_prestamos_3 ;;
}

measure: liquidacion_prestamos_6 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.liquidacion_prestamos_6 ;;
}

measure: liquidacion_titulos_3 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.liquidacion_titulos_3 ;;
}

measure: liquidacion_titulos_6 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.liquidacion_titulos_6 ;;
}

measure: meses_con_productos {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.meses_con_productos ;;
}

measure: meses_productos {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.meses_productos ;;
}

dimension: mezcla_productos_key {
  hidden: yes
  type: number
  sql: ${TABLE}.mezcla_productos_key ;;
}

dimension: nivel_ingresos_1_key {
  hidden: yes
  type: number
  sql: ${TABLE}.nivel_ingresos_1_key ;;
}

dimension: nivel_ingresos_6_key {
  hidden: yes
  type: number
  sql: ${TABLE}.nivel_ingresos_6_key ;;
}

dimension: nivel_uso_cuentas_1_key {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: number
  sql: ${TABLE}.nivel_uso_cuentas_1_key ;;
}

dimension: nivel_uso_cuentas_6_key {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: number
  sql: ${TABLE}.nivel_uso_cuentas_6_key ;;
}

measure: pagos_prestamos_3 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.pagos_prestamos_3 ;;
}

measure: pagos_prestamos_6 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.pagos_prestamos_6 ;;
}

measure: pagos_servicios_debito_automatico_3 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.pagos_servicios_debito_automatico_3 ;;
}

measure: pagos_servicios_debito_automatico_6 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.pagos_servicios_debito_automatico_6 ;;
}

measure: pagos_servicios_red_link_3 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.pagos_servicios_red_link_3 ;;
}

measure: pagos_servicios_red_link_6 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.pagos_servicios_red_link_6 ;;
}

measure: pagos_tc_debito_automatico_3 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.pagos_tc_debito_automatico_3 ;;
}

measure: pagos_tc_debito_automatico_6 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.pagos_tc_debito_automatico_6 ;;
}

measure: porc_movimientos_atm {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.porc_movimientos_atm ;;
}

measure: porc_movimientos_bancatelefonica {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.porc_movimientos_bancatelefonica ;;
}

measure: porc_movimientos_homebanking {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.porc_movimientos_homebanking ;;
}

measure: porc_movimientos_sucursal {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.porc_movimientos_sucursal ;;
}

measure: porc_movimientos_tas {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.porc_movimientos_tas ;;
}

measure: posicion_activa {
  description: "Saldo promedio, seleccionando aquellos productos cuya pertenencia sea de la cartera activa."
  type: sum
  sql: ${TABLE}.posicion_activa ;;
}

measure: posicion_pasiva {
  description: "Saldo promedio, seleccionando aquellos productos cuya pertenencia sea de la cartera pasiva."
  type: sum
  sql: ${TABLE}.posicion_pasiva ;;
}

measure: recaudaciones_3 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.recaudaciones_3 ;;
}

measure: recaudaciones_6 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.recaudaciones_6 ;;
}

measure: saldo_promedio_paquete {
  type: sum
  sql: ${TABLE}.saldo_promedio_paquete ;;
}

measure: saldo_promedio_paquete_3 {
  type: sum
  sql: ${TABLE}.saldo_promedio_paquete_3 ;;
}

measure: saldo_promedio_paquete_6 {
  type: sum
  sql: ${TABLE}.saldo_promedio_paquete_6 ;;
}

measure: saldo_promedio_tc_3 {
  description: "Saldo promedio mensual (3 meses o la cantidad máxima de datos existentes en el año 1 a 3 al momento de cálculo), agrupado por cliente, solo para todos los productos TC. "
  type: sum
  sql: ${TABLE}.saldo_promedio_tc_3 ;;
}

measure: saldo_promedio_tc_6 {
  description: "Saldo promedio mensual (6 meses o la cantidad máxima de datos existentes en el año 1 a 5 al momento de cálculo), agrupado por cliente, solo para todos los productos TC"
  type: sum
  sql: ${TABLE}.saldo_promedio_tc_6 ;;
}

measure: saldo_promedio_vista {
  description: "Saldo promedio mensual (30 días), agrupado por cliente para todos los productos (Prestamos, Plazo, Acuerdos, Ahorro, Corrientes, Seguridad y Tarjetas de Crédito"
  type: sum
  sql: ${TABLE}.saldo_promedio_vista ;;
}

measure: saldo_promedio_vista_3 {
  description: "Saldo promedio mensual (3 meses o la cantidad máxima de datos existentes en el año 1 a 2 al momento de cálculo), agrupado por cliente para todos los productos (Prestamos, Plazo, Acuerdos, Ahorro, Corrientes, Seguridad y Tarjetas de Crédito"
  type: sum
  sql: ${TABLE}.saldo_promedio_vista_3 ;;
}

measure: saldo_promedio_vista_6 {
  description: "Saldo promedio mensual (3 meses o la cantidad máxima de datos existentes en el año 1 a 5 al momento de cálculo), agrupado por cliente para todos los productos (Prestamos, Plazo, Acuerdos, Ahorro, Corrientes, Seguridad y Tarjetas de Crédito"
  type: sum
  sql: ${TABLE}.saldo_promedio_vista_6 ;;
}

measure: saldo_tc {
  type: sum
  sql: ${TABLE}.saldo_tc ;;
}

dimension: sucursal_radicacion_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_radicacion_key ;;
}

dimension: tc_monto_consumos_3_key {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: number
  sql: ${TABLE}.tc_monto_consumos_3_key ;;
}

dimension: tc_monto_consumos_6_key {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: number
  sql: ${TABLE}.tc_monto_consumos_6_key ;;
}

dimension: tc_monto_pagos_3_key {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: number
  sql: ${TABLE}.tc_monto_pagos_3_key ;;
}

dimension: tc_monto_pagos_6_key {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: number
  sql: ${TABLE}.tc_monto_pagos_6_key ;;
}

dimension: tc_uso_limite_compra_3_key {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: number
  sql: ${TABLE}.tc_uso_limite_compra_3_key ;;
}

dimension: tc_uso_limite_compra_6_key {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: number
  sql: ${TABLE}.tc_uso_limite_compra_6_key ;;
}

dimension: tipo_cliente_key {
  hidden: yes
  type: number
  sql: ${TABLE}.tipo_cliente_key ;;
}

dimension: tipo_titular_key {
  hidden: yes
  type: number
  sql: ${TABLE}.tipo_titular_key ;;
}

measure: transferencias_3 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.transferencias_3 ;;
}

measure: transferencias_6 {
  hidden: yes # "A 04/2023 los siguientes atributos no se actualizan ya que quedaron pendientes de revisión"
  type: sum
  sql: ${TABLE}.transferencias_6 ;;
}

measure: sum_indice_cross_sell {
  type: sum
  sql: ${indice_cross_sell} ;;
}

measure: count_distinct_clientes {
  type: count_distinct
  sql: ${lkp_clientes_completa.codigo_cliente};;
}

measure: cliente_activos {
  description: "Clientes con Indice Cross Sell >0, es decir, son titulares de algun producto activo"
  type: count_distinct
  sql: CASE WHEN ${indice_cross_sell} > 0 THEN ${lkp_clientes_completa.codigo_cliente} ELSE 0 END ;;
}
}
