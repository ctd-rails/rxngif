# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Picture.destroy_all

p1 = Picture.new
p1.url = "http://i0.kym-cdn.com/photos/images/newsfeed/000/044/778/hatersgonnacat.jpg?1318992465"
p1.description = "Cat"
p1.favorite = false
p1.save

p2 = Picture.new
p2.url = 'http://i0.kym-cdn.com/photos/images/newsfeed/000/039/080/5008_9c00_420.gif?1318992465'
p2.description = "little kid"
p2.favorite = false
p2.save

p3 = Picture.new
p3.url = "http://i0.kym-cdn.com/photos/images/newsfeed/000/039/078/1257.jpg?1265669527"
p3.description = "eagle"
p3.favorite = true
p3.save


puts "3 pictures were created"
