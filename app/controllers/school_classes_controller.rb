class SchoolClassesController < ApplicationController
  def index
    @school_classes = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new # We created this so that our form_for action helper has a blank instance
  end

  def create
    @school_class = SchoolClass.create( school_class_params(:title, :room_number) )
    redirect_to school_class_path(@school_class)
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update( school_class_params(:title, :room_number)  )
    redirect_to school_class_path(@school_class)
  end

  private

  def school_class_params(*args)
    params.require(:school_class).permit(*args) # This way we can specify which arguments we'd like to permit
  end
end
