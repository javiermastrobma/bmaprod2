view: lkp_estudios_externos_recupero {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_estudios_externos_recupero`
    ;;

dimension: estudio_externo {
  view_label: "Otras Dimensiones"
  group_label: "Estudios Externos Recupero"
  type: string
  sql: ${TABLE}.estudio_externo ;;
}

dimension: estudio_externo_key {
  hidden: yes
  type: number
  sql: ${TABLE}.estudio_externo_key ;;
}

dimension: estudio_externo_nombre {
  view_label: "Otras Dimensiones"
  group_label: "Estudios Externos Recupero"
  type: string
  sql: ${TABLE}.estudio_externo_nombre ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}
