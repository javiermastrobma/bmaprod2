view: lkp_clientes_completa_embebed {
  sql_table_name: `bm-gcp-p1-dw.looker_embebed.lkp_clientes_completa`
    ;;

  dimension: actividad_economica_key {
    hidden: yes
    type: number
    sql: ${TABLE}.actividad_economica_key ;;
  }

  dimension: actividad_extendida_key {
    hidden: yes
    type: number
    sql: ${TABLE}.actividad_extendida_key ;;
  }

  dimension: actividad_key {
    hidden: yes
    type: number
    sql: ${TABLE}.actividad_key ;;
  }

  dimension: banca_comite_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banca_comite_key ;;
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

  dimension: canal_captacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.canal_captacion_key ;;
  }

  dimension: cantidad_empleados {
    hidden: yes
    type: number
    sql: ${TABLE}.cantidad_empleados ;;
  }

  dimension: categoria_selecta {
    hidden: yes
    type: string
    sql: ${TABLE}.categoria_selecta ;;
  }

  dimension: centralizado {
    hidden: yes
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente"
    type: string
    sql: ${TABLE}.centralizado ;;
  }

  dimension: ciudad_nacimiento {
    hidden: yes
    view_label: "Datos CLIENTE"
    group_label: " Otros Datos Cliente"
    type: string
    sql: ${TABLE}.ciudad_nacimiento ;;
  }

  dimension: clasificacion_especial_key {
    hidden: yes
    type: number
    sql: ${TABLE}.clasificacion_especial_key ;;
  }

  dimension: cliente_key {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: codigo_cliente {
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente"
    type: number
    sql: CASE WHEN ${restringido} = "S"
         THEN 0
         ELSE ${TABLE}.codigo_cliente
         END ;;
  }

  dimension: codigo_cliente_sr {
    label: "Codigo Cliente SR"
    view_label: "Datos CLIENTE"
    group_label: "Otros"
    type: number
    sql: ${TABLE}.codigo_cliente ;;
  }

  dimension: condicion_mipyme_key {
    hidden: yes
    type: number
    sql: ${TABLE}.condicion_mipyme_key ;;
  }

  dimension: estado_civil {
    hidden: yes
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente"
    type: string
    sql: ${TABLE}.estado_civil ;;
  }

  dimension: eventual {
    hidden: yes
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente"
    type: number
    sql: ${TABLE}.eventual ;;
  }

  dimension_group: fecha_depuracion_cobis {
    hidden: yes
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente"
    type: time
    timeframes: [
      date,
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_depuracion_cobis ;;
  }

  dimension_group: fecha_ingreso {
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente"
    type: time
    timeframes: [
      date,
      month,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_ingreso ;;
  }

  dimension_group: fecha_nacimiento {
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente"
    type: time
    timeframes: [
      date,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_nacimiento ;;
  }

  dimension: localidad {
    hidden: yes
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente"
    type: string
    sql: ${TABLE}.localidad ;;
  }

  dimension: marca_pep {
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente"
    type: string
    sql: ${TABLE}.marca_pep ;;
  }

  dimension: nombre {
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente"
    type: string
    sql: CASE WHEN ${restringido} = "S"
         THEN "Dato Restringido"
         ELSE ${TABLE}.nombre
         END;;
  }

  dimension: nombre_sr {
    hidden: yes
    label: "Nombre SR"
    view_label: "Datos CLIENTE"
    group_label: "Otros"
    type: string
    sql: ${TABLE}.nombre ;;
  }

  dimension: nro_doc_tributario {
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente"
    type: number
    sql: ${TABLE}.nro_doc_tributario ;;
  }

  dimension: nro_doc_tributario_sr {
    hidden: yes
    label: "Nro Doc Tributario SR"
    view_label: "Datos CLIENTE"
    group_label: "Otros"
    type: number
    sql: ${TABLE}.nro_doc_tributario ;;
  }

  dimension: nro_documento {
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente"
    type: number
    sql: ${TABLE}.nro_documento ;;
  }

  dimension: nro_documento_sr {
    hidden: yes
    label: "Nro Documento SR"
    view_label: "Datos CLIENTE"
    group_label: "Otros"
    type: number
    sql: ${TABLE}.nro_documento ;;
  }

  dimension: oficial_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_cuenta_key ;;
  }

  dimension: pais {
    hidden: yes
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente"
    type: string
    sql: ${TABLE}.pais ;;
  }

  dimension: pais_nacimiento {
    hidden: yes
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente"
    type: string
    sql: ${TABLE}.pais_nacimiento ;;
  }

  dimension: productos_activos {
    hidden: yes
    type: string
    sql: ${TABLE}.productos_activos ;;
  }

  dimension: provincia {
    hidden: yes
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente"
    type: string
    sql: ${TABLE}.provincia ;;
  }

  dimension: provincia_nacimiento {
    hidden: yes
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente"
    type: string
    sql: ${TABLE}.provincia_nacimiento ;;
  }

  dimension: residencia_key {
    hidden: yes
    type: number
    sql: ${TABLE}.residencia_key ;;
  }

  dimension: restringido {
    hidden: yes
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente"
    type: string
    sql: ${TABLE}.restringido ;;
  }

  dimension: sector_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sector_key ;;
  }

  dimension: sexo {
    hidden: yes
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente"
    type: string
    sql: ${TABLE}.sexo ;;
  }

  dimension: situacion_deudor_banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.situacion_deudor_banco_key ;;
  }

  dimension: situacion_deudor_bcra_key {
    hidden: yes
    type: number
    sql: ${TABLE}.situacion_deudor_bcra_key ;;
  }

  dimension: situacion_tributaria_key {
    hidden: yes
    type: number
    sql: ${TABLE}.situacion_tributaria_key ;;
  }

  dimension: sucursal_captacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_captacion_key ;;
  }

  dimension: sucursal_radicacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_radicacion_key ;;
  }

  dimension: tipo_cartera_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_cartera_key ;;
  }

  dimension: tipo_doc_tributario {
    hidden: yes
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente"
    type: string
    sql: ${TABLE}.tipo_doc_tributario ;;
  }

  dimension: tipo_documento {
    hidden: yes
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente"
    type: string
    sql: ${TABLE}.tipo_documento ;;
  }

  dimension: tipo_persona {
    view_label: "Datos CLIENTE"
    group_label: " Tipo Cliente"
    type: string
    sql: ${TABLE}.tipo_persona ;;
  }

  dimension: tipo_persona_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_persona_key ;;
  }

  dimension: tipo_sucursal_asignada_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_sucursal_asignada_key ;;
  }

  dimension: tipo_titular_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_titular_key ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }

  #BOTONES PARA DASHBOARD                         #BOTONES PARA DASHBOARD

  dimension: menu_volver {
    hidden: yes
    type: number
    html:
    <div style="text-align: center;">

                                          <a style="
                                            color: #003057;
                                              border: solid 1px #003057;
                                              float: left;
                                              font-weight: 400;
                                              text-align: center;
                                              vertical-align: middle;
                                              cursor: pointer;
                                              user-select: none;
                                              padding: 10px;
                                              margin: 0 0 1em 0;
                                              font-size: 15px;
                                              line-height: 8px;
                                              border-radius: 8px;
                                              content-box; width:100%;
                                              text-decoration: none;
                                              box-sizing: border-box;"
                                           href="https://bancomacro.cloud.looker.com/dashboards/87?C%C3%B3digo%20Cliente%20Convenio={{value}}&C%C3%B3digo%20Cliente%20C%C3%A1pita=">
                                      <button>⇦ Volver</button>
                                          </a>

      </a></div>;;
    sql:${codigo_cliente};;
  }

  dimension: codigo_cliente_nombre {
    hidden: yes
    type: string
    sql: CONCAT(${codigo_cliente}, " - ", ${nombre}) ;;
    html: <p style="color:#ffffff; background-color: #003057; font-size:100%; text-align:center;border-radius: 8px">{{value}}</p> ;;
  }

  dimension: codigo_cliente_nombre_mobile {
    hidden: yes
    type: string
    sql: CONCAT(${codigo_cliente}, " - ", ${nombre}) ;;
    html: <p style="color:#ffffff; background-color: #003057; font-size:60%; text-align:center">{{value}}</p> ;;
  }

  dimension: primera_acreditacion {hidden: yes
    sql: ${codigo_cliente} ;;
    html: <a href="https://bancomacro.cloud.looker.com/dashboards/90?Codigo+Cliente={{value}}"><button>Ir a Primera Acreditación</button></a>;;
  }

  dimension: ultimas_acreditaciones {
    hidden: yes
    sql: ${codigo_cliente} ;;
    html: <a href="https://bancomacro.cloud.looker.com/dashboards/89?Codigo%20Cliente={{value}}"><button>Ir a Últimas Acreditaciones</button></a>;;
  }

  dimension: menu_detalle_de_capita {
    hidden: yes
    label: "Menú de detalle de Capita"
    type: number
    html:
    <div style="text-align: center; display: table-text;">

                              <a style="
                                color: #003057;
                                  border: solid 1px #003057;
                                  float: left;
                                  font-weight: 400;
                                  text-align: center;
                                  vertical-align: middle;
                                  cursor: pointer;
                                  user-select: none;
                                  padding: 10px;
                                  margin: 1px 2px 1em 0;
                                  font-size: 15px;
                                  line-height: 8px;
                                  border-radius: 8px;
                                  content-box; width:20%;
                                  box-shadow: 0 10px 10px 0px rgba(0, 0, 0, 0.8);
                                  text-decoration: none;
                                  box-sizing: border-box;"
                               href="https://bancomacro.cloud.looker.com/dashboards/76?C%C3%B3digo%20Cliente%20Convenio={{value}}&Estado%20Monitor=&Periodo=&C%C3%B3digo%20Cliente%20C%C3%A1pita=
                          "target="_blank">
                          Detalle por Cliente Convenio
                              </a>

      <a style="
      color: #003057;
      border: solid 1px #003057;
      float: left;
      font-weight: 400;
      text-align: center;
      vertical-align: middle;
      cursor: pointer;
      user-select: none;
      padding: 10px;
      margin: 1px 2px 1em 0;
      font-size: 15px;
      line-height: 8px;
      border-radius: 8px;
      content-box; width:20%;
      box-shadow: 0 10px 10px 0px rgba(0, 0, 0, 0.8);
      text-decoration: none;
      box-sizing: border-box;"
      href="https://bancomacro.cloud.looker.com/dashboards/86?C%C3%B3digo+Cliente+Convenio={{value}}&Estado+Monitor=&Periodo=&C%C3%B3digo+Cliente+C%C3%A1pita=
      "target="_blank">
      Monitor Acreditaciones Cápitas
      </a>

      <a style="
      color: #003057;
      border: solid 1px #003057;
      float: left;
      font-weight: 400;
      text-align: center;
      vertical-align: middle;
      cursor: pointer;
      user-select: none;
      padding: 10px;
      margin: 1px 2px 1em 0;
      font-size: 15px;
      line-height: 8px;
      border-radius: 8px;
      content-box; width:20%;
      box-shadow: 0 10px 10px 0px rgba(0, 0, 0, 0.8);
      text-decoration: none;
      box-sizing: border-box;"
      href="https://bancomacro.cloud.looker.com/dashboards/87?C%C3%B3digo+Cliente+Convenio={{value}}&C%C3%B3digo+Cliente+C%C3%A1pita=
      "target="_blank">
      Datos Acreditación
      </a>

      <a style="
      color: #003057;
      border: solid 1px #003057;
      float: left;
      font-weight: 400;
      text-align: center;
      vertical-align: middle;
      cursor: pointer;
      user-select: none;
      padding: 10px;
      margin: 1px 2px 1em 0;
      font-size: 15px;
      line-height: 8px;
      border-radius: 8px;
      content-box; width:20%;
      box-shadow: 0 10px 10px 0px rgba(0, 0, 0, 0.8);
      text-decoration: none;
      box-sizing: border-box;"
      href="https://bancomacro.cloud.looker.com/dashboards/88?C%C3%B3digo+Cliente+Convenio={{value}}&C%C3%B3digo+Empleado=
      "target="_blank">
      Datos Convenio
      </a>

      </a></div>;;
    sql:${codigo_cliente};;
  }
}
