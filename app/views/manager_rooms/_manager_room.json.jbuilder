json.extract! manager_room, :id, :first_name, :last_name, :email, :phone, :address, :created_at, :updated_at
json.url manager_room_url(manager_room, format: :json)
