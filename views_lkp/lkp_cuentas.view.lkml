view: lkp_cuentas {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_cuentas`
    ;;

dimension: abono_key {
  hidden: yes
  type: number
  sql: ${TABLE}.abono_key ;;
}

dimension: actividad_key {
  hidden: yes
  type: number
  sql: ${TABLE}.actividad_key ;;
}

dimension: acuerdo_key {
  hidden: yes
  type: number
  sql: ${TABLE}.acuerdo_key ;;
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

dimension: categoria_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.categoria_cuenta_key ;;
}

dimension: causa_cierre_key {
  hidden: yes
  type: number
  sql: ${TABLE}.causa_cierre_key ;;
}

dimension: cbu {
  view_label: "Datos CUENTA"
  type: string
  sql: CASE WHEN ${restringido} = "S"
         THEN 0
         ELSE ${TABLE}.cbu
         END ;;
}

dimension: certificado {
  view_label: "Datos CUENTA"
  type: string
  sql: ${TABLE}.certificado ;;
}

dimension: cliente_key {
  hidden: yes
  type: number
  sql: ${TABLE}.cliente_key ;;
}

dimension: codigo_cliente {
  hidden: yes
  type: number
  sql: ${TABLE}.codigo_cliente ;;
}

dimension: codigo_cuenta {
  view_label: "Datos CUENTA"
  type: string
  sql: CASE WHEN ${restringido} = "S"
         THEN "0"
         ELSE ${TABLE}.codigo_cuenta
         END ;;
}

dimension: compania_seguro_vida_key {
  hidden: yes
  type: number
  sql: ${TABLE}.compania_seguro_vida_key ;;
}

dimension: cuenta_key {
  hidden: yes
  primary_key: yes
  type: number
  sql: ${TABLE}.cuenta_key ;;
}

dimension: especie_key {
  hidden: yes
  type: number
  sql: ${TABLE}.especie_key ;;
}

dimension_group: fecha_alta {
  view_label: "Datos CUENTA"
  type: time
  timeframes: [
    raw,
    time,
    date,
    week,
    month,
    quarter,
    year
  ]
  datatype: datetime
  sql: ${TABLE}.fecha_alta ;;
}

dimension_group: fecha_baja {
  view_label: "Datos CUENTA"
  type: time
  timeframes: [
    raw,
    time,
    date,
    week,
    month,
    quarter,
    year
  ]
  datatype: datetime
  sql: ${TABLE}.fecha_baja ;;
}

dimension_group: fecha_ultimo_movimiento {
  view_label: "Datos CUENTA"
  type: time
  timeframes: [
    raw,
    time,
    date,
    week,
    month,
    quarter,
    year
  ]
  datatype: datetime
  sql: ${TABLE}.fecha_ultimo_movimiento ;;
}

dimension_group: fecha_vencimiento {
  view_label: "Datos CUENTA"
  type: time
  timeframes: [
    raw,
    time,
    date,
    week,
    month,
    quarter,
    year
  ]
  datatype: datetime
  sql: ${TABLE}.fecha_vencimiento ;;
}

dimension: inactividad_key {
  hidden: yes
  type: number
  sql: ${TABLE}.inactividad_key ;;
}

dimension: oficial_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.oficial_cuenta_key ;;
}

dimension: plazo {
  hidden: yes
  type: number
  sql: ${TABLE}.plazo ;;
}

dimension: producto_key {
  hidden: yes
  type: number
  sql: ${TABLE}.producto_key ;;
}

dimension: residencia_key {
  hidden: yes
  type: number
  sql: ${TABLE}.residencia_key ;;
}

dimension: restringido {
  hidden: yes
  type: string
  sql: ${TABLE}.restringido ;;
}

dimension: sector_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sector_key ;;
}

dimension: sucursal_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.sucursal_cuenta_key ;;
}

dimension: tasa {
  hidden: yes
  type: number
  sql: ${TABLE}.tasa ;;
}

dimension: tipo_cartera_key {
  hidden: yes
  type: number
  sql: ${TABLE}.tipo_cartera_key ;;
}

dimension: tipo_cuenta_key {
  hidden: yes
  type: number
  sql: ${TABLE}.tipo_cuenta_key ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}

measure: count_cod_capita {
  hidden: yes
  type: count_distinct
  sql: ${codigo_cliente} ;;
}
}


#CUENTAS ORIGEN PARA MODELO ESTRELLA FCT_TRANSFERENCIA
view: lkp_cuentas_origen {
  extends: [lkp_cuentas]

  dimension: cuenta_key {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }
  dimension: cbu {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Origen"
    type: string
    sql: CASE WHEN ${restringido} = "S"
         THEN 0
         ELSE ${TABLE}.cbu
         END ;;
  }
  dimension: certificado {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Origen"
    type: string
    sql: ${TABLE}.certificado ;;
  }
  dimension: codigo_cuenta {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Origen"
    type: string
    sql: CASE WHEN ${restringido} = "S"
         THEN "0"
         ELSE ${TABLE}.codigo_cuenta
         END ;;
  }
  dimension_group: fecha_alta {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Origen"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_alta ;;
  }

  dimension_group: fecha_baja {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Origen"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_baja ;;
  }
  dimension_group: fecha_ultimo_movimiento {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Origen"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_ultimo_movimiento ;;
  }
  dimension_group: fecha_vencimiento {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Origen"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_vencimiento ;;
  }
}


#CUENTAS RECEPTOR PARA MODELO ESTRELLA FCT_TRANSFERENCIA
view: lkp_cuentas_receptor {
  extends: [lkp_cuentas]

  dimension: cuenta_key {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }
  dimension: cbu {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Receptor"
    type: string
    sql: CASE WHEN ${restringido} = "S"
         THEN 0
         ELSE ${TABLE}.cbu
         END ;;
  }
  dimension: certificado {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Receptor"
    type: string
    sql: ${TABLE}.certificado ;;
  }
  dimension: codigo_cuenta {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Receptor"
    type: string
    sql: CASE WHEN ${restringido} = "S"
         THEN "0"
         ELSE ${TABLE}.codigo_cuenta
         END ;;
  }
  dimension_group: fecha_alta {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Receptor"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_alta ;;
  }

  dimension_group: fecha_baja {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Receptor"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_baja ;;
  }
  dimension_group: fecha_ultimo_movimiento {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Receptor"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_ultimo_movimiento ;;
  }
  dimension_group: fecha_vencimiento {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Receptor"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_vencimiento ;;
  }
}




#CUENTAS DEBITO PARA MODELO ESTRELLA FCT_ORDENES_PAGO_PROVEEDORES, FCT_SITUACIONES_CONTRATOS_CAJAS_SEGURIDAD, FCT_COMPRAS_COMERCIOS_TD
view: lkp_cuentas_debito {
  extends: [lkp_cuentas]

  dimension: cuenta_key {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }
  dimension: cbu {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Débito"
    type: string
    sql: CASE WHEN ${restringido} = "S"
         THEN 0
         ELSE ${TABLE}.cbu
         END ;;
  }
  dimension: certificado {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Débito"
    type: string
    sql: ${TABLE}.certificado ;;
  }
  dimension: codigo_cuenta {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Débito"
    type: string
    sql: CASE WHEN ${restringido} = "S"
         THEN "0"
         ELSE ${TABLE}.codigo_cuenta
         END ;;
  }
  dimension_group: fecha_alta {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Débito"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_alta ;;
  }

  dimension_group: fecha_baja {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Débito"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_baja ;;
  }
  dimension_group: fecha_ultimo_movimiento {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Débito"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_ultimo_movimiento ;;
  }
  dimension_group: fecha_vencimiento {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Débito"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_vencimiento ;;
  }
}




#CUENTAS ACREDITACIÓN PARA MODELO ESTRELLA FCT_ORDENES_PAGO_PROVEEDORES
view: lkp_cuentas_acreditacion {
  extends: [lkp_cuentas]

  dimension: cuenta_key {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }
  dimension: cbu {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Acreditación"
    type: string
    sql: CASE WHEN ${restringido} = "S"
         THEN 0
         ELSE ${TABLE}.cbu
         END ;;
  }
  dimension: certificado {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Acreditación"
    type: string
    sql: ${TABLE}.certificado ;;
  }
  dimension: codigo_cuenta {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Acreditación"
    type: string
    sql: CASE WHEN ${restringido} = "S"
         THEN "0"
         ELSE ${TABLE}.codigo_cuenta
         END ;;
  }
  dimension_group: fecha_alta {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Acreditación"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_alta ;;
  }

  dimension_group: fecha_baja {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Acreditación"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_baja ;;
  }
  dimension_group: fecha_ultimo_movimiento {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Acreditación"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_ultimo_movimiento ;;
  }
  dimension_group: fecha_vencimiento {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Acreditación"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_vencimiento ;;
  }
}

# CUENTAS CREDITO PARA MODELO ESTRELLA FCT_TRANSACCIONES_DATANET

view: lkp_cuentas_credito {
  extends: [lkp_cuentas]

  dimension: cuenta_key {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }
  dimension: cbu {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Crédito"
    type: string
    sql: CASE WHEN ${restringido} = "S"
         THEN 0
         ELSE ${TABLE}.cbu
         END ;;
  }
  dimension: certificado {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Crédito"
    type: string
    sql: ${TABLE}.certificado ;;
  }
  dimension: codigo_cuenta {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Crédito"
    type: string
    sql: CASE WHEN ${restringido} = "S"
         THEN "0"
         ELSE ${TABLE}.codigo_cuenta
         END ;;
  }
  dimension_group: fecha_alta {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Crédito"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_alta ;;
  }

  dimension_group: fecha_baja {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Crédito"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_baja ;;
  }
  dimension_group: fecha_ultimo_movimiento {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Crédito"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_ultimo_movimiento ;;
  }
  dimension_group: fecha_vencimiento {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Crédito"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_vencimiento ;;
  }
}



# CUENTAS PRESTAMO PARA MODELO ESTRELLA FCT_CERTIFICADOS_EN_GARANTIA

view: lkp_cuentas_prestamo {
  extends: [lkp_cuentas]

  dimension: cuenta_key {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }
  dimension: cbu {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Préstamo"
    type: string
    sql: CASE WHEN ${restringido} = "S"
         THEN 0
         ELSE ${TABLE}.cbu
         END ;;
  }
  dimension: certificado {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Préstamo"
    type: string
    sql: ${TABLE}.certificado ;;
  }
  dimension: codigo_cuenta {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Préstamo"
    type: string
    sql: CASE WHEN ${restringido} = "S"
         THEN "0"
         ELSE ${TABLE}.codigo_cuenta
         END ;;
  }
  dimension_group: fecha_alta {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Préstamo"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_alta ;;
  }

  dimension_group: fecha_baja {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Préstamo"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_baja ;;
  }
  dimension_group: fecha_ultimo_movimiento {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Préstamo"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_ultimo_movimiento ;;
  }
  dimension_group: fecha_vencimiento {
    view_label: "Datos CUENTA"
    group_label: "Cuentas Préstamo"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.fecha_vencimiento ;;
  }
}
