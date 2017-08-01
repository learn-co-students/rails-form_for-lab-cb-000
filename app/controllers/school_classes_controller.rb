class SchoolClassesController < ApplicationController

  def index
    @schoolClasses = SchoolClass.all
    render 'index'
  end

  def show
    @schoolClass = SchoolClass.find(params[:id])
    render 'show'
  end

  def new
    @schoolClass = SchoolClass.new
    render 'new'
  end

  def edit
    if @schoolClass = SchoolClass.find_by(:id => params[:id])
      render 'edit'
    else
      redirect_to school_classes_path
    end
  end

  def create
    schoolClass = SchoolClass.create(permit_params(:title, :room_number))
    redirect_to school_class_path(schoolClass)
  end

  def update
    schoolClass = SchoolClass.find(params[:id])
    schoolClass.update(permit_params(:title, :room_number))
    redirect_to school_class_path(schoolClass)
  end


  private

  def permit_params(*args)
    params.require(:school_class).permit(args)
  end


end
