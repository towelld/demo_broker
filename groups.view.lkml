view: groups {
  sql_table_name: DemoBroker.Groups ;;

  dimension: active_status {
    type: number
    sql: ${TABLE}.ActiveStatus ;;
  }

  dimension: allow_purge {
    type: string
    sql: ${TABLE}.AllowPurge ;;
  }

  dimension: assigned_to {
    type: string
    sql: ${TABLE}.AssignedTo ;;
  }

  dimension: confidence {
    type: string
    sql: ${TABLE}.Confidence ;;
  }

  dimension: date_time_stamp {
    type: string
    sql: ${TABLE}.DateTimeStamp ;;
  }

  dimension: do_not_purge_before {
    type: string
    sql: ${TABLE}.DoNotPurgeBefore ;;
  }

  dimension: effective_date {
    type: string
    sql: ${TABLE}.Effective_Date ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.GroupName ;;
  }

  dimension: insurer_policy_no {
    type: string
    sql: ${TABLE}.Insurer_Policy_No ;;
  }

  dimension: match_name {
    type: string
    sql: ${TABLE}.MatchName ;;
  }

  dimension: match_status {
    type: number
    sql: ${TABLE}.MatchStatus ;;
  }

  dimension: net_amount {
    type: number
    sql: ${TABLE}.NetAmount ;;
  }

  dimension: net_amount_currency {
    type: string
    sql: ${TABLE}.NetAmountCurrency ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  dimension: rag {
    type: number
    sql: ${TABLE}.RAG ;;
  }

  dimension: time_stamp_zone_id {
    type: number
    sql: ${TABLE}.TimeStampZoneId ;;
  }

  measure: count {
    type: count
    drill_fields: [group_name, match_name]
  }
}
