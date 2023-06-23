connection: "cdw_embebed_dashboard"

include: "/explores_strategic_layer/valoracion/*.explore.lkml"

datagroup: valoracion_datagroup {
  sql_trigger: SELECT MAX(fecha_key) FROM fct_situacion_acumulada_valoracion;;
  max_cache_age: "24 hour"
}
