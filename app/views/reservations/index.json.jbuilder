json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :first_name, :last_name, :email, :phone, :notes, :performance_id
  json.url reservation_url(reservation, format: :json)
end
