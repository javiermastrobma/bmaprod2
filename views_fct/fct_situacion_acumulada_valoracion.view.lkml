view: fct_situacion_acumulada_valoracion {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_situacion_acumulada_valoracion`
    ;;
    view_label: " Fct Situación Acumulada Valoración"

filter: sin_cargo_por_incobrabilidad {
  type: string
  #sql: {%condition%} ${lkp_conceptos_valoracion_agrupaciones.concepto_valoracion_agrupacion_1} not in ("Cargos Por Incobrabilidad", "Cargos por Incobrabilidad") {%endcondition%}
  #  and {%condition%} ${lkp_clientes_completa.nombre} {%endcondition%};;
  sql: ${lkp_conceptos_valoracion_agrupaciones.concepto_valoracion_agrupacion_1} not in ("Cargos Por Incobrabilidad", "Cargos por Incobrabilidad") ;;
}

dimension: fecha_12_meses_atras {
  type: date
  sql: DATE_SUB((SELECT MAX(f.fecha) FROM fct_situacion_acumulada_valoracion v LEFT JOIN lkp_fechas f ON v.fecha_key = f.fecha_key), INTERVAL 12 MONTH) ;;
}

dimension: fecha_6_meses_atras {
  type: date
  sql: DATE_SUB((SELECT MAX(f.fecha) FROM fct_situacion_acumulada_valoracion v LEFT JOIN lkp_fechas f ON v.fecha_key = f.fecha_key), INTERVAL 6 MONTH) ;;
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

dimension: cant_meses_anio {
  type: number
  sql: ${TABLE}.cant_meses_anio ;;
}

dimension: cant_meses_ultimos_12 {
  type: number
  sql: ${TABLE}.cant_meses_ultimos_12 ;;
}

dimension: cant_meses_ultimos_3 {
  type: number
  sql: ${TABLE}.cant_meses_ultimos_3 ;;
}

dimension: cant_meses_ultimos_6 {
  type: number
  sql: ${TABLE}.cant_meses_ultimos_6 ;;
}

dimension: cliente_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cliente_key ;;
}

dimension: concepto_valoracion_key {
  type: number
  sql: ${TABLE}.concepto_valoracion_key ;;
}

dimension: excluido {
  type: string
  sql: ${TABLE}.excluido ;;
}

dimension: fecha_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_key ;;
}

dimension: oficial_cliente_key {
  hidden: yes
  type: number
  sql: ${TABLE}.oficial_cliente_key ;;
}

dimension: residencia_key {
  hidden: yes
  type: number
  sql: ${TABLE}.residencia_key ;;
}

dimension: sector_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sector_key ;;
}

dimension: sucursal_radicacion_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_radicacion_key ;;
}

dimension: valor_convenio_anio {
  type: number
  sql: ${TABLE}.valor_convenio_anio ;;
}

dimension: valor_convenio_mes {
  type: number
  sql: ${TABLE}.valor_convenio_mes ;;
}

dimension: valor_convenio_ultimos_12 {
  type: number
  sql: ${TABLE}.valor_convenio_ultimos_12 ;;
}

dimension: valor_convenio_ultimos_3 {
  type: number
  sql: ${TABLE}.valor_convenio_ultimos_3 ;;
}

dimension: valor_convenio_ultimos_6 {
  type: number
  sql: ${TABLE}.valor_convenio_ultimos_6 ;;
}

dimension: valor_propio_anio {
  type: number
  sql: ${TABLE}.valor_propio_anio ;;
}

dimension: valor_propio_mes {
  type: number
  sql: ${TABLE}.valor_propio_mes ;;
}

dimension: valor_propio_ultimos_12 {
  type: number
  sql: ${TABLE}.valor_propio_ultimos_12 ;;
}

dimension: valor_propio_ultimos_3 {
  type: number
  sql: ${TABLE}.valor_propio_ultimos_3 ;;
}

dimension: valor_propio_ultimos_6 {
  type: number
  sql: ${TABLE}.valor_propio_ultimos_6 ;;
}

measure: count {
  type: count
  drill_fields: []
}

measure: pnb {
  description: "División entre los campos valor_propio_anio y cant_meses_anio. Lleva dos filtros."
  type: sum
  value_format_name: decimal_0
  sql: ${valor_propio_mes}  ;;
}

measure: pnb_filtrado {
  description: "División entre los campos valor_propio_anio y cant_meses_anio. Lleva dos filtros."
  type: sum
  value_format_name: decimal_0
  filters: [lkp_conceptos_valoracion_agrupaciones.concepto_valoracion_agrupacion_1: "-Cargos Por Incobrabilidad, -Cargos por Incobrabilidad"]
  sql: ${valor_propio_mes} ;;
}

measure: prom_anio_valor_convenio {
  label: "Prom Año Valor Convenio"
  description: "División entre los campos valor_convenio_anio y cant_meses_anio"
  type: sum
  value_format_name: decimal_0
  sql: ${valor_convenio_anio} / ${cant_meses_anio} ;;
}

measure: prom_anio_valor_propio {
  label: "Prom Año Valor Propio"
  description: "División entre los campos valor_propio_anio y cant_meses_anio"
  type: sum
  value_format_name: decimal_0
  sql: ${valor_propio_anio} / ${cant_meses_anio} ;;
}

measure: sum_valor_convenio_anio {
  label: "Sum Valor Convenio Año"
  description: "Suma del campo valor_convenio_anio"
  type: sum
  value_format_name: decimal_0
  sql: ${valor_convenio_anio} ;;
}

measure: sum_valor_propio_anio {
  label: "Sum Valor Propio Año"
  description: "Suma del campo valor_propio_anio"
  type: sum
  value_format_name: decimal_0
  sql: ${valor_propio_anio} ;;
}

measure: sum_valor_propio_mes {
  type: sum
  value_format_name: decimal_0
  sql: ${valor_propio_mes} ;;
}

measure: sum_valor_convenio_mes {
  type: sum
  value_format_name: decimal_0
  sql: ${valor_convenio_mes} ;;
}

measure: max_cant_meses_anio {
  label: "Max Cant Meses Año"
  description: "Max del campo cant_meses_anio"
  type: max
  sql: ${cant_meses_anio} ;;
}

measure: meses_valor {
  description: "Count distinct del campo fecha_key"
  type: count_distinct
  sql: ${fecha_key} ;;
}

measure: sum_valor_propio_ultimos_6 {
  type: sum
  value_format_name: decimal_0
  sql: ${valor_propio_ultimos_6} ;;
}

measure: sum_valor_propio_ultimos_12 {
  type: sum
  value_format_name: decimal_0
  sql: ${valor_propio_ultimos_12} ;;
}

measure: meas_cant_meses_ultimos_6 {
  type: number
  sql: ${cant_meses_ultimos_6} ;;
}

measure: meas_cant_meses_ultimos_12 {
  type: number
  sql: ${cant_meses_ultimos_12} ;;
}
}
