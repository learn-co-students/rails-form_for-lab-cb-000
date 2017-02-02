class SchoolClassesController < ApplicationController
  def index
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    school_class = SchoolClass.new(school_class_params(:title, :room_number))
    if school_class.save
      redirect_to school_class
    else
      redirect_to new_school_class_path
    end
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    school_class = SchoolClass.new(school_class_params(:title, :room_number))
    if school_class.save
      redirect_to school_class
    else
      redirect_to edit_school_class_path(school_class)
    end
  end

  private
  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end
end
