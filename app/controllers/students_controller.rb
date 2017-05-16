class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def show
    @student = Student.find_by(id: params[:id])
  end

  def edit
    @student = Student.find_by(id: params[:id])
  end

  def create
    student = Student.new(params_values(:first_name, :last_name))
    student.save

    redirect_to student
  end

  def update
    student = Student.find_by(id: params[:id])
    student.update(params_values(:first_name, :last_name))
    student.save

    redirect_to student
  end

  private

  def params_values(*argv)
    params.require(:student).permit(argv)
  end
end
