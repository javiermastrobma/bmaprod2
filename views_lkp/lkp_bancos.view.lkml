view: lkp_bancos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_bancos`
    ;;

dimension: agrupamiento_institucional {
  view_label: "Otras Dimensiones"
  group_label: "Banco"
  type: string
  sql: ${TABLE}.agrupamiento_institucional ;;
  }

dimension: agrupamiento_institucional_source {
  view_label: "Otras Dimensiones"
  group_label: "Banco"
  type: string
  sql: ${TABLE}.agrupamiento_institucional_source ;;
  }

dimension: banco {
  view_label: "Otras Dimensiones"
  group_label: "Banco"
  type: string
  sql: ${TABLE}.banco ;;
  }

dimension: banco_abreviado {
  view_label: "Otras Dimensiones"
  group_label: "Banco"
  type: string
  sql: ${TABLE}.banco_abreviado ;;
  }

dimension: banco_key {
  hidden: yes
  type: number
  sql: ${TABLE}.banco_key ;;
  }

dimension: camara {
  view_label: "Otras Dimensiones"
  group_label: "Banco"
  type: string
  sql: ${TABLE}.camara ;;
  }

dimension: codigo_banco {
  view_label: "Otras Dimensiones"
  group_label: "Banco"
  type: string
  sql: ${TABLE}.codigo_banco ;;
  }

dimension: cuit {
  view_label: "Otras Dimensiones"
  group_label: "Banco"
  type: number
  sql: ${TABLE}.cuit ;;
  }

dimension: grupo_bancario {
  view_label: "Otras Dimensiones"
  group_label: "Banco"
  type: string
  sql: ${TABLE}.grupo_bancario ;;
  }

dimension: origen {
  view_label: "Otras Dimensiones"
  group_label: "Banco"
  type: string
  sql: ${TABLE}.origen ;;
  }

measure: count {
  hidden: yes
  type: count
  drill_fields: []
  }
}



#BANCOS ORIGEN PERTENECIENTE A MODELO ESTRELLA FCT_TRANSFERENCIAS
view: lkp_bancos_origen {
  extends: [lkp_bancos]
  dimension: agrupamiento_institucional {
    view_label: "Otras Dimensiones"
    group_label: "Banco Origen"
    type: string
    sql: ${TABLE}.agrupamiento_institucional ;;
  }

  dimension: agrupamiento_institucional_source {
    view_label: "Otras Dimensiones"
    group_label: "Banco Origen"
    type: string
    sql: ${TABLE}.agrupamiento_institucional_source ;;
  }

  dimension: banco {
    view_label: "Otras Dimensiones"
    group_label: "Banco Origen"
    type: string
    sql: ${TABLE}.banco ;;
  }

  dimension: banco_abreviado {
    view_label: "Otras Dimensiones"
    group_label: "Banco Origen"
    type: string
    sql: ${TABLE}.banco_abreviado ;;
  }

  dimension: camara {
    view_label: "Otras Dimensiones"
    group_label: "Banco Origen"
    type: string
    sql: ${TABLE}.camara ;;
  }

  dimension: codigo_banco {
    view_label: "Otras Dimensiones"
    group_label: "Banco Origen"
    type: string
    sql: ${TABLE}.codigo_banco ;;
  }

  dimension: cuit {
    view_label: "Otras Dimensiones"
    group_label: "Banco Origen"
    type: number
    sql: ${TABLE}.cuit ;;
  }

  dimension: grupo_bancario {
    view_label: "Otras Dimensiones"
    group_label: "Banco Origen"
    type: string
    sql: ${TABLE}.grupo_bancario ;;
  }

  dimension: origen {
    view_label: "Otras Dimensiones"
    group_label: "Banco Origen"
    type: string
    sql: ${TABLE}.origen ;;
  }
}



#BANCOS RECEPTOR PERTENECIENTE A MODELO ESTRELLA FCT_TRANSFERENCIAS
view: lkp_bancos_receptor {
  extends: [lkp_bancos]
  dimension: agrupamiento_institucional {
    view_label: "Otras Dimensiones"
    group_label: "Banco Receptor"
    type: string
    sql: ${TABLE}.agrupamiento_institucional ;;
  }

  dimension: agrupamiento_institucional_source {
    view_label: "Otras Dimensiones"
    group_label: "Banco Receptor"
    type: string
    sql: ${TABLE}.agrupamiento_institucional_source ;;
  }

  dimension: banco {
    view_label: "Otras Dimensiones"
    group_label: "Banco Receptor"
    type: string
    sql: ${TABLE}.banco ;;
  }

  dimension: banco_abreviado {
    view_label: "Otras Dimensiones"
    group_label: "Banco Receptor"
    type: string
    sql: ${TABLE}.banco_abreviado ;;
  }

  dimension: camara {
    view_label: "Otras Dimensiones"
    group_label: "Banco Receptor"
    type: string
    sql: ${TABLE}.camara ;;
  }

  dimension: codigo_banco {
    view_label: "Otras Dimensiones"
    group_label: "Banco Receptor"
    type: string
    sql: ${TABLE}.codigo_banco ;;
  }

  dimension: cuit {
    view_label: "Otras Dimensiones"
    group_label: "Banco Receptor"
    type: number
    sql: ${TABLE}.cuit ;;
  }

  dimension: grupo_bancario {
    view_label: "Otras Dimensiones"
    group_label: "Banco Receptor"
    type: string
    sql: ${TABLE}.grupo_bancario ;;
  }

  dimension: origen {
    view_label: "Otras Dimensiones"
    group_label: "Banco Receptor"
    type: string
    sql: ${TABLE}.origen ;;
  }
}



#BANCOS RECEPTOR PERTENECIENTE A MODELO ESTRELLA FCT_SITUACIONES_VALORES Y FCT_CARTERA_VALORES
view: lkp_bancos_girado {
  extends: [lkp_bancos]
  dimension: agrupamiento_institucional {
    view_label: "Otras Dimensiones"
    group_label: "Banco Girado"
    type: string
    sql: ${TABLE}.agrupamiento_institucional ;;
  }

  dimension: agrupamiento_institucional_source {
    view_label: "Otras Dimensiones"
    group_label: "Banco Girado"
    type: string
    sql: ${TABLE}.agrupamiento_institucional_source ;;
  }

  dimension: banco {
    view_label: "Otras Dimensiones"
    group_label: "Banco Girado"
    type: string
    sql: ${TABLE}.banco ;;
  }

  dimension: banco_abreviado {
    view_label: "Otras Dimensiones"
    group_label: "Banco Girado"
    type: string
    sql: ${TABLE}.banco_abreviado ;;
  }

  dimension: camara {
    view_label: "Otras Dimensiones"
    group_label: "Banco Girado"
    type: string
    sql: ${TABLE}.camara ;;
  }

  dimension: codigo_banco {
    view_label: "Otras Dimensiones"
    group_label: "Banco Girado"
    type: string
    sql: ${TABLE}.codigo_banco ;;
  }

  dimension: cuit {
    view_label: "Otras Dimensiones"
    group_label: "Banco Girado"
    type: number
    sql: ${TABLE}.cuit ;;
  }

  dimension: grupo_bancario {
    view_label: "Otras Dimensiones"
    group_label: "Banco Girado"
    type: string
    sql: ${TABLE}.grupo_bancario ;;
  }

  dimension: origen {
    view_label: "Otras Dimensiones"
    group_label: "Banco Girado"
    type: string
    sql: ${TABLE}.origen ;;
  }
}
