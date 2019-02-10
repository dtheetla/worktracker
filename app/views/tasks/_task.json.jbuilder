json.extract! task, :id, :title, :member, :status, :estimate, :actualEffort, :startDate, :endDate, :notes, :project_id, :created_at, :updated_at
json.url task_url(task, format: :json)
