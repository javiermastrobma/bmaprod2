view: cash_management {
  derived_table: {
    sql:
    SELECT * FROM ${pago_a_proveedores.SQL_TABLE_NAME}
    UNION ALL
    SELECT * FROM ${recaudaciones.SQL_TABLE_NAME}
    UNION ALL
    SELECT * FROM ${recaudaciones_acreditaciones_dia.SQL_TABLE_NAME}
    UNION ALL
    SELECT * FROM ${situaciones_convenio.SQL_TABLE_NAME}
    UNION ALL
    SELECT * FROM ${trx_causal.SQL_TABLE_NAME}
    UNION ALL
    SELECT * FROM ${valores_al_cobro.SQL_TABLE_NAME}
    ;;
  }

  filter: anio_actual_anio_anterior_cash_management {
    sql: ${lkp_fechas.anio} >= EXTRACT(YEAR FROM CURRENT_DATE()) -1 ;;
  }

  measure: count {
    type: count
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: fecha_date {
    type: date
    sql: ${lkp_fechas.fecha_date} ;;
  }

  dimension: periodo {
    type: string
    sql: ${TABLE}.periodo ;;
  }

  dimension: codigo_cliente {
    type: number
    sql: ${TABLE}.codigo_cliente ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }

  dimension: banca {
    type: string
    sql: ${TABLE}.banca ;;
  }

  dimension: segmento {
    type: string
    sql: ${TABLE}.segmento ;;
  }

  dimension: subsegmento {
    type: string
    sql: ${TABLE}.subsegmento ;;
  }

  dimension: categoria {
    type: string
    sql: ${TABLE}.categoria ;;
  }

  dimension: forma_pago {
    type: string
    sql: ${TABLE}.forma_pago ;;
  }

  dimension: grupo {
    type: string
    sql: ${TABLE}.grupo ;;
  }

  dimension: concepto {
    type: string
    sql: ${TABLE}.concepto ;;
  }

  dimension: concepto_mobile {
    type: string
    sql: CASE WHEN ${TABLE}.concepto = "Pago a Proveedores - Plataforma Interbanking" THEN "PP3 - Plat. Inter."
              WHEN ${TABLE}.concepto = "Pago a Proveedores - Plataforma Macro" THEN "PP3 - Plat. Macro"
              WHEN ${TABLE}.concepto = "Pago Mis Cuentas" THEN "PMC"
              WHEN ${TABLE}.concepto = "Valores al Cobro" THEN "VAC"
              WHEN ${TABLE}.concepto = "Transferencias Débitos" THEN "Transf. Débitos"
              WHEN ${TABLE}.concepto = "Transferencias Créditos" THEN "Transf. Créditos"
              WHEN ${TABLE}.concepto = "Depósitos en Efectivo" THEN "Dep. en efvo."
              WHEN ${TABLE}.concepto = "Acreditación de Cupones" THEN "Acred. Cupones"
         ELSE ${TABLE}.concepto END ;;
  }

  dimension: subconcepto {
    type: string
    sql: ${TABLE}.subconcepto ;;
  }

  dimension: oficial_cuenta {
    type: string
    sql: ${TABLE}.oficial_cuenta ;;
  }

  dimension: division {
    type: string
    sql: ${TABLE}.division ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: sucursal {
    type: string
    sql: ${TABLE}.sucursal ;;
  }

  dimension: sucursal_source {
    type: number
    sql: ${TABLE}.sucursal_source ;;
  }

  dimension: cantidad {
    type: number
    sql: ${TABLE}.cantidad ;;
  }

  dimension: importe {
    type: number
    sql: ${TABLE}.importe ;;
  }

  measure: sum_importe {
    type: sum
    sql: ${importe} ;;
    value_format: "$#,##0"
  }

  measure: sum_cantidad {
    type: sum
    sql: ${cantidad} ;;
    value_format_name: decimal_0
  }

  measure: cantidad_clientes {
    type: count_distinct
    sql: ${codigo_cliente} ;;
    value_format_name: decimal_0
  }

  dimension: importe_cobranzas {
    type: number
    sql: (SELECT SUM(${importe}) FROM cash_management WHERE ${grupo} = "Cobranzas") ;;
  }

  dimension: importe_pagos {
    type: number
    sql: (SELECT SUM(${importe}) FROM cash_management WHERE ${grupo} = "Pagos") ;;
  }

  measure: importe_formateado {
    type: sum
    sql: ${importe} ;;
    html: <font size="10"> {{ value }}</font> ;;
  }

  measure: info_icon {
    group_label: "Info Icons"
    type: sum
    sql: 0 ;;
    drill_fields: [glosario]
    html:
    <a href="#drillmenu" target="_self">
      <img src= "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9Y5C5ruMctR2tFPetVHb0bksBCOVfwZbDig&usqp=CAU" style="width: 2.5em; height: 2.5em; padding: 1.4em 0.7em 0.5em 0.5;">;;
  }
  measure: glosario {
    group_label: "Info Icons"
    label: "Glosario"
    description: "Glosario"
    type: string
    sql: DISTINCT '' ;;
    html:
    <div style="
    display: border-box;
    vertical-align: top;
    border: 1px solid #D6D6D6;
    height: 50vh;
    width: 98%
    border-radius: 4px;
    background-color: #F4F4F4;
    text-align: left;
    font-size: 18px;
    font-family: Calibri;
    margin: 20px auto;
    padding: 10px;
    box-sahdow: rgba( 0, 0, 0, 0.35) 0px 5px 15px;
    overflow: auto;
    ">
     <div style="font-weignt: 600; font-size: 30px;text-align:center"><b>Glosario:</b></div>
     <div style="padding-top: 1.4em">
        <!--><video style="float: left; margin-right:20px" width="400" controls autoplay> <controls> <source src="http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4" type="video/mp4"></video><!-->
     <div style="">
      <b>Banca (Atributo del Cliente):</b> Se utiliza la Banca Comité. La misma se asigna el primer día hábil del mes en curso y replicará para los periodos anteriores.<br>
      <b>Categoría (Atributo del Cliente):</b> Se distinguen las siguientes categorías: Selecta, Cotitular Selecta, Selecta Privado, Familiar Selecta Privado, Negocios y Profesionales, No Categorizado, Sin Clasificar.<br>
      <b>Oficial del Cliente (Atributo del Cliente):</b> Último Oficial del Cliente asignado.<br>
      <b>Segmento (Atributo del Cliente):</b> Correspondiente a la Banca y replicará para los periodos anteriores.<br>
      <b>Subsegmento (Atributo del Cliente):</b> Correspondiente a la Banca y replicará para los periodos anteriores.<br>
      <b>Tipo Persona (Atributo del Cliente):</b> Física o Jurídica.<br>
      <b>División (Atributo del Oficial de Cuentas):</b> La correspondiente al Oficial de Clientes.<br>
      <b>Región (Atributo del Oficial de Cuentas):</b> La correspondiente al Oficial de Clientes.<br>
      <b>Sucursal (Atributo del Oficial de Cuentas):</b> La correspondiente al Oficial de Clientes.<br>
      <b>Importe Cash (Métrica):</b> Volumen mensual operado en productos de Cobros y Pagos.<br>
      </div>
     </div>
    </div>;;
  }

  dimension: menu_volumen_mobile {
    label: "Menú Volumen Mobile"
    type: number
    html:
    <div style="text-align: center; display: inline-block;">
      <a style="
      color: #003057;
      border: solid 1px #003057;
      float: left;
      font-weight: 400;
      text-align: center;
      vertical-align: middle;
      cursor: pointer;
      user-select: none;
      padding: 8px;
      margin: 0 0 0 0;
      font-size: 15px;
      line-height: 8px;
      border-radius: 5px;
      content-box; width:130%;
      box-shadow: 0 10px 10px 0px rgba(0, 0, 0, 0.8);
      text-decoration: none;
      box-sizing: border-box;"
      href="https://bancomacro.cloud.looker.com/dashboards/122?Divisi%C3%B3n+Radicaci%C3%B3n=&Periodo=&%C3%9Altimo+Mes+Cargado=true&Codigo+Cliente=">
      Volumen
      </a>
      </div>;;
    sql: DISTINCT '';;
  }

  dimension: menu_clientes_mobile {
    label: "Menú Clientes Mobile"
    type: number
    html:
    <div style="text-align: center; display: inline-block;">

                            <a style="
                              color: #003057;
                                border: solid 1px #003057;
                                float: left;
                                font-weight: 400;
                                text-align: center;
                                vertical-align: middle;
                                cursor: pointer;
                                user-select: none;
                                padding: 8px;
                                margin: 0 0 0 0;
                                font-size: 15px;
                                line-height: 8px;
                                border-radius: 5px;
                                content-box; width:130%;
                                box-shadow: 0 10px 10px 0px rgba(0, 0, 0, 0.8);
                                text-decoration: none;
                                box-sizing: border-box;"
                             href="https://bancomacro.cloud.looker.com/dashboards/123?Divisi%C3%B3n%20Radicaci%C3%B3n=&Periodo=&%C3%9Altimo%20Mes%20Cargado=true&Codigo%20Cliente=">
                        Clientes
                            </a>
      </div>;;
    sql: DISTINCT '';;
  }
}
