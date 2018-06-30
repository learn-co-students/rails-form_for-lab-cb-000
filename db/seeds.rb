# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def seed_students

  students = ["Veronica Lodge", "Jughead Jones", "Betty Cooper", "Archie Andrews", "Cheryl Blossom"]

  students.shuffle.each do |s|
    first_name = s.split(" ").first
    last_name = s.split(" ").last
    Student.create!(:first_name => first_name, :last_name => last_name)
  end

  p "Created #{Student.count} Students."

end

def seed_school_classes

  def generate_room_number
    r = ""
    r += (Random.new.rand(3)+1).to_s
    2.times{r += (Random.new.rand(8)+1).to_s}
    r.to_i
  end

  classes = ["Calculus", "English", "Spanish", "Visual Arts", "Theater"]

  classes.shuffle.each do |c|
    SchoolClass.create(:title => c, :room_number => generate_room_number)
  end

  p "Created #{SchoolClass.count} School Classes."

end


seed_students
seed_school_classes
