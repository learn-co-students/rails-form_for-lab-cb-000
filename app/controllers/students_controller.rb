class StudentsController < ApplicationController
    def index
        @students = Student.all
    end

    def show
        @student = Student.find(params[:id])
    end

    def new
    end

    def create
        Student.create(params[:student])
        redirect_to student_path(Student.last)
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        student = Student.find(params[:id])
        student.update(first_name: params[:student][:first_name]) if !params[:student][:first_name].empty?
        student.update(last_name: params[:student][:last_name]) if !params[:student][:last_name].empty?
        redirect_to student_path(student)
    end
end