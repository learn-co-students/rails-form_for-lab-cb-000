class StudentsController < ApplicationController
  def index
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    student = Student.new(student_params(:first_name, :last_name))
    if student.save
      redirect_to student
    else
      redirect_to new_student_path
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    student = Student.new(student_params(:first_name, :last_name))
    if student.save
      redirect_to student
    else
      redirect_to edit_student_path(student)
    end
  end

  private
  def student_params(*args)
    params.require(:student).permit(*args)
  end
end
