Type.destroy_all
Pokemon.destroy_all
Trainer.destroy_all
Battle.destroy_all
require 'faker'


water = Type.create(name: "Water")
fire = Type.create(name: "Fire")
grass = Type.create(name: "Grass")
bug = Type.create(name: "Bug")
flying = Type.create(name: "Flying")
fighting = Type.create(name: "Fighting")
electric = Type.create(name: "Electric")
ground = Type.create(name: "Ground")
ice = Type.create(name: "Ice")
normal = Type.create(name: "Normal")
poison = Type.create(name: "Poison")
psychic = Type.create(name: "Psychic")
rock = Type.create(name: "Rock")





Pokemon.create(type_id: water.id, species: "Squirtle", speed: rand(1..10), defence: rand(1..5), attack: rand(1..10), hp: rand(5..10), image:"https://cdn.bulbagarden.net/upload/3/39/007Squirtle.png")
Pokemon.create(type_id: fire.id, species: "Charizard", speed: rand(1..10), defence: rand(1..5), attack: rand(1..10), hp: rand(5..10), image:"http://www.pngmart.com/files/12/Pokemon-Charizard-PNG-Clipart.png")
Pokemon.create(type_id: grass.id, species: "Bulbasaur", speed: rand(1..10), defence: rand(1..5), attack: rand(1..10), hp: rand(5..10), image:"http://www.pngmart.com/files/11/Pokemon-Bulbasaur-PNG-File.png")
Pokemon.create(type_id: bug.id, species: "Butterfree", speed: rand(1..10), defence: rand(1..5), attack: rand(1..10), hp: rand(5..10), image:"https://img.pngio.com/12-butterfree-by-uraharataichou-on-deviantart-butterfree-png-951_840.png")
Pokemon.create(type_id: flying.id, species: "Pidgeot", speed: rand(1..10), defence: rand(1..5), attack: rand(1..10), hp: rand(5..10), image:"https://cdn.bulbagarden.net/upload/5/57/018Pidgeot.png")
Pokemon.create(type_id: fighting.id, species: "Machamp", speed: rand(1..10), defence: rand(1..5), attack: rand(1..10), hp: rand(5..10), image:"https://img.pngio.com/068-machamp-by-briannabellerose-on-deviantart-machamp-png-662_852.png")
Pokemon.create(type_id: electric.id, species: "Pikachu", speed: rand(1..10), defence: rand(1..5), attack: rand(1..10), hp: rand(5..10), image:"https://cdn.bulbagarden.net/upload/1/17/025Pikachu-Original.png")
Pokemon.create(type_id: ground.id, species: "Cubone", speed: rand(1..10), defence: rand(1..5), attack: rand(1..10), hp: rand(5..10), image:"https://img.pngio.com/cubone-pokken-tournament-wiki-cubone-png-278_311.png")
Pokemon.create(type_id: ice.id, species: "Jynx", speed: rand(1..10), defence: rand(1..5), attack: rand(1..10), hp: rand(5..10), image:"https://static.pokemonpets.com/images/monsters-images-800-800/2124-Shiny-Jynx.png")
Pokemon.create(type_id: normal.id, species: "Ditto", speed: rand(1..10), defence: rand(1..5), attack: rand(1..10), hp: rand(5..10), image:"https://cdn.bulbagarden.net/upload/thumb/3/36/132Ditto.png/250px-132Ditto.png")
Pokemon.create(type_id: poison.id, species: "Nidoqueen", speed: rand(1..10), defence: rand(1..5), attack: rand(1..10), hp: rand(5..10), image:"https://static.pokemonpets.com/images/monsters-images-800-800/31-Nidoqueen.png")
Pokemon.create(type_id: psychic.id, species: "Mewtwo", speed: rand(1..10), defence: rand(1..5), attack: rand(1..10), hp: rand(5..10), image:"https://vignette.wikia.nocookie.net/ssb/images/d/d3/Mewtwo.png/revision/latest?cb=20200108012317")
Pokemon.create(type_id: rock.id, species: "Onix", speed: rand(1..10), defence: rand(1..5), attack: rand(1..10), hp: rand(5..10), image:"https://pokemon3d.net/wiki/images/b/b2/Onix.png")
Pokemon.create(type_id: normal.id, species: "Meowth", speed: rand(1..10), defence: rand(1..5), attack: rand(1..10), hp: rand(5..10), image:"https://www.uokpl.rs/fpng/f/217-2173750_pokemon-meowth-png.png")
Pokemon.create(type_id: normal.id, species:"Snorlax", speed: rand(1..10), defence: rand(1..5), attack: rand(1..10), hp: rand(5..10), image:"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/8f9c3ba7-babf-4b8c-a4cd-7d54c0dd4ebb/dclyfvn-6caf442b-430c-49c6-bdae-2162bd1c60d3.png/v1/fill/w_864,h_924,strp/143_____snorlax_by_uraharataichou_dclyfvn-pre.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3siaGVpZ2h0IjoiPD0xMDk1IiwicGF0aCI6IlwvZlwvOGY5YzNiYTctYmFiZi00YjhjLWE0Y2QtN2Q1NGMwZGQ0ZWJiXC9kY2x5ZnZuLTZjYWY0NDJiLTQzMGMtNDljNi1iZGFlLTIxNjJiZDFjNjBkMy5wbmciLCJ3aWR0aCI6Ijw9MTAyNCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.M3OjpVt4v5O8LP_5bTt4vXk4FsaAozSfrAkvwcMhmAU")
Pokemon.create(type_id: normal.id, species:"Eevee", speed: rand(1..10), defence: rand(1..5), attack: rand(1..10), hp: rand(5..10), image:"https://www.vippng.com/png/full/243-2436730_this-is-the-shiny-eevee-of-good-fortune.png")



