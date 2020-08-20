Type.destroy_all
Pokemon.destroy_all
Trainer.destroy_all
Battle.destroy_all
require 'faker'


water = Type.create(name: "Water")
fire =  Type.create(name: "Fire")
grass = Type.create(name: "Grass")
bug =  Type.create(name: "Bug")
flying =  Type.create(name: "Flying")
fighting =   Type.create(name: "Fighting")
electric = Type.create(name: "Electric")
ground =   Type.create(name: "Ground")
ice =   Type.create(name: "Ice")
normal =  Type.create(name: "Normal")
poison = Type.create(name: "Poison")
psychic =  Type.create(name: "Psychic")
rock = Type.create(name: "Rock")





Pokemon.create(type_id: water.id, species: "Squirtle", speed: rand(1..10), defence: rand(1..5), attack: rand(1..10), hp: rand(5..10), image:"https://cdn.bulbagarden.net/upload/3/39/007Squirtle.png")
Pokemon.create(type_id: fire.id, species: "Charizard", speed: rand(1..10), defence: rand(1..5), attack: rand(1..10), hp: rand(5..10), image:"http://www.pngmart.com/files/12/Pokemon-Charizard-PNG-Clipart.png")
Pokemon.create(type_id: grass.id, species: "Bulbasaur", speed: rand(1..10), defence: rand(1..5), attack: rand(1..10), hp: rand(5..10), image:"http://www.pngmart.com/files/11/Pokemon-Bulbasaur-PNG-File.png")
Pokemon.create(type_id: bug.id, species: "Butterfree", speed: rand(1..10), defence: rand(1..5), attack: rand(1..10), hp: rand(5..10), image:"https://img.pngio.com/12-butterfree-by-uraharataichou-on-deviantart-butterfree-png-951_840.png")
Pokemon.create(type_id: flying.id, species: "Pidgeot", speed: rand(1..10), defence: rand(1..5), attack: rand(1..10), hp: rand(5..10), image:"https://cdn.bulbagarden.net/upload/5/57/018Pidgeot.png")
Pokemon.create(type_id: fighting.id, species: "Machamp", speed: rand(1..10), defence: rand(1..5), attack: rand(1..10), hp: rand(5..10), image:"https://img.pngio.com/068-machamp-by-briannabellerose-on-deviantart-machamp-png-662_852.png")
Pokemon.create(type_id: electric.id, species: "Pikachu", speed: rand(1..10), defence: rand(1..5), attack: rand(1..10), hp: rand(5..10), image:"https://cdn.bulbagarden.net/upload/1/17/025Pikachu-Original.png")
Pokemon.create(type_id: ground.id, species: "Cubone", speed: rand(1..10), defence: rand(1..5), attack: rand(1..10), hp: rand(5..10), image:"https://img.pngio.com/cubone-pokken-tournament-wiki-cubone-png-278_311.png")
Pokemon.create(type_id: ice.id, species: "Jynx", speed: rand(1..10), defence: rand(1..5), attack: rand(1..10), hp: rand(5..10), image:"https://pokemon3d.net/wiki/images/e/e2/Jynx.png")
Pokemon.create(type_id: normal.id, species: "Ditto", speed: rand(1..10), defence: rand(1..5), attack: rand(1..10), hp: rand(5..10), image:"https://cdn.bulbagarden.net/upload/thumb/3/36/132Ditto.png/250px-132Ditto.png")
Pokemon.create(type_id: poison.id, species: "Nidoqueen", speed: rand(1..10), defence: rand(1..5), attack: rand(1..10), hp: rand(5..10), image:"https://static.pokemonpets.com/images/monsters-images-800-800/31-Nidoqueen.png")
Pokemon.create(type_id: psychic.id, species: "Mewtwo", speed: rand(1..10), defence: rand(1..5), attack: rand(1..10), hp: rand(5..10), image:"https://vignette.wikia.nocookie.net/ssb/images/d/d3/Mewtwo.png/revision/latest?cb=20200108012317")
Pokemon.create(type_id: rock.id, species: "Onix", speed: rand(1..10), defence: rand(1..5), attack: rand(1..10), hp: rand(5..10), image:"https://pokemon3d.net/wiki/images/b/b2/Onix.png")
Pokemon.create(type_id: normal.id, species: "Meowth", speed: rand(1..10), defence: rand(1..5), attack: rand(1..10), hp: rand(5..10), image:"https://vignette.wikia.nocookie.net/pokemon/images/2/2b/Rocket_Meowth.png/revision/latest/top-crop/width/360/height/450?cb=20120204034930")


trainers = ["Ash", "Gary", "Brock", "Misty", "Jessie", "James", "Cynthia", "Claudia", "Dawn", "Kris","Andrew"]

10.times do
Trainer.create(name: trainers.sample, image:"")
end
