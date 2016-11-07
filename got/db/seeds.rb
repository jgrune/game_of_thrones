# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

House.destroy_all
Character.destroy_all

stark = House.create!(name: "Stark", img_url: "http://vignette4.wikia.nocookie.net/gameofthrones/images/8/8a/House-Stark-Main-Shield.PNG/revision/20160312130531", motto: "Winter is Coming", region: "The North")

lannister = House.create!(name: "Lannister", img_url: "http://vignette3.wikia.nocookie.net/gameofthrones/images/8/8a/House-Lannister-Main-Shield.PNG/revision/latest?cb=20151207184048", motto: "The Lannisters Always Pay Their Debts", region: "Kings Landing")

bolton = House.create!(name: "Bolton", img_url: "http://vignette1.wikia.nocookie.net/gameofthrones/images/d/dd/House-Bolton-Main-Shield.PNG/revision/latest/scale-to-width-down/393?cb=20160312000641", motto: "A Naked Man Has Few Secrets; A Flayed Man, None", region: "The North")

targaryen = House.create!(name: "Targaryen", img_url: "http://vignette2.wikia.nocookie.net/gameofthrones/images/4/43/House-Targaryen-Main-Shield.PNG/revision/latest?cb=20151209185148", motto: "Fire and Blood", region: "Bay of Dragons")

stark.characters.create([
  {name: "Jon Snow", age: rand(50), img_url: "http://www.pngall.com/wp-content/uploads/2016/05/Jon-Snow-PNG-File.png"},
  {name: "Sansa Stark", age: rand(50), img_url: "http://img10.deviantart.net/753a/i/2015/071/d/6/sansa_stark__render__by_devilmisao-d8lf3wd.png"},
  {name: "Arya Stark", age: rand(50), img_url: "http://65.media.tumblr.com/85c68da05d6e625c933e0028c22930b8/tumblr_n8gdqnZRgG1rxkqbso1_500.png"}
  ])

lannister.characters.create([
  {name: "Jaime Lannister", age: rand(50), img_url: "http://pixel.nymag.com/imgs/daily/vulture/2013/04/15/15-nikolaj-coster-waldau-silo-2.w245.h368.png"},
  {name: "Cersei Lannister", age: rand(50), img_url: "http://orig13.deviantart.net/aed6/f/2016/154/8/8/cersei_lannister_game_of_thrones_png_1_by_isobel_theroux-da4tyld.png"},
  {name: "Tyrion Lannister", age: rand(50), img_url: "http://vignette4.wikia.nocookie.net/vsbattles/images/1/14/Tyrion_lannister_render_by_zoisitesarugaki-d7ktsbc.png/revision/latest?cb=20160213073916"}
  ])

bolton.characters.create([
  {name: "Ramsay Bolton", age: rand(50), img_url: "http://vignette2.wikia.nocookie.net/gameofthrones/images/5/51/Ramsay_Bolton-S05E10.png/revision/latest?cb=20150617120152"},
  {name: "Roose Bolton", age: rand(50), img_url: "hhttp://vignette1.wikia.nocookie.net/gameofthrones/images/6/62/Roose_Bolton_Season5.png/revision/latest?cb=20150131122254"}
  ])

targaryen.characters.create([
  {name: "Daenerys Targaryen", age: rand(50), img_url: "http://img12.deviantart.net/5bb4/i/2016/090/8/c/daenerys_targaryen_game_of_thrones_png_3_by_isobel_theroux-d9x8ozg.png"},
  {name: "Viserys Targaryen", age: rand(50), img_url: "http://vignette1.wikia.nocookie.net/storywikmaine/images/1/13/Viserys_Targaryen.png/revision/latest?cb=20140415211234"}
  ])