Trainer.create(name:"Ash", image: "http://www.pngmart.com/files/12/Pokemon-Ash-Ketchum-Transparent-PNG.png")
Trainer.create(name:"Gary", image: "https://www.pikpng.com/pngl/b/581-5814314_gary-oak-png-pokemon-gary-png-clipart.png")
Trainer.create(name:"Brock", image: "https://img.pngio.com/image-result-for-pokemon-anime-original-series-brock-brock-brock-pokemon-png-400_973.png")
Trainer.create(name:"Misty", image: "https://www.jing.fm/clipimg/full/6-66438_and-clipped-by-cartoon-clipart-misty-pokemon-png.png")
Trainer.create(name:"Jessie", image: "https://vignette.wikia.nocookie.net/pokemon-and-digimon/images/7/7a/Jessie.png")
Trainer.create(name:"James", image: "https://cdn.bulbagarden.net/upload/thumb/1/19/James_JN.png/159px-James_JN.png")
Trainer.create(name:"Dawn", image: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2b11364d-88a1-48c7-9530-e225cf7aff48/d56jq6m-95a07cfe-f64f-4534-a3ef-53472653adf8.png/v1/fill/w_337,h_600,strp/dawn_in_pokemon_png_by_cutegirlnextdoor_d56jq6m-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3siaGVpZ2h0IjoiPD02MDAiLCJwYXRoIjoiXC9mXC8yYjExMzY0ZC04OGExLTQ4YzctOTUzMC1lMjI1Y2Y3YWZmNDhcL2Q1NmpxNm0tOTVhMDdjZmUtZjY0Zi00NTM0LWEzZWYtNTM0NzI2NTNhZGY4LnBuZyIsIndpZHRoIjoiPD0zMzcifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.39PKbASHajVdIJeH7jbV-yV4BKup1-ZG1DjoFpxUH6Q")
Trainer.create(name:"Kris", image: "https://cdn.bulbagarden.net/upload/thumb/2/25/Goh_JN.png/150px-Goh_JN.png")
Trainer.create(name:"Claudia", image: "https://cdn.bulbagarden.net/upload/3/38/Diamond_Pearl_Cynthia.png")