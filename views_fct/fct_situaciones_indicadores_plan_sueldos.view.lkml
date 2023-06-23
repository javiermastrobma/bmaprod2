include: "/views/views_lkp/pop_fanout.view.lkml"
view: fct_situaciones_indicadores_plan_sueldos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.fct_situaciones_indicadores_plan_sueldos`
    ;;
    view_label: " Fct Situaciones Indicadores Plan Sueldos"

#FILTROS

filter: mayor_a_fecha_minima {
  sql: ${fecha_key} >= (SELECT MIN(f.fecha_key) FROM fct_situaciones_indicadores_plan_sueldos ps
    LEFT JOIN lkp_fechas f ON ps.fecha_key = f.fecha_key) ;;
}

filter: fecha_maxima {
  sql: ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_situaciones_indicadores_plan_sueldos ps
    LEFT JOIN lkp_fechas f ON ps.fecha_key = f.fecha_key) ;;
}

filter: flag_alerta_temprana {
  sql: ${es_alerta_temprana} = "SI" ;;
}

#DIMENSIONES Y MEDIDAS

dimension: acreditacion_ajuste_mes {
  hidden: yes
  type: number
  sql: ${TABLE}.acreditacion_ajuste_mes ;;
}

dimension: acreditacion_ajuste_mes_ant {
  hidden: yes
  type: number
  sql: ${TABLE}.acreditacion_ajuste_mes_ant ;;
}

dimension: acreditacion_ajuste_mes_ant_ant {
  hidden: yes
  type: number
  sql: ${TABLE}.acreditacion_ajuste_mes_ant_ant ;;
}

dimension: acreditacion_concentrador_mes {
  hidden: yes
  type: number
  sql: ${TABLE}.acreditacion_concentrador_mes ;;
}

dimension: acreditacion_concentrador_mes_ant {
  hidden: yes
  type: number
  sql: ${TABLE}.acreditacion_concentrador_mes_ant ;;
}

dimension: acreditacion_concentrador_mes_ant_ant {
  hidden: yes
  type: number
  sql: ${TABLE}.acreditacion_concentrador_mes_ant_ant ;;
}

dimension: acreditacion_datanet_honorarios_mes {
  hidden: yes
  type: number
  sql: ${TABLE}.acreditacion_datanet_honorarios_mes ;;
}

dimension: acreditacion_datanet_honorarios_mes_ant {
  hidden: yes
  type: number
  sql: ${TABLE}.acreditacion_datanet_honorarios_mes_ant ;;
}

dimension: acreditacion_datanet_honorarios_mes_ant_ant {
  hidden: yes
  type: number
  sql: ${TABLE}.acreditacion_datanet_honorarios_mes_ant_ant ;;
}

dimension: acreditacion_datanet_salarial_mes {
  hidden: yes
  type: number
  sql: ${TABLE}.acreditacion_datanet_salarial_mes ;;
}

dimension: acreditacion_datanet_salarial_mes_ant {
  hidden: yes
  type: number
  sql: ${TABLE}.acreditacion_datanet_salarial_mes_ant ;;
}

dimension: acreditacion_datanet_salarial_mes_ant_ant {
  hidden: yes
  type: number
  sql: ${TABLE}.acreditacion_datanet_salarial_mes_ant_ant ;;
}

dimension: acreditacion_honorarios_mes {
  hidden: yes
  type: number
  sql: ${TABLE}.acreditacion_honorarios_mes ;;
}

dimension: acreditacion_honorarios_mes_ant {
  hidden: yes
  type: number
  sql: ${TABLE}.acreditacion_honorarios_mes_ant ;;
}

dimension: acreditacion_honorarios_mes_ant_ant {
  hidden: yes
  type: number
  sql: ${TABLE}.acreditacion_honorarios_mes_ant_ant ;;
}

dimension: acreditacion_manual_1001_mes {
  hidden: yes
  type: number
  sql: ${TABLE}.acreditacion_manual_1001_mes ;;
}

dimension: acreditacion_manual_1001_mes_ant {
  hidden: yes
  type: number
  sql: ${TABLE}.acreditacion_manual_1001_mes_ant ;;
}

dimension: acreditacion_manual_1001_mes_ant_ant {
  hidden: yes
  type: number
  sql: ${TABLE}.acreditacion_manual_1001_mes_ant_ant ;;
}

dimension: acreditacion_manual_mes {
  hidden: yes
  type: number
  sql: ${TABLE}.acreditacion_manual_mes ;;
}

dimension: acreditacion_manual_mes_ant {
  hidden: yes
  type: number
  sql: ${TABLE}.acreditacion_manual_mes_ant ;;
}

dimension: acreditacion_manual_mes_ant_ant {
  hidden: yes
  type: number
  sql: ${TABLE}.acreditacion_manual_mes_ant_ant ;;
}

dimension: acreditacion_salarial_mes {
  hidden: yes
  type: number
  sql: ${TABLE}.acreditacion_salarial_mes ;;
}

dimension: acreditacion_salarial_mes_ant {
  hidden: yes
  type: number
  sql: ${TABLE}.acreditacion_salarial_mes_ant ;;
}

dimension: acreditacion_salarial_mes_ant_ant {
  hidden: yes
  type: number
  sql: ${TABLE}.acreditacion_salarial_mes_ant_ant ;;
}

dimension: acreditacion_total_mes {
  type: number
  sql: ${TABLE}.acreditacion_total_mes ;;
}

dimension: acreditacion_total_mes_ant {
  hidden: yes
  type: number
  sql: ${TABLE}.acreditacion_total_mes_ant ;;
}

dimension: acreditacion_total_mes_ant_ant {
  hidden: yes
  type: number
  sql: ${TABLE}.acreditacion_total_mes_ant_ant ;;
}

dimension: acreditacion_total_mes_sin_ajuste {
  hidden: yes
  type: number
  sql: ${TABLE}.acreditacion_total_mes_sin_ajuste ;;
}

dimension: banca_comite_capita_key {
  hidden: yes
  type: number
  sql: ${TABLE}.banca_comite_capita_key ;;
}

dimension: banca_comite_convenio_key {
  hidden: yes
  type: number
  sql: ${TABLE}.banca_comite_convenio_key ;;
}

dimension: banco_key {
  hidden: yes
  type: number
  sql: ${TABLE}.banco_key ;;
}

dimension: calificacion {
  type: string
  sql: ${TABLE}.calificacion ;;
}

dimension: cantidad_capitas {
  type: number
  sql: ${TABLE}.cantidad_capitas ;;
}

dimension: capita_key {
  hidden: yes
  type: number
  sql: ${TABLE}.capita_key ;;
}

dimension: centralizado {
  type: string
  sql: ${TABLE}.centralizado ;;
}

dimension: fecha_key {
  hidden: yes
  type: number
  sql: ${TABLE}.fecha_key ;;
}

dimension: oficial_empleador_key {
  hidden: yes
  type: number
  sql: ${TABLE}.oficial_empleador_key ;;
}

dimension: saldo_acreditacion_promedio_12 {
  type: number
  sql: ${TABLE}.saldo_acreditacion_promedio_12 ;;
}

dimension: saldo_acreditacion_promedio_3 {
  type: number
  sql: ${TABLE}.saldo_acreditacion_promedio_3 ;;
}

dimension: saldo_acreditacion_promedio_6 {
  type: number
  sql: ${TABLE}.saldo_acreditacion_promedio_6 ;;
}

dimension: sucursal_oficial_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_oficial_key ;;
}

dimension: sucursal_radicacion_capita_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_radicacion_capita_key ;;
}

dimension: sucursal_radicacion_convenio_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_radicacion_convenio_key ;;
}

dimension: rango_salarial {
  hidden: yes
  type: string
  sql: CASE WHEN ${acreditacion_total_mes} >= 700 AND ${acreditacion_total_mes} < 2000 THEN "1) 700-1.999"
         CASE WHEN ${acreditacion_total_mes} >= 2000 AND ${acreditacion_total_mes} < 20000 THEN "2) 2.000-19.999"
         CASE WHEN ${acreditacion_total_mes} >= 20000 AND ${acreditacion_total_mes} < 30000 THEN "3) 20.001-29.999"
         CASE WHEN ${acreditacion_total_mes} >= 30000 AND ${acreditacion_total_mes} < 50000 THEN "4) 30.001-49.999"
         CASE WHEN ${acreditacion_total_mes} >= 50000 AND ${acreditacion_total_mes} < 80000 THEN "5) 50.001-79.999"
         ELSE "6) 80.000 o Más";;
}

dimension: es_alerta_temprana {
  type: string
  sql: CASE WHEN ${lkp_estados_ps.estado_monitor_ps} = "Activa" AND ${acreditacion_total_mes} < 700 THEN "SI" ELSE "NO" END  ;;
}

measure: count {
  type: count
  drill_fields: []
}

measure: cantidad_altas {
  type: sum
  sql: CASE WHEN ${lkp_estados_ps.estado_monitor_ps} = "Activacion_Mes" THEN ${cantidad_capitas} END  ;;
}

measure: cantidad_bajas {
  type: sum
  sql: CASE WHEN ${lkp_estados_ps.estado_monitor_ps} in ("Inactivacion_Mes", "Cancelacion mes", "Desvinculacion mes") THEN ${cantidad_capitas} END  ;;
}

measure: inactivacion_mes {
  type: sum
  sql: CASE WHEN ${lkp_estados_ps.estado_monitor_ps} = "Inactivacion_Mes" THEN ${cantidad_capitas} END  ;;
}

measure: cancelacion_mes {
  type: sum
  sql: CASE WHEN ${lkp_estados_ps.estado_monitor_ps} = "Cancelacion mes" THEN ${cantidad_capitas} END  ;;
}

measure: desvinculacion_mes {
  type: sum
  sql: CASE WHEN ${lkp_estados_ps.estado_monitor_ps} = "Desvinculacion mes" THEN ${cantidad_capitas} END  ;;
}

measure: activa {
  type: sum
  sql: CASE WHEN ${lkp_estados_ps.estado_monitor_ps} = "Activa" THEN ${cantidad_capitas} END  ;;
}

measure: inactiva {
  type: sum
  sql: CASE WHEN ${lkp_estados_ps.estado_monitor_ps} = "Inactiva" THEN ${cantidad_capitas} END  ;;
}

measure: activacion_mes {
  type: sum
  sql: CASE WHEN ${lkp_estados_ps.estado_monitor_ps} = "Activacion_Mes" THEN ${cantidad_capitas} END  ;;
}

measure: alerta_temprana {
  type: sum
  sql: CASE WHEN ${lkp_estados_ps.estado_monitor_ps} = "Activa" AND ${acreditacion_total_mes} < 700 THEN ${cantidad_capitas} END  ;;
}

measure: ps_stock {
  type: sum
  sql: CASE WHEN ${lkp_estados_ps.estado_monitor_ps} in ("Activacion_Mes", "Activa") THEN ${cantidad_capitas} ELSE 0 END  ;;
}

measure: q_capitas {
  type: sum
  sql: ${cantidad_capitas} ;;
}

measure: sum_acreditacion_total_mes {
  type: sum
  sql: ${acreditacion_total_mes} ;;
}

measure: sum_acreditacion_total_mes_ant {
  type: sum
  sql: ${acreditacion_total_mes_ant} ;;
}

measure: sum_acreditacion_total_mes_ant_ant {
  type: sum
  sql: ${acreditacion_total_mes_ant_ant} ;;
}

measure: sum_acreditacion_salarial_mes {
  type: sum
  sql: ${acreditacion_salarial_mes} ;;
}

measure: sum_acreditacion_honorarios_mes {
  type: sum
  sql: ${acreditacion_honorarios_mes} ;;
}

measure: sum_acreditacion_datanet_mes {
  type: sum
  sql: ${acreditacion_datanet_honorarios_mes} ;;
}

measure: sum_acreditacion_manual_mes {
  type: sum
  sql: ${acreditacion_manual_mes} ;;
}

measure: sum_acreditacion_1001_manual_mes {
  type: sum
  sql: ${acreditacion_manual_1001_mes} ;;
}

measure: acredit_total_mes_activacion_mes {
  type: sum
  sql: CASE WHEN ${lkp_estados_ps.estado_monitor_ps} = "Activacion_Mes" THEN ${acreditacion_total_mes} END  ;;
}

measure: acredit_total_mes_sin_activacion_mes {
  type: sum
  sql: CASE WHEN ${lkp_estados_ps.estado_monitor_ps} != "Activacion_Mes" THEN ${acreditacion_total_mes} END  ;;
}

measure: cantidad_capitas_sin_activacion_mes {
  type: sum
  sql: CASE WHEN ${lkp_estados_ps.estado_monitor_ps} != "Activacion_Mes" THEN ${cantidad_capitas} END  ;;
}

measure: sum_cantidad_capitas {
  type: sum
  sql: ${cantidad_capitas} ;;
}
measure: Var {
  type: percent_of_previous
  sql: ${sum_cantidad_capitas};;

}

measure: cantidad_empleadores {
  type: count_distinct
  sql: ${cantidad_capitas} ;;
}

measure: altas_netas {
  type: number
  sql: ${cantidad_altas} - ${cantidad_bajas} ;;
}


#MENÚ

measure: menu_vertical {
  hidden: yes
  type: string
  sql: DISTINCT '' ;;
  html:
    <img src="https://abogadosdesalta.org.ar/wp-content/uploads/2021/07/MACRO.png" width="65%" height="55px">

              <body>
                <nav>
                  <ul style="list-style-type: none;
                margin: 0;
                padding: 5px;
                display: block;
              font-size: 13px;
                flex-direction: column;">
                    <li style="flex-grow: 1;"><a style="  display: block;
                padding: 10px 2px;
                background-color: #003057;
                text-align: center;
                margin-bottom: 0.2em;
                text-decoration: none;
                color: #fff;
                width: 6em;" href="#">Cápitas Mes Cerrado</a></li>
                    <li style="flex-grow: 1;"><a style="  display: block;
                padding: 2px 2px;
                background-color: #003057;
                text-align: center;
                margin-bottom: 0.2em;
                text-decoration: none;
                color: #fff;
                width: 6em;" href="#">Evolución Stock por División</a></li>
                    <li style="flex-grow: 1;"><a style="  display: block;
                padding: 19px 7px;
                background-color: #003057;
                text-align: center;
                margin-bottom: 0.2em;
                text-decoration: none;
                color: #fff;
                width: 6em;" href="#">Stock Q/$</a></li>
                    <li style="flex-grow: 1;"><a style="  display: block;
                padding: 12px 5px;
                background-color: #003057;
                text-align: center;
                margin-bottom: 0.2em;
                text-decoration: none;
                color: #fff;
                width: 6em;" href="#">Evolución Altas Netas</a></li>
                   <li style="flex-grow: 1;"><a style="  display: block;
                padding: 19px 5px;
                background-color: #003057;
                text-align: center;
                margin-bottom: 0.2em;
                text-decoration: none;
                color: #fff;
                width: 6em;" href="#">Altas Netas</a></li>
                   <li style="flex-grow: 1;"><a style="  display: block;
                padding: 18px 5px;
                background-color: #003057;
                text-align: center;
                margin-bottom: 0.2em;
                text-decoration: none;
                color: #fff;
                width: 6em;" href="#">Bajas</a></li>
                   <li style="flex-grow: 1;"><a style="  display: block;
                padding: 19px 5px;
                background-color: #003057;
                text-align: center;
                margin-bottom: 0.2em;
                text-decoration: none;
                color: #fff;
                width: 6em;" href="#">Variaciones</a></li>



    </ul>
    </nav>;;
}

}
