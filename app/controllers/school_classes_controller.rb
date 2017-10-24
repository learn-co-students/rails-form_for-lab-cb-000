class SchoolClassesController < ApplicationController
  def show
    @school_class = SchoolClass.find_by(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def edit
    @school_class = SchoolClass.find_by(params[:id])
  end

  def create
    @school_class = SchoolClass.new(post_params(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def update
    @school_class = SchoolClass.find_by(params[:id])
    @school_class.update(post_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  private
  def post_params(*args)
    params.require(:school_class).permit(*args)
  end


end
