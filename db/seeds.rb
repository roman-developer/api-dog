require 'faker'

5.times do
  User.find_or_create_by(email: Faker::Internet.email)
end
