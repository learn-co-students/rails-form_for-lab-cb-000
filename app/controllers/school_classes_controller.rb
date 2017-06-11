class SchoolClassesController < ApplicationController
  before_action :set_school_class, only: [:show, :edit, :update]

  def index
    @school_classes = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(post_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  def show
  end

  def edit
  end

  def update
    @school_class.update(post_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  private

  def set_school_class
    @school_class = SchoolClass.find(params[:id])
  end

  def post_params (*args)
    params.require(:school_class).permit(*args)
  end
end
