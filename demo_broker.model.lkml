connection: "ctc"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: exception_record_link {
  persist_for: "5 minutes"
}

explore: exceptions {
  persist_for: "5 minutes"
}

explore: files {
  persist_for: "5 minutes"
}

explore: group_record_link {
  persist_for: "5 minutes"
}

explore: groups {
  persist_for: "5 minutes"
}

explore: load_jobs {
  persist_for: "5 minutes"
}

explore: match_jobs {
  persist_for: "5 minutes"
}

explore: records {
  persist_for: "5 minutes"
}

explore: user_audit {
  persist_for: "5 minutes"
}
