class SchoolClassesController < ApplicationController
  before_action :set_school_class, only: [:show, :edit]

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  private

  def set_school_class
    @school_class = SchoolClass.find(params[:id])
  end
end
