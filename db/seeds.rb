# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.create(first_name:"Kenneth", last_name:"Kutschera")
Student.create(first_name:"Micheal", last_name:"Scott")
Student.create(first_name:"Joji", last_name:"Miller")
Student.create(first_name:"Sonny", last_name:"Jones")
Student.create(first_name:"Peter", last_name:"Kutschera")
Student.create(first_name:"Wolf", last_name:"Husky")

SchoolClass.create(title: "Computer Science", room_number: 4)
SchoolClass.create(title: "Chemistry", room_number: 3)
SchoolClass.create(title: "Biology", room_number: 2)
SchoolClass.create(title: "Arts", room_number: 1)
