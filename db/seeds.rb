Type.destroy_all
Pokemon.destroy_all
Trainer.destroy_all
Battle.destroy_all
require 'faker'

types = []

types << Type.create(name: "Water")
types << Type.create(name: "Fire")
types << Type.create(name: "Grass")
types << Type.create(name: "Bug")
types << Type.create(name: "Flying")
types << Type.create(name: "Fighting")
types << Type.create(name: "Electric")
types << Type.create(name: "Ground")
types << Type.create(name: "Ice")
types << Type.create(name: "Normal")
types << Type.create(name: "Poison")
types << Type.create(name: "Psychic")
types << Type.create(name: "Rock")

ids = types.map {|type| type.id}


10.times do
Pokemon.create(type_id: ids.sample, species: Faker::Games::Pokemon.name, speed: rand(1..10), defence: rand(1..5), attack: rand(1..10), hp: rand(1..10))
end


trainers = ["Red/Ash", "Blue/Gary", "Brock", "Misty", "Jessie", "James", "May", "Lucas", "Dawn", "Nate"]

10.times do
Trainer.create(name: trainers.sample)
end
