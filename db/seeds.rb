require 'faker'

20.times do
  Voter.create(
    name: Faker::Name.unique.name
  )
end
