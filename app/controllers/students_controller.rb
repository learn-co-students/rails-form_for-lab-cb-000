class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit]
  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end
end
