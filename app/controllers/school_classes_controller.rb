class SchoolClassesController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  def index
    @school_classes = SchoolClass.all

  end

  def new
  end

  def create
    @school_class =  SchoolClass.create(title: params[:school_class_title], room_number: params[:school_class_room_number].to_i)
    redirect_to school_class_path(@school_class)
  end

  def show
    @school_class =  SchoolClass.find(params[:id])
  end

  def edit
    @school_class =  SchoolClass.find(params[:id])
  end

  def update
    # binding.pry
    @school_class =  SchoolClass.find(params[:id])
    @school_class.update(params.require(:school_class))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end
end
