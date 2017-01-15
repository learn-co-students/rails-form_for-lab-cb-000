class SchoolClassesController < ApplicationController

  def new
    @school_class = SchoolClass.new
  end

  def index
    @schoolclasses = SchoolClass.all
  end

  def create
    @schoolclass = SchoolClass.new(post_params(:title, :room_number))
    @schoolclass.save
    redirect_to school_class_path(@schoolclass)
  end

  def show
    @schoolclass = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @schoolclass = SchoolClass.find(params[:id])
    @schoolclass.update(post_params(:title, :room_number))
    redirect_to school_class_path(@schoolclass)
  end

  private

  def post_params(*args)
    params.require(:school_class).permit(*args)
  end


end