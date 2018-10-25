# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

artist = Artist.create(name: 'Journey')
song_1 = artist.songs.create(title: "Don't Stop Believin'", length: 303, play_count: 543)
song_2 = artist.songs.create(title: "Back in Black", length: 401, play_count: 432)
