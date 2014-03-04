# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Game.create({name: "'Pillar"})
Game.create({name: "Asteroids"})

Score.create({game_id: 1, player: "Ned", value: 1000, difficulty: "monarch"})
Score.create({game_id: 1, player: "Kush", value: 900, difficulty: "monarch"})
Score.create({game_id: 1, player: "Simon", value: 800, difficulty: "monarch"})
Score.create({game_id: 1, player: "Buck", value: 700, difficulty: "luna"})
Score.create({game_id: 1, player: "Flarnie", value: 700, difficulty: "luna"})
Score.create({game_id: 1, player: "CJ", value: 700, difficulty: "luna"})
Score.create({game_id: 1, player: "Ryan", value: 700, difficulty: "luna"})
Score.create({game_id: 1, player: "Jeff", value: 700, difficulty: "luna"})
Score.create({game_id: 1, player: "Steve", value: 200, difficulty: "swallowtail"})
Score.create({game_id: 1, player: "Dave", value: 100, difficulty: "swallowtail"})

Score.create({game_id: 2, player: "Roadrunner", value: 10000, level: 10})
Score.create({game_id: 2, player: "Bugs", value: 9000, level: 9})
Score.create({game_id: 2, player: "Daffy", value: 8000, level: 8})
Score.create({game_id: 2, player: "Porky", value: 7000, level: 7})
Score.create({game_id: 2, player: "Taz", value: 6000, level: 6})
Score.create({game_id: 2, player: "Sylvester", value: 5000, level: 5})
Score.create({game_id: 2, player: "Marvin", value: 4000, level: 4})
Score.create({game_id: 2, player: "Sam", value: 3000, level: 3})
Score.create({game_id: 2, player: "Tweety", value: 2000, level: 2})
Score.create({game_id: 2, player: "Elmer", value: 1000, level: 1})
Score.create({game_id: 2, player: "Elvis", value: 900, level: 1})
Score.create({game_id: 2, player: "Elvis", value: 800, level: 1})
Score.create({game_id: 2, player: "Elvis", value: 700, level: 1})
Score.create({game_id: 2, player: "Elvis", value: 600, level: 1})
Score.create({game_id: 2, player: "Elvis", value: 500, level: 1})
Score.create({game_id: 2, player: "Elvis", value: 400, level: 1})
Score.create({game_id: 2, player: "Elvis", value: 300, level: 1})
Score.create({game_id: 2, player: "Elvis", value: 200, level: 1})
Score.create({game_id: 2, player: "Elvis", value: 100, level: 1})
Score.create({game_id: 2, player: "Elvis", value: 0, level: 1})