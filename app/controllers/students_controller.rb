class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student = Student.new
    @student.first_name = params[:student][:first_name]
    @student.last_name = params[:student][:last_name]
    @student.save
    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params(:first_name,:last_name))
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find(params[:id])
  end

  def student_params(*args)
    params.require(:student).permit(*args)
  end
end
