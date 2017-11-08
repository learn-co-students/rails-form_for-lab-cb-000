class SchoolClassesController < ApplicationController

  def index
    @school_classes = SchoolClass.all

  end

  def show
    @school_class = SchoolClass.find(params[:id])

    
  end

  def new
  end

  def create
    @student = Student.new
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.save
  end

  def edit
  end

  def update
  end


end
