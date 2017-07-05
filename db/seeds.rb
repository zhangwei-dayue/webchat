# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Auto create 20 users"

create_account = for i in 1..20 do
  User.create([username: "測試用帳號-#{i}", email: "example#{i}@test.com", password: '12345678', password_confirmation: '12345678'])
end
