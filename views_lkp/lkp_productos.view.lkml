view: lkp_productos {
  sql_table_name: `bm-gcp-p1-dw.cdw_raw.lkp_productos`
    ;;

dimension: cartera {
  view_label: "Datos PRODUCTO"
  type: string
  sql: ${TABLE}.cartera ;;
}

dimension: familia_productos {
  view_label: "Datos PRODUCTO"
  type: string
  sql: ${TABLE}.familia_productos ;;
}

dimension: paquete {
  hidden: yes
  view_label: "Datos PRODUCTO"
  type: string
  sql: ${TABLE}.paquete ;;
}

dimension: precancelable {
  view_label: "Datos PRODUCTO"
  type: string
  sql: ${TABLE}.precancelable ;;
}

dimension: producto {
  view_label: "Datos PRODUCTO"
  type: string
  sql: ${TABLE}.producto ;;
}

dimension: producto_key {
  hidden: yes
  type: number
  sql: ${TABLE}.producto_key ;;
}

dimension: producto_source {
  view_label: "Datos PRODUCTO"
  type: string
  sql: ${TABLE}.producto_source ;;
}

dimension: subproducto {
  view_label: "Datos PRODUCTO"
  type: string
  sql: ${TABLE}.subproducto ;;
}

dimension: tipo_producto {
  view_label: "Datos PRODUCTO"
  type: string
  sql: ${TABLE}.tipo_producto ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: []
}
}

#VIEW CREADA PARA EXPLORE FCT_PAQUETES (BUSINESS LAYER)
view: lkp_productos_paquete {
  extends: [lkp_productos]
  fields_hidden_by_default: yes
dimension: subproducto {
  label: "Nombre Paquete"
  hidden: no
  view_label: "Datos PRODUCTO"
  type: string
  sql: ${TABLE}.subproducto ;;
  }
}
