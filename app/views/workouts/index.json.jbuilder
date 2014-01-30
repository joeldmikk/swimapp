json.array!(@workouts) do |workout|
  json.extract! workout, :id, :distance, :units
  json.url workout_url(workout, format: :json)
end
