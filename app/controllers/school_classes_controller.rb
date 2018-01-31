class SchoolClassesController < ApplicationController
  def index
    @schoolclasses = Schoolclass.all
  end

  def show
    @schoolclass = Schoolclass.find(params[:id])
  end

  def new
  end

  def create
    @schoolclass = Schoolclass.create(student_params)
    redirect_to schoolclass_path(@schoolclass)
  end

  def update
    @schoolclass = Schoolclass.find(params[:id])
    @schoolclass.update(student_params)
    redirect_to schoolclass_path(@schoolclass)
  end

  private
  def schoolclass_params
    params.require(:schoolclass).permit(:first_name, :last_name)
  end
end
