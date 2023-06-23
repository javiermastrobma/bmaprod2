view: lkp_sectores_reclamos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_sectores_reclamos`
    ;;
  view_label: "Datos RECLAMO"

  dimension: agrupacion_sector {
    group_label: "Sectores Reclamos"
    type: string
    sql: ${TABLE}.agrupacion_sector ;;
  }

  dimension: codigo_sector_reclamo {
    group_label: "Sectores Reclamos"
    type: string
    sql: ${TABLE}.codigo_sector_reclamo ;;
  }

  dimension: gerencia {
    group_label: "Sectores Reclamos"
    type: string
    sql: ${TABLE}.gerencia ;;
  }

  dimension: nombre_sector_reclamo {
    group_label: "Sectores Reclamos"
    type: string
    sql: ${TABLE}.nombre_sector_reclamo ;;
  }

  dimension: region {
    group_label: "Sectores Reclamos"
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: sector_reclamo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sector_reclamo_key ;;
  }

  dimension: tipo_sector_reclamo {
    group_label: "Sectores Reclamos"
    type: string
    sql: ${TABLE}.tipo_sector_reclamo ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}


#LKP_SECTORES_RECLAMOS_INGRESADO PERTENECIENTE A ESTRELLA FCT_SITUACION_DIARIA_RECLAMOS

view: lkp_sectores_reclamos_ingresados {
  view_label: "Datos RECLAMO"
  extends: [lkp_sectores_reclamos]

  dimension: sector_reclamo_ingresado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sector_reclamo_key ;;
  }

  dimension: agrupacion_sector {
    group_label: "Ingreso Reclamo"
    type: string
    sql: ${TABLE}.agrupacion_sector ;;
  }

  dimension: codigo_sector_reclamo {
    group_label: "Ingreso Reclamo"
    type: string
    sql: ${TABLE}.codigo_sector_reclamo ;;
  }

  dimension: gerencia {
    group_label: "Ingreso Reclamo"
    type: string
    sql: ${TABLE}.gerencia ;;
  }

  dimension: nombre_sector_reclamo {
    group_label: "Ingreso Reclamo"
    type: string
    sql: ${TABLE}.nombre_sector_reclamo ;;
  }

  dimension: region {
    group_label: "Ingreso Reclamo"
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: tipo_sector_reclamo {
    group_label: "Ingreso Reclamo"
    type: string
    sql: ${TABLE}.tipo_sector_reclamo ;;
  }
}


#LKP_SECTORES_RECLAMOS_INGRESADO PERTENECIENTE A ESTRELLA FCT_SITUACION_DIARIA_RECLAMOS

view: lkp_sectores_reclamos_asignados {
  view_label: "Datos RECLAMO"
  extends: [lkp_sectores_reclamos]

  dimension: sector_reclamo_asignado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sector_reclamo_key ;;
  }

  dimension: agrupacion_sector {
    group_label: "Asignación Reclamo"
    type: string
    sql: ${TABLE}.agrupacion_sector ;;
  }

  dimension: codigo_sector_reclamo {
    group_label: "Asignación Reclamo"
    type: string
    sql: ${TABLE}.codigo_sector_reclamo ;;
  }

  dimension: gerencia {
    group_label: "Asignación Reclamo"
    type: string
    sql: ${TABLE}.gerencia ;;
  }

  dimension: nombre_sector_reclamo {
    group_label: "Asignación Reclamo"
    type: string
    sql: ${TABLE}.nombre_sector_reclamo ;;
  }

  dimension: region {
    group_label: "Asignación Reclamo"
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: tipo_sector_reclamo {
    group_label: "Asignación Reclamo"
    type: string
    sql: ${TABLE}.tipo_sector_reclamo ;;
  }
}


#LKP_SECTORES_RECLAMOS_INGRESADO PERTENECIENTE A ESTRELLA FCT_SITUACION_DIARIA_RECLAMOS

view: lkp_sectores_reclamos_derivados {
  view_label: "Datos RECLAMO"
  extends: [lkp_sectores_reclamos]

  dimension: sector_reclamo_derivado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sector_reclamo_key ;;
  }

  dimension: agrupacion_sector {
    group_label: "Derivación Reclamo"
    type: string
    sql: ${TABLE}.agrupacion_sector ;;
  }

  dimension: codigo_sector_reclamo {
    group_label: "Derivación Reclamo"
    type: string
    sql: ${TABLE}.codigo_sector_reclamo ;;
  }

  dimension: gerencia {
    group_label: "Derivación Reclamo"
    type: string
    sql: ${TABLE}.gerencia ;;
  }

  dimension: nombre_sector_reclamo {
    group_label: "Derivación Reclamo"
    type: string
    sql: ${TABLE}.nombre_sector_reclamo ;;
  }

  dimension: region {
    group_label: "Derivación Reclamo"
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: tipo_sector_reclamo {
    group_label: "Derivación Reclamo"
    type: string
    sql: ${TABLE}.tipo_sector_reclamo ;;
  }
}


#LKP_SECTORES_RECLAMOS_INGRESADO PERTENECIENTE A ESTRELLA FCT_SITUACION_DIARIA_RECLAMOS

view: lkp_sectores_reclamos_cierre {
  view_label: "Datos RECLAMO"
  extends: [lkp_sectores_reclamos]

  dimension: sector_reclamo_cierre_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sector_reclamo_key ;;
  }

  dimension: agrupacion_sector {
    group_label: "Cierre Reclamo"
    type: string
    sql: ${TABLE}.agrupacion_sector ;;
  }

  dimension: codigo_sector_reclamo {
    group_label: "Cierre Reclamo"
    type: string
    sql: ${TABLE}.codigo_sector_reclamo ;;
  }

  dimension: gerencia {
    group_label: "Cierre Reclamo"
    type: string
    sql: ${TABLE}.gerencia ;;
  }

  dimension: nombre_sector_reclamo {
    group_label: "Cierre Reclamo"
    type: string
    sql: ${TABLE}.nombre_sector_reclamo ;;
  }

  dimension: region {
    group_label: "Cierre Reclamo"
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: tipo_sector_reclamo {
    group_label: "Cierre Reclamo"
    type: string
    sql: ${TABLE}.tipo_sector_reclamo ;;
  }
}
