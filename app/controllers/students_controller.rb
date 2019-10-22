class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(params.require(:student).permit(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find_or_create_by(id: params[:id])
    @student.update(params.require(:student).permit(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find(params[:id])
  end

end
