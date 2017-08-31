class CreateSchoolClasses < ActiveRecord::Migration
	def change	
		create_table :classes do |t|
            t.string :title
            t.integer :room_number

            t.timestamp null: false
		end
	end
end