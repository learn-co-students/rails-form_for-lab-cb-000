# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
   school_class = SchoolClass.create(title: "High School High", room_number: "304")
   student = Student.create(first_name: "Tyler", last_name: "Bristol")
