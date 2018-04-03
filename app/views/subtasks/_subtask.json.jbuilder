json.extract! subtask, :id, :subtask_text, :subtask_release_date, :subtask_status, :subtask_priority, :task_id, :created_at, :updated_at
json.url subtask_url(subtask, format: :json)
