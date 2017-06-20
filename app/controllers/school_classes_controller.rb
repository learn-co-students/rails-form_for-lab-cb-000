require 'pry'
class SchoolClassesController < ApplicationController

  def index
    @school_classes = SchoolClass.all
  end

  def show
    find_school_class(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(school_class_params(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def update
    find_school_class(params[:id])
    @school_class.update(school_class_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  def edit

    find_school_class(params[:id])

  end

  private

  def find_school_class(id)
    @school_class = SchoolClass.find(id)
  end

  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end

end
