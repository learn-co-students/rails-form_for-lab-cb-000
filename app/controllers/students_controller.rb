class StudentsController < ApplicationController
  def show
    @student = Student.find_by(params[:id])
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find_by(params[:id])
  end

  def create
    @student = Student.new(post_params(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  def update
    @student = Student.find_by(params[:id])
    @student.update(post_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  private
  def post_params(*args)
    params.require(:student).permit(*args)
  end

end
