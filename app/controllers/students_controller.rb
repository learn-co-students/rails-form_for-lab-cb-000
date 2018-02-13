class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(student_params(:first_name, :last_name))
    @student.save

    redirect_to student_path(@student)
  end

  private

  def student_params(*args)
    params.require(:student).permit(*args)
  end
end
