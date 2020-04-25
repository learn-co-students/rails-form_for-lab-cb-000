class StudentsController < ApplicationController 
  
  def show 
    @student = Student.find(params[:id])
  end 
  
   def new 
    @student = Student.new
  end 
  
  def create
        @student = Student.new(params.require(:student))
        @student.save
        redirect_to student_path(@student)
  end 
  
    def edit 
    @student = student.find(params[:id])
  end 
  
  def update
        @student = student.find(params[:id])
        @student.update(params.require(:student))
    @student = student.find(params[:id])
  end 
  
end 