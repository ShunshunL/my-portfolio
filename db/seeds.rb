User.create!(
  email: "test@test.com",
  password: "123123",
  password_confirmation: "123123",
  name: "Admin User",
  roles: "site_admin"
)

puts "1 Admin user created"


