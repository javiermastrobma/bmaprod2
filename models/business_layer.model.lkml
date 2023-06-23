connection: "gcp-cdw-prod"

include: "/explores_business_layer/*.explore.lkml"

datagroup: fct_saldos_datagroup {
  sql_trigger: SELECT MAX(fecha_key) FROM fct_saldos ;;
  max_cache_age: "24 hour"
}
