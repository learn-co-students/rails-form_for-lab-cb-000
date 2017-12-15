class StudentsController < ApplicationController
    def new
        @student = Student.new
    end
    
    def show
       @student = Student.find(params[:id])
    end
    
    def create
       @student = Student.create(student_params)
       redirect_to @student
    end
    
    def edit
       @student = Student.find(params[:id]) 
    end
    
    def update
       @student = Student.find(params[:id])
       @student.update(student_params)
       redirect_to @student
    end
    
    private
    
        def student_params
            params.require(:student).permit(:first_name, :last_name)
        end
    
end