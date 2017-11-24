view: exceptions {
  sql_table_name: DemoBroker.Exceptions ;;

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

  dimension: closed {
    type: string
    sql: ${TABLE}.Closed ;;
  }

  dimension: closed_zone_id {
    type: number
    sql: ${TABLE}.ClosedZoneId ;;
  }

  dimension: do_not_purge_before {
    type: string
    sql: ${TABLE}.DoNotPurgeBefore ;;
  }

  dimension: effective_date {
    type: string
    sql: ${TABLE}.Effective_Date ;;
  }

  dimension: exception_reason_code {
    type: string
    sql: ${TABLE}.ExceptionReasonCode ;;
  }

  dimension: exception_resolution_code {
    type: string
    sql: ${TABLE}.ExceptionResolutionCode ;;
  }

  dimension: exception_status {
    type: number
    sql: ${TABLE}.ExceptionStatus ;;
  }

  dimension: exception_style {
    type: number
    sql: ${TABLE}.ExceptionStyle ;;
  }

  dimension: external_id {
    type: string
    sql: ${TABLE}.ExternalId ;;
  }

  dimension: impact {
    type: number
    sql: ${TABLE}.Impact ;;
  }

  dimension: impact_currency {
    type: string
    sql: ${TABLE}.ImpactCurrency ;;
  }

  dimension: insurer_policy_no {
    type: string
    sql: ${TABLE}.Insurer_Policy_No ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: net_amount {
    type: number
    sql: ${TABLE}.NetAmount ;;
  }

  dimension: net_amount_currency {
    type: string
    sql: ${TABLE}.NetAmountCurrency ;;
  }

  dimension: num_records {
    type: number
    sql: ${TABLE}.numRecords ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  dimension: raised {
    type: string
    sql: ${TABLE}.Raised ;;
  }

  dimension: raised_zone_id {
    type: number
    sql: ${TABLE}.RaisedZoneId ;;
  }

  dimension: reason_code {
    type: number
    sql: ${TABLE}.ReasonCode ;;
  }

  dimension: resolution_code {
    type: number
    sql: ${TABLE}.ResolutionCode ;;
  }

  dimension: resolved {
    type: string
    sql: ${TABLE}.Resolved ;;
  }

  dimension: resolved_zone_id {
    type: number
    sql: ${TABLE}.ResolvedZoneId ;;
  }

  dimension: the_entity {
    type: string
    sql: ${TABLE}.theEntity ;;
  }

  dimension: the_insurer {
    type: string
    sql: ${TABLE}.theInsurer ;;
  }

  dimension: version {
    type: number
    sql: ${TABLE}.Version ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
