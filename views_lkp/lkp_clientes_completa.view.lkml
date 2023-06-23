view: lkp_clientes_completa {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_clientes_completa`
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

#CLIENTES COMPLETA CONVENIO PLAN SUELDO

view: lkp_clientes_completa_convenio_ps {
  extends: [lkp_clientes_completa]
  label: "Clientes Completa Convenio"

  dimension: cliente_key {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: codigo_cliente {
    label: "Código Cliente Convenio"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente"
    type: number
    sql: CASE WHEN ${restringido} = "S"
         THEN 0
         ELSE ${TABLE}.codigo_cliente
         END ;;
  }

  dimension: codigo_cliente_sr {
    label: "Codigo Cliente SR Convenio"
    view_label: "Datos CLIENTE"
    group_label: "Otros"
    type: number
    sql: ${TABLE}.codigo_cliente ;;
  }
  dimension_group: fecha_ingreso {
    label: "Fecha Ingreso Convenio"
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
    label: "Fecha Nacimiento Convenio"
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
  dimension: marca_pep {
    label: "Marca Pep Convenio"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente"
    type: string
    sql: ${TABLE}.marca_pep ;;
  }

  dimension: nombre {
    label: "Nombre Convenio"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente"
    type: string
    sql: CASE WHEN ${restringido} = "S"
         THEN "Dato Restringido"
         ELSE ${TABLE}.nombre
         END;;
  }
  dimension: nro_doc_tributario {
    label: "Nro Doc Tributario Convenio"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente"
    type: number
    sql: ${TABLE}.nro_doc_tributario ;;
  }
  dimension: nro_documento {
    label: "Nro Documento Convenio"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente"
    type: number
    sql: ${TABLE}.nro_documento ;;
  }
  dimension: tipo_persona {
    label: "Tipo Persona Convenio"
    view_label: "Datos CLIENTE"
    group_label: " Tipo Cliente"
    type: string
    sql: ${TABLE}.tipo_persona ;;
  }
}

#CLIENTE COMPLETA CAPITA PLAN SUELDO

view: lkp_clientes_completa_capita_ps {
  extends: [lkp_clientes_completa]
  label: "Clientes Completa Capita"

  dimension: cliente_key {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }
  dimension: codigo_cliente {
    label: "Código Cliente Cápita"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente"
    type: number
    sql: CASE WHEN ${restringido} = "S"
         THEN 0
         ELSE ${TABLE}.codigo_cliente
         END ;;
  }

  dimension: codigo_cliente_sr {
    label: "Código Cliente SR Cápita"
    view_label: "Datos CLIENTE"
    group_label: "Otros"
    type: number
    sql: ${TABLE}.codigo_cliente ;;
  }
  dimension_group: fecha_ingreso {
    label: "Fecha Ingreso Cápita"
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
    label: "Fecha Nacimiento Cápita"
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
  dimension: marca_pep {
    label: "Marca Pep Cápita"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente"
    type: string
    sql: ${TABLE}.marca_pep ;;
  }

  dimension: nombre {
    label: "Nombre Cápita"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente"
    type: string
    sql: CASE WHEN ${restringido} = "S"
         THEN "Dato Restringido"
         ELSE ${TABLE}.nombre
         END;;
  }
  dimension: nro_doc_tributario {
    label: "Nro Doc Tributario Cápita"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente"
    type: number
    sql: ${TABLE}.nro_doc_tributario ;;
  }
  dimension: nro_documento {
    label: "Nro Documento Cápita"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente"
    type: number
    sql: ${TABLE}.nro_documento ;;
  }
  dimension: tipo_persona {
    label: "Tipo Persona Cápita"
    view_label: "Datos CLIENTE"
    group_label: " Tipo Cliente"
    type: string
    sql: ${TABLE}.tipo_persona ;;
  }
}


#CLIENTES ORIGEN PARA MODELO ESTRELLA FCT_TRANSFERENCIAS
view: lkp_clientes_origen{
  extends: [lkp_clientes_completa]
  label: "Clientes Origen"

  dimension: cliente_key {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }
  dimension: codigo_cliente {
    label: "Código Cliente Origen"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Origen"
    type: number
    sql: CASE WHEN ${restringido} = "S"
         THEN 0
         ELSE ${TABLE}.codigo_cliente
         END ;;
  }

  dimension: codigo_cliente_sr {
    label: "Código Cliente SR Origen"
    view_label: "Datos CLIENTE"
    group_label: "Otros"
    type: number
    sql: ${TABLE}.codigo_cliente ;;
  }
  dimension_group: fecha_ingreso {
    label: "Fecha Ingreso Origen"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Origen"
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
    label: "Fecha Nacimiento Origen"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Origen"
    type: time
    timeframes: [
      date,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_nacimiento ;;
  }
  dimension: marca_pep {
    label: "Marca Pep Origen"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Origen"
    type: string
    sql: ${TABLE}.marca_pep ;;
  }

  dimension: nombre {
    label: "Nombre Origen"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Origen"
    type: string
    sql: CASE WHEN ${restringido} = "S"
         THEN "Dato Restringido"
         ELSE ${TABLE}.nombre
         END;;
  }
  dimension: nro_doc_tributario {
    label: "Nro Doc Tributario Origen"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Origen"
    type: number
    sql: ${TABLE}.nro_doc_tributario ;;
  }
  dimension: nro_documento {
    label: "Nro Documento Origen"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Origen"
    type: number
    sql: ${TABLE}.nro_documento ;;
  }
  dimension: tipo_persona {
    label: "Tipo Persona Origen"
    view_label: "Datos CLIENTE"
    group_label: " Tipo Cliente - Origen"
    type: string
    sql: ${TABLE}.tipo_persona ;;
  }
}


#CLIENTES RECEPTOR PARA MODELO ESTRELLA FCT_TRANSFERENCIAS
view: lkp_clientes_receptor{
  extends: [lkp_clientes_completa]
  label: "Clientes Receptor"

  dimension: cliente_key {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }
  dimension: codigo_cliente {
    label: "Código Cliente Receptor"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Receptor"
    type: number
    sql: CASE WHEN ${restringido} = "S"
         THEN 0
         ELSE ${TABLE}.codigo_cliente
         END ;;
  }

  dimension: codigo_cliente_sr {
    label: "Código Cliente SR Receptor"
    view_label: "Datos CLIENTE"
    group_label: "Otros"
    type: number
    sql: ${TABLE}.codigo_cliente ;;
  }
  dimension_group: fecha_ingreso {
    label: "Fecha Ingreso Receptor"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Receptor"
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
    label: "Fecha Nacimiento Receptor"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Receptor"
    type: time
    timeframes: [
      date,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_nacimiento ;;
  }
  dimension: marca_pep {
    label: "Marca Pep Origen"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Origen"
    type: string
    sql: ${TABLE}.marca_pep ;;
  }

  dimension: nombre {
    label: "Nombre Receptor"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Receptor"
    type: string
    sql: CASE WHEN ${restringido} = "S"
         THEN "Dato Restringido"
         ELSE ${TABLE}.nombre
         END;;
  }
  dimension: nro_doc_tributario {
    label: "Nro Doc Tributario Receptor"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Receptor"
    type: number
    sql: ${TABLE}.nro_doc_tributario ;;
  }
  dimension: nro_documento {
    label: "Nro Documento Receptor"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Receptor"
    type: number
    sql: ${TABLE}.nro_documento ;;
  }
  dimension: tipo_persona {
    label: "Tipo Persona Receptor"
    view_label: "Datos CLIENTE"
    group_label: " Tipo Cliente - Receptor"
    type: string
    sql: ${TABLE}.tipo_persona ;;
  }
}

# CLIENTES DEBITO PERTENECIENTE A MODELO ESTRELLA FCT_TRANSACCIONES_DATANET

view: lkp_clientes_debito {
  extends: [lkp_clientes_completa]
  label: "Clientes Débito"

  dimension: cliente_key {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }
  dimension: codigo_cliente {
    label: "Código Cliente Débito"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Débito"
    type: number
    sql: CASE WHEN ${restringido} = "S"
         THEN 0
         ELSE ${TABLE}.codigo_cliente
         END ;;
  }

  dimension: codigo_cliente_sr {
    label: "Código Cliente SR Débito"
    view_label: "Datos CLIENTE"
    group_label: "Otros"
    type: number
    sql: ${TABLE}.codigo_cliente ;;
  }
  dimension_group: fecha_ingreso {
    label: "Fecha Ingreso Débito"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Débito"
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
    label: "Fecha Nacimiento Débito"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Débito"
    type: time
    timeframes: [
      date,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_nacimiento ;;
  }
  dimension: marca_pep {
    label: "Marca Pep Débito"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Débito"
    type: string
    sql: ${TABLE}.marca_pep ;;
  }

  dimension: nombre {
    label: "Nombre Débito"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Débito"
    type: string
    sql: CASE WHEN ${restringido} = "S"
         THEN "Dato Restringido"
         ELSE ${TABLE}.nombre
         END;;
  }
  dimension: nro_doc_tributario {
    label: "Nro Doc Tributario Débito"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Débito"
    type: number
    sql: ${TABLE}.nro_doc_tributario ;;
  }
  dimension: nro_documento {
    label: "Nro Documento Débito"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Débito"
    type: number
    sql: ${TABLE}.nro_documento ;;
  }
  dimension: tipo_persona {
    label: "Tipo Persona Débito"
    view_label: "Datos CLIENTE"
    group_label: " Tipo Cliente - Débito"
    type: string
    sql: ${TABLE}.tipo_persona ;;
  }
}

# CLIENTES CREDITO PERTENECIENTE A MODELO ESTRELLA FCT_TRANSACCIONES_DATANET

view: lkp_clientes_credito {
  extends: [lkp_clientes_completa]
  label: "Clientes Crédito"

  dimension: cliente_key {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }
  dimension: codigo_cliente {
    label: "Código Cliente Crédito"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Crédito"
    type: number
    sql: CASE WHEN ${restringido} = "S"
         THEN 0
         ELSE ${TABLE}.codigo_cliente
         END ;;
  }

  dimension: codigo_cliente_sr {
    label: "Código Cliente SR Crédito"
    view_label: "Datos CLIENTE"
    group_label: "Otros"
    type: number
    sql: ${TABLE}.codigo_cliente ;;
  }
  dimension_group: fecha_ingreso {
    label: "Fecha Ingreso Crédito"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Crédito"
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
    label: "Fecha Nacimiento Crédito"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Crédito"
    type: time
    timeframes: [
      date,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_nacimiento ;;
  }
  dimension: marca_pep {
    label: "Marca Pep Crédito"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Crédito"
    type: string
    sql: ${TABLE}.marca_pep ;;
  }

  dimension: nombre {
    label: "Nombre Crédito"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Crédito"
    type: string
    sql: CASE WHEN ${restringido} = "S"
         THEN "Dato Restringido"
         ELSE ${TABLE}.nombre
         END;;
  }
  dimension: nro_doc_tributario {
    label: "Nro Doc Tributario Crédito"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Crédito"
    type: number
    sql: ${TABLE}.nro_doc_tributario ;;
  }
  dimension: nro_documento {
    label: "Nro Documento Crédito"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Crédito"
    type: number
    sql: ${TABLE}.nro_documento ;;
  }
  dimension: tipo_persona {
    label: "Tipo Persona Crédito"
    view_label: "Datos CLIENTE"
    group_label: " Tipo Cliente - Crédito"
    type: string
    sql: ${TABLE}.tipo_persona ;;
  }
}


# CLIENTES TOMADOR PERTENECIENTE A MODELO ESTRELLA FCT_SITUACIONES_PLIZAS

view: lkp_clientes_tomador {
  extends: [lkp_clientes_completa]
  label: "Clientes Tomador"

  dimension: cliente_key {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }
  dimension: codigo_cliente {
    label: "Código Cliente Tomador"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Tomador"
    type: number
    sql: CASE WHEN ${restringido} = "S"
         THEN 0
         ELSE ${TABLE}.codigo_cliente
         END ;;
  }

  dimension: codigo_cliente_sr {
    label: "Código Cliente SR Tomador"
    view_label: "Datos CLIENTE"
    group_label: "Otros"
    type: number
    sql: ${TABLE}.codigo_cliente ;;
  }
  dimension_group: fecha_ingreso {
    label: "Fecha Ingreso Tomador"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Tomador"
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
    label: "Fecha Nacimiento Tomador"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Tomador"
    type: time
    timeframes: [
      date,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_nacimiento ;;
  }
  dimension: marca_pep {
    label: "Marca Pep Tomador"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Tomador"
    type: string
    sql: ${TABLE}.marca_pep ;;
  }

  dimension: nombre {
    label: "Nombre Tomador"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Tomador"
    type: string
    sql: CASE WHEN ${restringido} = "S"
         THEN "Dato Restringido"
         ELSE ${TABLE}.nombre
         END;;
  }
  dimension: nro_doc_tributario {
    label: "Nro Doc Tributario Tomador"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Tomador"
    type: number
    sql: ${TABLE}.nro_doc_tributario ;;
  }
  dimension: nro_documento {
    label: "Nro Documento Tomador"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Tomador"
    type: number
    sql: ${TABLE}.nro_documento ;;
  }
  dimension: tipo_persona {
    label: "Tipo Persona Tomador"
    view_label: "Datos CLIENTE"
    group_label: " Tipo Cliente - Tomador"
    type: string
    sql: ${TABLE}.tipo_persona ;;
  }
}



# CLIENTES ASEGURADO PERTENECIENTE A MODELO ESTRELLA FCT_SITUACIONES_PLIZAS

view: lkp_clientes_asegurado {
  extends: [lkp_clientes_completa]
  label: "Clientes Asegurado"

  dimension: cliente_key {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }
  dimension: codigo_cliente {
    label: "Código Cliente Asegurado"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Asegurado"
    type: number
    sql: CASE WHEN ${restringido} = "S"
         THEN 0
         ELSE ${TABLE}.codigo_cliente
         END ;;
  }

  dimension: codigo_cliente_sr {
    label: "Código Cliente SR Asegurado"
    view_label: "Datos CLIENTE"
    group_label: "Otros"
    type: number
    sql: ${TABLE}.codigo_cliente ;;
  }
  dimension_group: fecha_ingreso {
    label: "Fecha Ingreso Asegurado"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Asegurado"
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
    label: "Fecha Nacimiento Asegurado"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Asegurado"
    type: time
    timeframes: [
      date,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_nacimiento ;;
  }
  dimension: marca_pep {
    label: "Marca Pep Asegurado"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Asegurado"
    type: string
    sql: ${TABLE}.marca_pep ;;
  }

  dimension: nombre {
    label: "Nombre Asegurado"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Asegurado"
    type: string
    sql: CASE WHEN ${restringido} = "S"
         THEN "Dato Restringido"
         ELSE ${TABLE}.nombre
         END;;
  }
  dimension: nro_doc_tributario {
    label: "Nro Doc Tributario Asegurado"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Asegurado"
    type: number
    sql: ${TABLE}.nro_doc_tributario ;;
  }
  dimension: nro_documento {
    label: "Nro Documento Asegurado"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Asegurado"
    type: number
    sql: ${TABLE}.nro_documento ;;
  }
  dimension: tipo_persona {
    label: "Tipo Persona Asegurado"
    view_label: "Datos CLIENTE"
    group_label: " Tipo Cliente - Asegurado"
  }
}




# CLIENTES TARJETA PERTENECIENTE A MODELO ESTRELLA FCT_SITUACIONES_CAIDA_CUOTAS_TC
view: lkp_clientes_tarjeta {
  extends: [lkp_clientes_completa]
  label: "Clientes Tarjeta"

  dimension: cliente_key {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }
  dimension: codigo_cliente {
    label: "Código Cliente Tarjeta"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Tarjeta"
    type: number
    sql: CASE WHEN ${restringido} = "S"
         THEN 0
         ELSE ${TABLE}.codigo_cliente
         END ;;
  }

  dimension: codigo_cliente_sr {
    label: "Código Cliente SR Tarjeta"
    view_label: "Datos CLIENTE"
    group_label: "Otros"
    type: number
    sql: ${TABLE}.codigo_cliente ;;
  }
  dimension_group: fecha_ingreso {
    label: "Fecha Ingreso Tarjeta"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Tarjeta"
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
    label: "Fecha Nacimiento Tarjeta"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Tarjeta"
    type: time
    timeframes: [
      date,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_nacimiento ;;
  }
  dimension: marca_pep {
    label: "Marca Pep Tarjeta"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Tarjeta"
    type: string
    sql: ${TABLE}.marca_pep ;;
  }

  dimension: nombre {
    label: "Nombre Tarjeta"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Tarjeta"
    type: string
    sql: CASE WHEN ${restringido} = "S"
         THEN "Dato Restringido"
         ELSE ${TABLE}.nombre
         END;;
  }
  dimension: nro_doc_tributario {
    label: "Nro Doc Tributario Tarjeta"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Tarjeta"
    type: number
    sql: ${TABLE}.nro_doc_tributario ;;
  }
  dimension: nro_documento {
    label: "Nro Documento Tarjeta"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Tarjeta"
    type: number
    sql: ${TABLE}.nro_documento ;;
  }
  dimension: tipo_persona {
    label: "Tipo Persona Tarjeta"
    view_label: "Datos CLIENTE"
    group_label: " Tipo Cliente - Tarjeta"
    type: string
    sql: ${TABLE}.tipo_persona ;;
  }
}



# CLIENTES PF PERTENECIENTE A MODELO ESTRELLA FCT_CERTIFICADOS_EN_GARANTIA

view: lkp_clientes_pf {
  extends: [lkp_clientes_completa]
  label: "Clientes PF"

  dimension: cliente_key {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }
  dimension: codigo_cliente {
    label: "Código Cliente PF"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - PF"
    type: number
    sql: CASE WHEN ${restringido} = "S"
         THEN 0
         ELSE ${TABLE}.codigo_cliente
         END ;;
  }

  dimension: codigo_cliente_sr {
    label: "Código Cliente SR PF"
    view_label: "Datos CLIENTE"
    group_label: "Otros"
    type: number
    sql: ${TABLE}.codigo_cliente ;;
  }
  dimension_group: fecha_ingreso {
    label: "Fecha Ingreso PF"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - PF"
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
    label: "Fecha Nacimiento PF"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - PF"
    type: time
    timeframes: [
      date,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_nacimiento ;;
  }
  dimension: marca_pep {
    label: "Marca Pep PF"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - PF"
    type: string
    sql: ${TABLE}.marca_pep ;;
  }

  dimension: nombre {
    label: "Nombre PF"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - PF"
    type: string
    sql: CASE WHEN ${restringido} = "S"
         THEN "Dato Restringido"
         ELSE ${TABLE}.nombre
         END;;
  }
  dimension: nro_doc_tributario {
    label: "Nro Doc Tributario PF"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - PF"
    type: number
    sql: ${TABLE}.nro_doc_tributario ;;
  }
  dimension: nro_documento {
    label: "Nro Documento PF"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - PF"
    type: number
    sql: ${TABLE}.nro_documento ;;
  }
  dimension: tipo_persona {
    label: "Tipo Persona PF"
    view_label: "Datos CLIENTE"
    group_label: " Tipo Cliente - PF"
    type: string
    sql: ${TABLE}.tipo_persona ;;
  }
}



# CLIENTES PRESTAMO PERTENECIENTE A MODELO ESTRELLA FCT_CERTIFICADOS_EN_GARANTIA

view: lkp_clientes_prestamo {
  extends: [lkp_clientes_completa]
  label: "Clientes Préstamo"

  dimension: cliente_key {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }
  dimension: codigo_cliente {
    label: "Código Cliente Préstamo"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Préstamo"
    type: number
    sql: CASE WHEN ${restringido} = "S"
         THEN 0
         ELSE ${TABLE}.codigo_cliente
         END ;;
  }

  dimension: codigo_cliente_sr {
    label: "Código Cliente SR Préstamo"
    view_label: "Datos CLIENTE"
    group_label: "Otros"
    type: number
    sql: ${TABLE}.codigo_cliente ;;
  }
  dimension_group: fecha_ingreso {
    label: "Fecha Ingreso Préstamo"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Préstamo"
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
    label: "Fecha Nacimiento Préstamo"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Préstamo"
    type: time
    timeframes: [
      date,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_nacimiento ;;
  }
  dimension: marca_pep {
    label: "Marca Pep Préstamo"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Préstamo"
    type: string
    sql: ${TABLE}.marca_pep ;;
  }

  dimension: nombre {
    label: "Nombre Préstamo"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Préstamo"
    type: string
    sql: CASE WHEN ${restringido} = "S"
         THEN "Dato Restringido"
         ELSE ${TABLE}.nombre
         END;;
  }
  dimension: nro_doc_tributario {
    label: "Nro Doc Tributario Préstamo"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Préstamo"
    type: number
    sql: ${TABLE}.nro_doc_tributario ;;
  }
  dimension: nro_documento {
    label: "Nro Documento Préstamo"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Préstamo"
    type: number
    sql: ${TABLE}.nro_documento ;;
  }
  dimension: tipo_persona {
    label: "Tipo Persona Préstamo"
    view_label: "Datos CLIENTE"
    group_label: " Tipo Cliente - Préstamo"
    type: string
    sql: ${TABLE}.tipo_persona ;;
  }
}



# CLIENTES FIRMANTES PERTENECIENTE A MODELO ESTRELLA FCT_SITUACION_DIARIA_PRESTAMOS

view: lkp_clientes_firmantes {
  extends: [lkp_clientes_completa]
  label: "Clientes Firmantes"

  dimension: cliente_key {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }
  dimension: codigo_cliente {
    label: "Código Cliente Firmante"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Firmante"
    type: number
    sql: CASE WHEN ${restringido} = "S"
         THEN 0
         ELSE ${TABLE}.codigo_cliente
         END ;;
  }

  dimension: codigo_cliente_sr {
    label: "Código Cliente SR Firmante"
    view_label: "Datos CLIENTE"
    group_label: "Otros"
    type: number
    sql: ${TABLE}.codigo_cliente ;;
  }
  dimension_group: fecha_ingreso {
    label: "Fecha Ingreso Firmante"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Firmante"
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
    label: "Fecha Nacimiento Firmante"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Firmante"
    type: time
    timeframes: [
      date,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_nacimiento ;;
  }
  dimension: marca_pep {
    label: "Marca Pep Firmante"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Firmante"
    type: string
    sql: ${TABLE}.marca_pep ;;
  }

  dimension: nombre {
    label: "Nombre Firmante"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Firmante"
    type: string
    sql: CASE WHEN ${restringido} = "S"
         THEN "Dato Restringido"
         ELSE ${TABLE}.nombre
         END;;
  }
  dimension: nro_doc_tributario {
    label: "Nro Doc Tributario Firmante"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Firmante"
    type: number
    sql: ${TABLE}.nro_doc_tributario ;;
  }
  dimension: nro_documento {
    label: "Nro Documento Firmante"
    view_label: "Datos CLIENTE"
    group_label: " Identificación Cliente - Firmante"
    type: number
    sql: ${TABLE}.nro_documento ;;
  }
  dimension: tipo_persona {
    label: "Tipo Persona Firmante"
    view_label: "Datos CLIENTE"
    group_label: " Tipo Cliente - Firmante"
    type: string
    sql: ${TABLE}.tipo_persona ;;
  }
}
