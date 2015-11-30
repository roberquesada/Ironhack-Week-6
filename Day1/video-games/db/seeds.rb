# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


tor1 = Tournament.create(name: 'Tournament 1')
tor2 = Tournament.create(name: 'Tournament 2')

player1 = Player.create(name: 'Player 1')
player2 = Player.create(name: 'Player 2')
player3 = Player.create(name: 'Player 3')
player4 = Player.create(name: 'Player 4')


tor1.players << player1
tor1.players << player2
tor1.players << player4

tor2.players << player3
tor2.players << player2
