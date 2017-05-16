class StudentsController < ApplicationController
  def create
    student = Student.new(params_values(:first_name, :last_name))
    student.save

    redirect_to student
  end

  private

  def params_values(*argv)
    params.require(:student).permit(argv)
  end
end
