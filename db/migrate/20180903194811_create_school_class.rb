class CreateSchoolClass < ActiveRecord::Migration
  def change
    create_table :school_classes do |sc|
    	sc.string :title 
    	sc.integer :room_number
    end
  end
end
