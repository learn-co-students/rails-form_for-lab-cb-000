class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new


  end

  def create
    @student = Student.new(student_params(:first_name, :last_name))
    # @student = Student.new(params.require(:student))
    # @student.first_name = params[:first_name]
    # @student.last_name = params[:last_name]
    @student.save
    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    # @student.update(params.require(:student))
    @student.update(student_params(:first_name, :last_name))
    # @student = Student.new(params.require(:student))
    redirect_to student_path(@student)
  end


  private


  # We pass the permitted fields in as *args;
  # this keeps `post_params` pretty dry while
  # still allowing slightly different behavior
  # depending on the controller action
  def student_params(*args)
    params.require(:student).permit(*args)
  end

end
