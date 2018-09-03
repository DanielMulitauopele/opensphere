require 'faker'

20.times do
  Candidate.create(
    name: Faker::Name.unique.name
  )
end
