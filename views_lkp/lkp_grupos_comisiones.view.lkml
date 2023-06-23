view: lkp_grupos_comisiones {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_grupos_comisiones`
    ;;

dimension: codigo_grupo {
  type: number
  sql: ${TABLE}.codigo_grupo ;;
}

dimension: codigo_grupo_directorio {
  type: number
  sql: ${TABLE}.codigo_grupo_directorio ;;
}

dimension: cuenta_contable {
  type: string
  sql: ${TABLE}.cuenta_contable ;;
}

dimension: flg_origen {
  type: string
  sql: ${TABLE}.flg_origen ;;
}

dimension: grupo {
  type: string
  sql: ${TABLE}.grupo ;;
}

dimension: grupo_directorio {
  type: string
  sql: ${TABLE}.grupo_directorio ;;
}

dimension: nombre_cuenta {
  type: string
  sql: ${TABLE}.nombre_cuenta ;;
}

dimension: plan_cuentas_key {
  hidden: yes
  type: number
  sql: ${TABLE}.plan_cuentas_key ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
