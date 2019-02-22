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
  end

end
