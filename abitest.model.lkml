connection: "lookerabiaws"

# include all the views
include: "*.view"

datagroup: abitest_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: abitest_default_datagroup

explore: elb_logs {}
