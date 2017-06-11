class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update]

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(post_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def show
  end

  def edit
  end

  def update
    @student = Student.create(post_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def post_params (*args)
    params.require(:student).permit(*args)
  end
end
