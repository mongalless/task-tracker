json.extract! task, :id, :task_text, :task_release_date, :task_status, :task_priority, :created_at, :updated_at
json.url task_url(task, format: :json)
