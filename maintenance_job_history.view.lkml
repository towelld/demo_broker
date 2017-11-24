view: maintenance_job_history {
  sql_table_name: DemoBroker.MaintenanceJobHistory ;;

  dimension: finished {
    type: string
    sql: ${TABLE}.Finished ;;
  }

  dimension: job_id {
    type: string
    sql: ${TABLE}.JobId ;;
  }

  dimension: started {
    type: string
    sql: ${TABLE}.Started ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.Status ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.Username ;;
  }

  measure: count {
    type: count
    drill_fields: [username]
  }
}
