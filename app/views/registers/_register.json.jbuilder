json.extract! register, :id, :name, :age, :email, :phone, :occupation, :address, :about, :created_at, :updated_at
json.url register_url(register, format: :json)
