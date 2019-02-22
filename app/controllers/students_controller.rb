require 'pry'

class StudentsController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  def index
    @students = Student.all

  end

  def new
  end

  def create
    @student = Student.create(first_name: params[:student_first_name], last_name: params[:student_last_name])
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    # binding.pry
    @student = Student.find(params[:id])
    @student.update(params.require(:student))
    @student.save
    redirect_to student_path(@student)
  end

end
