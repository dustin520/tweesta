# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



kevin = User.create({email: "kevin@gmail.com", first_name: "Kevin", last_name: "Chou", password: "123456"})
dustin = User.create({email: "dustin@gmail.com", first_name: "Dustin", last_name: "Yu", password: "123456"})

tag = kevin.tags.create({hashtags: "coffee"})
tag2 = kevin.tags.create({hashtags: "coke"})
# kevin << Tag.create({hashtags: "tea"})
tag3 = dustin.tags.create({hashtags: "tea"})
tag4 = dustin.tags.create({hashtags: "sprite"})
