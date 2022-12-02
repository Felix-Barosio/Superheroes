# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "🏕 Seeding Heroes..."


hulk = Hero.create(name: "Bruce Bunner", super_name: "The Hulk")
she_hulk = Hero.create(name: "Jennifer Walters", super_name: "She-Hulk")
thor = Hero.create(name: "Thor Odinson", super_name: "Thor-God of Thunder")
marvel = Hero.create(name: "Carol Danvers", super_name: "Captain Marvel")
captain = Hero.create(name: "Steve Rodgers", super_name: "Captain America")
strange = Hero.create(name: "Dr. Stephen Strange", super_name: "Doctor Strange")
natasha = Hero.create(name: "Natasha Romanoff", super_name: "Black Widow")
stark = Hero.create(name: "Tony Stark", super_name: "Iron Man")
parker = Hero.create(name: "Peter Parker", super_name: "Spider Man")
ant = Hero.create(name: "Scott Lang", super_name: "Ant-Man")
hawk = Hero.create(name: "Clint Barton", super_name: "Hawkeye")


puts "🏕 Seeding Powers..."


strong = Power.create(name: "Super Strong", description: "The ability to have ability to lift, throw and stuff. Caused by gamma radiation overload.")
lightning = Power.create(name: "Manipulate Lightning", description: "The ability to create and manipulate lightning.")
fly = Power.create(name: "Flight", description: "The ability to move through air by generating anti-gravitons thus negate the pull of gravity and fly, usually at incredibly fast speeds.")
arrows = Power.create(name: "Marksman", description: "The ability to shoot arrows at incredible speeds to hit you target.")
combat = Power.create(name: "Fighting", description: "The ability to do combat without having extra-ability.")
smart = Power.create(name: "Super Smart", description: "The ability to use your own intelligence to create gadgets that can be used to help in combat.")
reflex = Power.create(name: "Super Reflex", description: "The ability to react to situations with great speed.")
stamina = Power.create(name: "Super Stamina", description: "The ability to endure great physical stress without tiring.")
shrink = Power.create(name: "Shrinking", description: "The ability to reduce and grow physical size and body at their will with help of suits")
spidy = Power.create(name: "Spidy Ability", description: "The ability to stick to and climb walls and other surfaces, uses self-designed web-shooters allowing them to fire and swing from sticky webs.")
time = Power.create(name: "Space and Time", description: "The ability to manipulate time, space and multiverse.")


puts "🏕 Seeding Hero_Powers..."


HeroPower.create(hero_id: hulk.id, power_id: strong.id, strength: "Strong")
HeroPower.create(hero_id: hulk.id, power_id: smart.id, strength: "Average")
HeroPower.create(hero_id: hulk.id, power_id: stamina.id, strength: "Strong")
HeroPower.create(hero_id: hulk.id, power_id: shrink.id, strength: "Weak")
HeroPower.create(hero_id: she_hulk.id, power_id: strong.id, strength: "Strong")
HeroPower.create(hero_id: she_hulk.id, power_id: stamina.id, strength: "Strong")
HeroPower.create(hero_id: she_hulk.id, power_id: smart.id, strength: "Average")
HeroPower.create(hero_id: she_hulk.id, power_id: spidy.id, strength: "Average")
HeroPower.create(hero_id: thor.id, power_id: lightning.id, strength: "Strong")
HeroPower.create(hero_id: thor.id, power_id: reflex.id, strength: "Weak")
HeroPower.create(hero_id: thor.id, power_id: smart.id, strength: "Average")
HeroPower.create(hero_id: thor.id, power_id: combat.id, strength: "Weak")
HeroPower.create(hero_id: captain.id, power_id: strong.id, strength: "Strong")
HeroPower.create(hero_id: captain.id, power_id: stamina.id, strength: "Strong")
HeroPower.create(hero_id: captain.id, power_id: fly.id, strength: "Weak")
HeroPower.create(hero_id: captain.id, power_id: fly.id, strength: "Weak")
HeroPower.create(hero_id: natasha.id, power_id: combat.id, strength: "Strong")
HeroPower.create(hero_id: natasha.id, power_id: reflex.id, strength: "Strong")
HeroPower.create(hero_id: natasha.id, power_id: smart.id, strength: "Average")
HeroPower.create(hero_id: natasha.id, power_id: fly.id, strength: "weak")
HeroPower.create(hero_id: stark.id, power_id: fly.id, strength: "Average")
HeroPower.create(hero_id: stark.id, power_id: smart.id, strength: "Strong")
HeroPower.create(hero_id: stark.id, power_id: combat.id, strength: "Average")
HeroPower.create(hero_id: stark.id, power_id: shrink.id, strength: "Average")
HeroPower.create(hero_id: stark.id, power_id: time.id, strength: "Average")
HeroPower.create(hero_id: parker.id, power_id: spidy.id, strength: "Strong")
HeroPower.create(hero_id: parker.id, power_id: smart.id, strength: "Strong")
HeroPower.create(hero_id: ant.id, power_id: shrink.id, strength: "Strong")
HeroPower.create(hero_id: ant.id, power_id: reflex.id, strength: "Average")
HeroPower.create(hero_id: ant.id, power_id: strong.id, strength: "Average")
HeroPower.create(hero_id: hawk.id, power_id: arrows.id, strength: "Strong")
HeroPower.create(hero_id: hawk.id, power_id: fly.id, strength: "Weak")
HeroPower.create(hero_id: hawk.id, power_id: combat.id, strength: "Average")
HeroPower.create(hero_id: strange.id, power_id: time.id, strength: "Strong")
HeroPower.create(hero_id: strange.id, power_id: fly.id, strength: "Strong")
HeroPower.create(hero_id: strange.id, power_id: combat.id, strength: "Weak")
HeroPower.create(hero_id: marvel.id, power_id: strong.id, strength: "Strong")
HeroPower.create(hero_id: marvel.id, power_id: fly.id, strength: "Strong")
HeroPower.create(hero_id: marvel.id, power_id: stamina.id, strength: "Strong")
HeroPower.create(hero_id: marvel.id, power_id: spidy.id, strength: "Weak")



puts "✅ Done seeding!"
