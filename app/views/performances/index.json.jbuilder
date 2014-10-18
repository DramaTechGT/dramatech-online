json.array!(@performances) do |performance|
  json.extract! performance, :id, :start_time, :end_time, :location, :show
  json.url performance_url(performance, format: :json)
end
