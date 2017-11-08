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
    @school_class = SchoolClass.new
    @school_class.first_name = params[:first_name]
    @school_class.last_name = params[:last_name]
    @school_class.save
  end

  def edit
  end

  def update
  end


end
