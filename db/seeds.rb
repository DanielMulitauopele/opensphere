require 'faker'

20.times do
  User.create(
    name: Faker::Name.unique.name
  )
end
