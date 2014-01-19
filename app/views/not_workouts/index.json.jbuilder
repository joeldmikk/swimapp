json.array!(@not_workouts) do |not_workout|
  json.extract! not_workout, :id, :distance, :units, :references
  json.url not_workout_url(not_workout, format: :json)
end
