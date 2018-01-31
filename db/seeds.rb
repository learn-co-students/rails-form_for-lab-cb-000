# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
classes = [
  {title: "BS 101",
  room_number: 459},
  {title: "BS 102",
  room_number: 459},
  {title: "BS 103",
  room_number: 459},
  {title: "BS 104",
  room_number: 459}
]

classes.each do |klass|
  SchoolClass.create(klass)
end
