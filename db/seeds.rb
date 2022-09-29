puts "Resetting tables"
Character.destroy_all
Game.destroy_all
User.destroy_all

puts "🌱 Seeding games..."

g1 = Game.create(game_name: "Curse of Strahd")
g2 = Game.create(game_name: "Dragon Heist")
g3 = Game.create(game_name: "Tomb of Annihilation")
g4 = Game.create(game_name: "Lost Mines of Phandelver")

puts "🌱 Seeding users..."

u1 = User.create(username: "socketface", password: "fishbowl")
u2 = User.create(username: "username", password: "password")
u3 = User.create(username: "dndplayer", password: "dndpassword")
u4 = User.create(username: "timtom", password: "fishbowl")
u5 = User.create(username: "player1", password: "password")
u6 = User.create(username: "player2", password: "password")
u7 = User.create(username: "player3", password: "password")
u8 = User.create(username: "player4", password: "password")
u9 = User.create(username: "player5", password: "password")
u10 = User.create(username: "player6", password: "password")
u11 = User.create(username: "player7", password: "password")
u12 = User.create(username: "player8", password: "password")


puts "🌱 Seeding characters..."

c1 = Character.create(name: "Marcus Dairy", race: "Human", class: "", level: 3, game_id: g1.id, user_id: u1.id)
c2 = Character.create(name: "Sawyer Rose", race: "Elf", class: "", level: 8, game_id: g2.id, user_id: u2.id)
c3 = Character.create(name: "Delta India Echo", race: "Elf", class: "", level: 6, game_id: g3.id, user_id: u3.id)
c4 = Character.create(name: "Loren Michael", race: "Human", class: "", level: 5, game_id: g4.id, user_id: u4.id)
c5 = Character.create(name: "Kilo Tango", race: "Dwarf", class: "", level: 5, game_id: g1.id, user_id: u5.id)
c6 = Character.create(name: "Istaea", race: "Halfling", class: "", level: 4, game_id: g2.id, user_id: u6.id)
c7 = Character.create(name: "Clockwork", race: "Elf", class: "", level: 6, game_id: g3.id, user_id: u1.id)
c8 = Character.create(name: "Miss Yitsi", race: "Elf", class: "", level: 5, game_id: g4.id, user_id: u1.id)
c9 = Character.create(name: "Canis Lupis", race: "Gnome", class: "", level: 8, game_id: g1.id, user_id: u2.id)
c10 = Character.create(name: "Pocket Knight", race: "Halfling", class: "", level: 6, game_id: g2.id, user_id: u7.id)
c11 = Character.create(name: "Nova", race: "Dragonborn", class: "", level: 5, game_id: g3.id, user_id: u4.id)
c12 = Character.create(name: "Celeste", race: "Tiefling", class: "", level: 4, game_id: g4.id, user_id: u3.id)


puts "✅ Done seeding!"
