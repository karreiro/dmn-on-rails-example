json.extract! violation, :id, :driver_id, :violation_type, :speed_limit, :actual_speed, :created_at, :updated_at
json.url violation_url(violation, format: :json)
