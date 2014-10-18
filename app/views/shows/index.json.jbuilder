json.array!(@shows) do |show|
  json.extract! show, :id, :name, :description, :opening_date, :closing_date, :company
  json.url show_url(show, format: :json)
end
