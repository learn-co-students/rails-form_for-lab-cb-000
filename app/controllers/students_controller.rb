class StudentsController < ApplicationController
  before_action :set_id, only: [:show, :edit, :update]

  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(params_student(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  def edit
  end

  def update
    @student.update(params_student(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  private

  def set_id
    @student = Student.find(params[:id])
  end

  def params_student(*args)
    params.require(:student).permit(*args)
  end

end
