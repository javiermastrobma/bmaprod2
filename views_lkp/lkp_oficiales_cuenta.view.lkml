view: lkp_oficiales_cuenta {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_oficiales_cuenta`
    ;;

dimension: banco_key {
  hidden: yes
  type: number
  sql: ${TABLE}.banco_key ;;
}

dimension: identificacion_usuario {
  view_label: "Datos CLIENTE"
  group_label: "Oficial Cuenta"
  type: string
  sql: ${TABLE}.identificacion_usuario ;;
}

dimension: oficial_cuenta {
  view_label: "Datos CLIENTE"
  group_label: "Oficial Cuenta"
  type: string
  sql: ${TABLE}.oficial_cuenta ;;
}

dimension: oficial_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.oficial_cuenta_key ;;
}

  dimension: oficial_cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_cuenta_key ;;
  }

dimension: oficial_source {
  view_label: "Datos CLIENTE"
  group_label: "Oficial Cuenta"
  type: string
  sql: ${TABLE}.oficial_source ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
  }
}



#LKP_OFICIALES_INGRESO CORRESPONDIENTE A ESTRELLA FCT SEGUIMIENTO TRAMITES
view: lkp_oficiales_ingreso {
  extends: [lkp_oficiales_cuenta]

  dimension: identificacion_usuario {
    view_label: "Datos CLIENTE"
    group_label: "Oficial Ingreso"
    type: string
    sql: ${TABLE}.identificacion_usuario ;;
  }

  dimension: oficial_cuenta {
    view_label: "Datos CLIENTE"
    group_label: "Oficial Ingreso"
    type: string
    sql: ${TABLE}.oficial_cuenta ;;
  }

  dimension: oficial_source {
    view_label: "Datos CLIENTE"
    group_label: "Oficial Ingreso"
    type: string
    sql: ${TABLE}.oficial_source ;;
  }
}



#LKP_OFICIALES_VENTA CORRESPONDIENTE A ESTRELLA FCT SEGUIMIENTO TRAMITES
view: lkp_oficiales_venta {
  extends: [lkp_oficiales_cuenta]

  dimension: identificacion_usuario {
    view_label: "Datos CLIENTE"
    group_label: "Oficial Venta"
    type: string
    sql: ${TABLE}.identificacion_usuario ;;
  }

  dimension: oficial_cuenta {
    view_label: "Datos CLIENTE"
    group_label: "Oficial Venta"
    type: string
    sql: ${TABLE}.oficial_cuenta ;;
  }

  dimension: oficial_source {
    view_label: "Datos CLIENTE"
    group_label: "Oficial Venta"
    type: string
    sql: ${TABLE}.oficial_source ;;
  }
}



#LKP_OFICIALES_APROBACION_NIVEL_1 CORRESPONDIENTE A ESTRELLA FCT SEGUIMIENTO TRAMITES
view: lkp_oficiales_aprobacion_nivel_1 {
  extends: [lkp_oficiales_cuenta]

  dimension: identificacion_usuario {
    view_label: "Datos CLIENTE"
    group_label: "Oficial Aprobación Nivel 1"
    type: string
    sql: ${TABLE}.identificacion_usuario ;;
  }

  dimension: oficial_cuenta {
    view_label: "Datos CLIENTE"
    group_label: "Oficial Aprobación Nivel 1"
    type: string
    sql: ${TABLE}.oficial_cuenta ;;
  }

  dimension: oficial_source {
    view_label: "Datos CLIENTE"
    group_label: "Oficial Aprobación Nivel 1"
    type: string
    sql: ${TABLE}.oficial_source ;;
  }
}



#LKP_OFICIALES_APROBACION_NIVEL_2 CORRESPONDIENTE A ESTRELLA FCT SEGUIMIENTO TRAMITES
view: lkp_oficiales_aprobacion_nivel_2 {
  extends: [lkp_oficiales_cuenta]

  dimension: identificacion_usuario {
    view_label: "Datos CLIENTE"
    group_label: "Oficial Aprobación Nivel 2"
    type: string
    sql: ${TABLE}.identificacion_usuario ;;
  }

  dimension: oficial_cuenta {
    view_label: "Datos CLIENTE"
    group_label: "Oficial Aprobación Nivel 2"
    type: string
    sql: ${TABLE}.oficial_cuenta ;;
  }

  dimension: oficial_source {
    view_label: "Datos CLIENTE"
    group_label: "Oficial Aprobación Nivel 2"
    type: string
    sql: ${TABLE}.oficial_source ;;
  }
}



#LKP_OFICIALES_APROBACION_NIVEL_3 CORRESPONDIENTE A ESTRELLA FCT SEGUIMIENTO TRAMITES
view: lkp_oficiales_aprobacion_nivel_3 {
  extends: [lkp_oficiales_cuenta]

  dimension: identificacion_usuario {
    view_label: "Datos CLIENTE"
    group_label: "Oficial Aprobación Nivel 3"
    type: string
    sql: ${TABLE}.identificacion_usuario ;;
  }

  dimension: oficial_cuenta {
    view_label: "Datos CLIENTE"
    group_label: "Oficial Aprobación Nivel 3"
    type: string
    sql: ${TABLE}.oficial_cuenta ;;
  }

  dimension: oficial_source {
    view_label: "Datos CLIENTE"
    group_label: "Oficial Aprobación Nivel 3"
    type: string
    sql: ${TABLE}.oficial_source ;;
  }
}
