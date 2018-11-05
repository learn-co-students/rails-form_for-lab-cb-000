class SchoolClassesController < ApplicationController
	def show
		@schoolClass = SchoolClass.find(params[:id])
	end

	def new
		@schoolClass = SchoolClass.new
	end

	def create
	  @schoolClass = SchoolClass.new(school_class_params(:title, :room_number))
	  @schoolClass.save
	  redirect_to school_class_path(@schoolClass)
	end

	def update
	  @schoolClass = SchoolClass.find(params[:id])
	  @schoolClass.update(school_class_params(:title, :room_number))
    redirect_to school_class_path(@schoolClass)
	end

	def edit
	  @schoolClass = SchoolClass.find(params[:id])
	end

	private

	def school_class_params(*args)
		params.require(:school_class).permit(*args)
	end
end
