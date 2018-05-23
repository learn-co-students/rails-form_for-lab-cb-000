# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
SchoolClass.create(title: "Algebra", room_number: "101")
SchoolClass.create(title: "Geometry", room_number: "121")
SchoolClass.create(title: "Biology", room_number: "141")
SchoolClass.create(title: "Physics", room_number: "161")

Student.create(first_name: "Joe", last_name: "Smith")
Student.create(first_name: "Carl", last_name: "Carlson")
Student.create(first_name: "Brett", last_name: "Michaels")
Student.create(first_name: "Johnny", last_name: "Camper")
