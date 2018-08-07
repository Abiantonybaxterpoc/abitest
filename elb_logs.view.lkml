view: elb_logs {
  sql_table_name: sampledb.elb_logs ;;
  suggestions: no

  dimension: backend_ip {
    type: string
    sql: ${TABLE}.backend_ip ;;
  }

  dimension: backend_port {
    type: number
    sql: ${TABLE}.backend_port ;;
  }

  dimension: backend_processing_time {
    type: number
    sql: ${TABLE}.backend_processing_time ;;
  }

  dimension: backend_response_code {
    type: string
    sql: ${TABLE}.backend_response_code ;;
  }

  dimension: client_response_time {
    type: number
    sql: ${TABLE}.client_response_time ;;
  }

  dimension: elb_name {
    type: string
    sql: ${TABLE}.elb_name ;;
  }

  dimension: elb_response_code {
    type: string
    sql: ${TABLE}.elb_response_code ;;
  }

  dimension: protocol {
    type: string
    sql: ${TABLE}.protocol ;;
  }

  dimension: received_bytes {
    type: number
    sql: ${TABLE}.received_bytes ;;
  }

  dimension: request_ip {
    type: string
    sql: ${TABLE}.request_ip ;;
  }

  dimension: request_port {
    type: number
    sql: ${TABLE}.request_port ;;
  }

  dimension: request_processing_time {
    type: number
    sql: ${TABLE}.request_processing_time ;;
  }

  dimension: request_timestamp {
    type: string
    sql: ${TABLE}.request_timestamp ;;
  }

  dimension: request_verb {
    type: string
    sql: ${TABLE}.request_verb ;;
  }

  dimension: sent_bytes {
    type: number
    sql: ${TABLE}.sent_bytes ;;
  }

  dimension: ssl_cipher {
    type: string
    sql: ${TABLE}.ssl_cipher ;;
  }

  dimension: ssl_protocol {
    type: string
    sql: ${TABLE}.ssl_protocol ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: user_agent {
    type: string
    sql: ${TABLE}.user_agent ;;
  }

  measure: count {
    type: count
    drill_fields: [elb_name]
  }
}
