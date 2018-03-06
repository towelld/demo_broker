view: records {
  sql_table_name: DemoBroker.Records ;;

  dimension: active_status {
    type: string
    sql: case ${TABLE}.ActiveStatus when 0 then 'Unmatched' when 1 then 'Matched' end;;
  }

  dimension: match_status {
    type: string
    sql: case ${TABLE}.ActiveStatus when 0 then 'Unmatched' when 1 then 'Matched' end;;
  }

  dimension: acturis_amount {
    type: number
    sql: ${TABLE}.Acturis_Amount ;;
  }

  dimension: acturis_amount_currency {
    type: string
    sql: ${TABLE}.Acturis_AmountCurrency ;;
  }

  dimension: acturis_brokerage {
    type: string
    sql: ${TABLE}.Acturis_Brokerage ;;
  }

  dimension: acturis_business_event {
    type: string
    sql: ${TABLE}.Acturis_Business_Event ;;
  }

  dimension: acturis_client_amount {
    type: number
    sql: ${TABLE}.Acturis_Client_Amount ;;
  }

  dimension: acturis_client_amount_currency {
    type: string
    sql: ${TABLE}.Acturis_Client_AmountCurrency ;;
  }

  dimension: acturis_client_outstanding {
    type: number
    sql: ${TABLE}.Acturis_Client_Outstanding ;;
  }

  dimension: acturis_client_outstanding_currency {
    type: string
    sql: ${TABLE}.Acturis_Client_OutstandingCurrency ;;
  }

  dimension: acturis_insurer_account {
    type: string
    sql: ${TABLE}.Acturis_Insurer_Account ;;
  }

  dimension: acturis_insurer_policy_no_4_5 {
    type: string
    sql: ${TABLE}.Acturis_Insurer_Policy_No_4_5 ;;
  }

  dimension: acturis_insurer_policy_no_7_14 {
    type: string
    sql: ${TABLE}.Acturis_Insurer_Policy_No_7_14 ;;
  }

  dimension: acturis_insurer_ref {
    type: string
    sql: ${TABLE}.Acturis_Insurer_Ref ;;
  }

  dimension_group: acturis_invoice {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Acturis_Invoice_Date ;;
  }

  dimension: acturis_outstanding_amount {
    type: number
    sql: ${TABLE}.Acturis_Outstanding_Amount ;;
  }

  dimension: acturis_outstanding_amount_currency {
    type: string
    sql: ${TABLE}.Acturis_Outstanding_AmountCurrency ;;
  }

  dimension: acturis_primary_client_ref {
    type: string
    sql: ${TABLE}.Acturis_Primary_Client_Ref ;;
  }

  dimension: acturis_product_target {
    type: string
    sql: ${TABLE}.Acturis_Product_Target ;;
  }

  dimension: acturis_version_ref {
    type: string
    sql: ${TABLE}.Acturis_Version_Ref ;;
  }

  dimension: allow_purge {
    type: string
    sql: ${TABLE}.AllowPurge ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.Amount ;;
  }

  dimension: amount_currency {
    type: string
    sql: ${TABLE}.AmountCurrency ;;
  }

  dimension: assigned_to {
    type: string
    sql: isnull(substring(${TABLE}.AssignedTo,charindex('.',${TABLE}.AssignedTo)+1,200),'Unassigned');;
  }

  dimension: business_key {
    type: string
    sql: ${TABLE}.BusinessKey ;;
  }

  dimension: client_outstanding {
    type: string
    sql: ${TABLE}.Client_Outstanding ;;
  }

  dimension: credit_status {
    type: string
    sql: ${TABLE}.Credit_Status ;;
  }

  dimension: date_time_created {
    type: string
    sql: ${TABLE}.DateTimeCreated ;;
  }

  dimension: do_not_purge_before {
    type: string
    sql: ${TABLE}.DoNotPurgeBefore ;;
  }

  dimension_group: effective {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Effective_Date ;;
  }

  dimension: entity {
    type: string
    sql: ${TABLE}.Entity ;;
  }

  dimension: has_comments {
    type: string
    sql: ${TABLE}.HasComments ;;
  }

  dimension: insurer_account_ref {
    type: string
    sql: ${TABLE}.Insurer_Account_Ref ;;
  }

  dimension: insurer_adj_comm {
    type: number
    sql: ${TABLE}.Insurer_Adj_Comm ;;
  }

  dimension: insurer_adj_comm_currency {
    type: string
    sql: ${TABLE}.Insurer_Adj_CommCurrency ;;
  }

  dimension: insurer_adj_gross {
    type: number
    sql: ${TABLE}.Insurer_Adj_Gross ;;
  }

  dimension: insurer_adj_gross_currency {
    type: string
    sql: ${TABLE}.Insurer_Adj_GrossCurrency ;;
  }

  dimension: insurer_adj_net {
    type: number
    sql: ${TABLE}.Insurer_Adj_Net ;;
  }

  dimension: insurer_adj_net_currency {
    type: string
    sql: ${TABLE}.Insurer_Adj_NetCurrency ;;
  }

  dimension: insurer_amount {
    type: number
    sql: ${TABLE}.Insurer_Amount ;;
  }

  dimension: insurer_amount_currency {
    type: string
    sql: ${TABLE}.Insurer_AmountCurrency ;;
  }

  dimension: insurer_broker_status {
    type: string
    sql: ${TABLE}.Insurer_Broker_Status ;;
  }

  dimension: insurer_ccy {
    type: string
    sql: ${TABLE}.Insurer_Ccy ;;
  }

  dimension: insurer_comm {
    type: number
    sql: ${TABLE}.Insurer_Comm ;;
  }

  dimension: insurer_comm_currency {
    type: string
    sql: ${TABLE}.Insurer_CommCurrency ;;
  }

  dimension: insurer_fee {
    type: number
    sql: ${TABLE}.Insurer_Fee ;;
  }

  dimension: insurer_fee_currency {
    type: string
    sql: ${TABLE}.Insurer_FeeCurrency ;;
  }

  dimension: insurer_gross {
    type: number
    sql: ${TABLE}.Insurer_Gross ;;
  }

  dimension: insurer_gross_currency {
    type: string
    sql: ${TABLE}.Insurer_GrossCurrency ;;
  }

  dimension_group: insurer_invoice_due {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Insurer_Invoice_Due_Date ;;
  }

  dimension: insurer_ipt {
    type: number
    sql: ${TABLE}.Insurer_IPT ;;
  }

  dimension: insurer_iptcurrency {
    type: string
    sql: ${TABLE}.Insurer_IPTCurrency ;;
  }

  dimension: insurer_name {
    type: string
    sql: ${TABLE}.Insurer_Name ;;
  }

  dimension: insurer_net {
    type: number
    sql: ${TABLE}.Insurer_Net ;;
  }

  dimension: insurer_net_currency {
    type: string
    sql: ${TABLE}.Insurer_NetCurrency ;;
  }

  dimension: insurer_paid {
    type: string
    sql: ${TABLE}.Insurer_Paid ;;
  }

  dimension: insurer_payment_amount {
    type: number
    sql: ${TABLE}.Insurer_Payment_Amount ;;
  }

  dimension: insurer_payment_amount_currency {
    type: string
    sql: ${TABLE}.Insurer_Payment_AmountCurrency ;;
  }

  dimension: insurer_policy_no {
    type: string
    sql: ${TABLE}.Insurer_Policy_No ;;
  }

  dimension: insurer_policy_no_clean {
    type: string
    sql: ${TABLE}.Insurer_Policy_No_Clean ;;
  }

  dimension: insurer_policy_no_extract_1 {
    type: string
    sql: ${TABLE}.Insurer_Policy_No_Extract_1 ;;
  }

  dimension: insurer_policy_no_extract_2 {
    type: string
    sql: ${TABLE}.Insurer_Policy_No_Extract_2 ;;
  }

  dimension: insurer_policy_no_extract_3 {
    type: string
    sql: ${TABLE}.Insurer_Policy_No_Extract_3 ;;
  }

  dimension: insurer_policy_ref {
    type: string
    sql: ${TABLE}.Insurer_Policy_Ref ;;
  }

  dimension: insurer_receivable_ref {
    type: string
    sql: ${TABLE}.Insurer_Receivable_Ref ;;
  }

  dimension: insurer_trans_type {
    type: string
    sql: ${TABLE}.Insurer_Trans_Type ;;
  }

  dimension: insurer_vat {
    type: number
    sql: ${TABLE}.Insurer_VAT ;;
  }

  dimension: insurer_vatcurrency {
    type: string
    sql: ${TABLE}.Insurer_VATCurrency ;;
  }

  dimension: last_action_by {
    type: string
    sql: ${TABLE}.LastActionBy ;;
  }

  dimension: last_action_date {
    type: string
    sql: ${TABLE}.LastActionDate ;;
  }

  dimension: last_action_id {
    type: number
    sql: ${TABLE}.LastActionId ;;
  }

  dimension: last_action_type {
    type: number
    sql: ${TABLE}.LastActionType ;;
  }

  dimension: last_updated {
    type: string
    sql: ${TABLE}.LastUpdated ;;
  }

  dimension: latest_comment {
    type: string
    sql: ${TABLE}.LatestComment ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  dimension: policy_holder {
    type: string
    sql: ${TABLE}.Policy_Holder ;;
  }

  dimension: policy_holder_scrubbed {
    type: string
    sql: ${TABLE}.Policy_Holder_Scrubbed ;;
  }

  dimension: post_code {
    type: string
    sql: ${TABLE}.Insurer_Policy_Ref ;;
  }

  dimension: query_category {
    type: string
    sql: case ${TABLE}.Query_Category when 'CannotTrace' then 'Cannot Trace'
                                      when 'ClientOutstanding' then 'Client Outstanding'
                                      when 'CommRate' then 'Commission Rate'
                                      when 'ContactBroker' then 'Contact Broker'
                                      when 'ContactInsurer' then 'Contact Insurer'
                                      when 'LapsedPolicy' then 'Lapsed Policy'
                                      when 'NotDue' then 'Not Due'
                                      when 'NotInvoiced' then 'Not Invoiced'
                                      when 'PaidPreviousMonth' then 'Paid Previous Month'
                                      when 'PayMethodBroker' then 'Pay Method Broker'
                                      when 'PayMethodInsurer' then 'Pay Method Insurer'
                                      when 'PremiumQuery' then 'Premium Query'
         end;;
  }

  dimension: query_method {
    type: string
    sql: ${TABLE}.Query_Method ;;
  }

  dimension: query_status {
    type: string
    sql: ${TABLE}.Query_Status ;;
  }

  dimension: query_with {
    type: string
    sql: ${TABLE}.Query_With ;;
  }

  dimension: side {
    type: string
    sql: ${TABLE}.Side ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.System ;;
  }

  dimension_group: task_due {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Task_Due_Date ;;
  }

  dimension: transaction_status {
    type: number
    sql: ${TABLE}.TransactionStatus ;;
  }

  dimension: ultimate_parent_pk {
    type: string
    sql: ${TABLE}.UltimateParentPk ;;
  }



  measure: count {
    type: count
    drill_fields: [broker_record*]
  }
  measure: count_percent {
    type: percent_of_total
    sql: ${count};;
    drill_fields: [broker_record*]
  }

  measure: sum_amount {
    type: sum
    sql: ${amount};;
    value_format_name: decimal_2
    drill_fields: [broker_record*]
    html: {% if records.Amount._value < 0 %}
                <font color="#df5555">{{ rendered_value }}</font>
          {% else %}
                <font color="#000000">{{ rendered_value }}</font>
          {% endif %} ;;
  }
  measure: average_amount {
    type: average
    sql: ${amount};;
    drill_fields: [broker_record*]
  }
  measure: count_matched {
    type: sum
    sql: ${TABLE}.ActiveStatus;;
    drill_fields: [broker_record*]
  }

  set: broker_record {
    fields: [
      system,
      entity,
      policy_holder,
      amount,
      amount_currency,
      effective_date,
      insurer_policy_no
    ]

}
}
