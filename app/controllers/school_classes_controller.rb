class SchoolClassesController < ApplicationController
    def index
        @school_classes = SchoolClass.all
    end

    def show
        @school_class = SchoolClass.find(params[:id])
    end

    def new
    end

    def create
        SchoolClass.create(params[:school_class])
        redirect_to school_class_path(SchoolClass.last)
    end

    def edit
        @school_class = SchoolClass.find(params[:id])
    end

    def update
        school_class = SchoolClass.find(params[:id])
        school_class.update(title: params[:school_class][:title]) if !params[:school_class][:title].empty?
        school_class.update(room_number: params[:school_class][:room_number]) if !params[:school_class][:room_number].empty?
        redirect_to school_class_path(school_class)
    end
end