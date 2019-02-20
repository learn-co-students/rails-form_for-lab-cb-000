class SchoolClassesController < ApplicationController
  before_action :set_id, only: [:show, :edit, :update]

  def index
    @school_class = SchoolClass.all
  end

  def show
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(params_school_class(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def edit
  end

  def update
    @school_class.update(params_school_class(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  private

  def set_id
    @school_class = SchoolClass.find(params[:id])
  end

  def params_school_class(*args)
    params.require(:school_class).permit(*args)
  end
end
