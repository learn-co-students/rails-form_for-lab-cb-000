class StudentsController < ApplicationController

  def index
    @students = Student.all
    render 'index'
  end

  def show
    @student = Student.find(params[:id])
    render 'show'
  end

  def new
    @student = Student.new
    render 'new'
  end

  def create
    student = Student.create(permit_params(:first_name, :last_name))
    redirect_to student_path(student.id)
  end

  def edit
    @student = Student.find(params[:id])
    render 'edit'
  end

  def update
    student = Student.find_by(id: params[:id])
    student.update(permit_params(:first_name, :last_name))
    redirect_to student_path(student.id)
  end

  private

  def permit_params(*args)
    params.require(:student).permit(args)
  end


end
