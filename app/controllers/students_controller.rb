class StudentsController < ApplicationController

    def show
        @student = Student.find_by(params[:id])
    end


    def new
        @student = Student.new
      end
    
      def create
        @student = Student.new(params.require(:student).permit(:first_name, :last_name))
        @student.save
        redirect_to student_path(@student)
      end
    
      def edit
        @student = Student.find(params[:id])
      end
    
      def update
        @student = Student.find(params[:id])
        @student.update(params.require(:student).permit(:first_name, :last_name))
        redirect_to student_path(@student)
      end

end