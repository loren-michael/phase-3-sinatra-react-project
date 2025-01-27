puts "Resetting tables"
Character.destroy_all
Game.destroy_all
User.destroy_all

puts "🌱 Seeding games..."

g1 = Game.create(game_name: "Curse of Strahd", img_url: "https://pbs.twimg.com/profile_images/734424981187092481/F70JnbDW_400x400.jpg")
g2 = Game.create(game_name: "Dragon Heist", img_url: "https://styles.redditmedia.com/t5_2vbgl/styles/communityIcon_c329v6c343791.png")
g3 = Game.create(game_name: "Tomb of Annihilation", img_url: "https://a.thumbs.redditmedia.com/Y78an_YcpDyfFf-Yu45zpfc_fgPYidK_kAhmdzfIV_0.png")
g4 = Game.create(game_name: "Lost Mines of Phandelver", img_url: "https://www.dndbeyond.com/attachments/2/730/lmopcover.jpg")

puts "🌱 Seeding users..."

u1 = User.create(username: "player1")
u2 = User.create(username: "player2")
u3 = User.create(username: "player3")
u4 = User.create(username: "player4")



puts "🌱 Seeding characters..."

c1 = Character.create(name: "Marcus Dairy", race: "Human", character_class: "Druid", icon: "https://www.dndbeyond.com/avatars/10/3/636336417152216156.jpeg", level: 3, game_id: g1.id, user_id: u1.id)
c2 = Character.create(name: "Sawyer Rose", race: "Elf", character_class: "Sorcerer", icon: "https://www.dndbeyond.com/avatars/10/9/636336417773983369.jpeg", level: 8, game_id: g2.id, user_id: u2.id)
c3 = Character.create(name: "Delta India Echo", race: "Elf", character_class: "Rogue", icon: "https://www.dndbeyond.com/avatars/10/8/636336417681318097.jpeg", level: 6, game_id: g3.id, user_id: u3.id)
c4 = Character.create(name: "Loren Michael", race: "Human", character_class: "Cleric", icon: "https://www.dndbeyond.com/avatars/10/2/636336417054144618.jpeg", level: 5, game_id: g4.id, user_id: u4.id)
c5 = Character.create(name: "Kilo Tango", race: "Dwarf", character_class: "Barbarian", icon: "https://www.dndbeyond.com/avatars/10/0/636336416778392507.jpeg", level: 5, game_id: g1.id, user_id: u1.id)
c6 = Character.create(name: "Istaea", race: "Halfling", character_class: "Warlock", icon: "https://www.dndbeyond.com/avatars/10/12/636336422983071263.jpeg", level: 4, game_id: g2.id, user_id: u2.id)
c7 = Character.create(name: "Clockwork", race: "Elf", character_class: "Bard", icon: "https://www.dndbeyond.com/avatars/10/1/636336416923635770.jpeg", level: 6, game_id: g3.id, user_id: u3.id)
c8 = Character.create(name: "Miss Yitsi", race: "Elf", character_class: "Bard", icon: "https://www.dndbeyond.com/avatars/10/1/636336416923635770.jpeg", level: 5, game_id: g4.id, user_id: u4.id)
c9 = Character.create(name: "Canis Lupis", race: "Gnome", character_class: "Paladin", icon: "https://www.dndbeyond.com/avatars/10/6/636336417477714942.jpeg", level: 8, game_id: g1.id, user_id: u1.id)
c10 = Character.create(name: "Pocket Knight", race: "Halfling", character_class: "Fighter", icon: "https://www.dndbeyond.com/avatars/10/4/636336417268495752.jpeg", level: 6, game_id: g2.id, user_id: u2.id)
c11 = Character.create(name: "Nova", race: "Dragonborn", character_class: "Monk", icon: "https://www.dndbeyond.com/avatars/10/5/636336417372349522.jpeg", level: 5, game_id: g3.id, user_id: u3.id)
c12 = Character.create(name: "Celeste", race: "Tiefling", character_class: "Wizard", icon: "https://www.dndbeyond.com/avatars/10/11/636336418370446635.jpeg", level: 4, game_id: g4.id, user_id: u4.id)


puts "✅ Done seeding!"
