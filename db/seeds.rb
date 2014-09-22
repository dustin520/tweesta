# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



kevin = User.create({email: "kevin@gmail.com", first_name: "Kevin", last_name: "Chou"})

tag = kevin.tags.create({hashtags: "coffee"})
# kevin << Tag.create({hashtags: "tea"})