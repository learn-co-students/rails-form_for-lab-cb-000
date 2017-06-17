class SchoolClassesController < ApplicationController

def index
  @school_classes = SchoolClass.all
end

def create
  @school_class = SchoolClass.new(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
  @school_class.save

  redirect_to school_class_path(@school_class)
end

def show
  @school_class = SchoolClass.find_by_id(params[:id])
end

def new
  @school_class = SchoolClass.new
end

def edit
  @school_class = SchoolClass.find_by_id(params[:id])
end

def update

  @school_class = SchoolClass.find_by_id(params[:id])

  @school_class.update(school_class_params)
  redirect_to school_class_path(@school_class)

end

private

def school_class_params
  params.require(:school_class).permit(:title, :room_number)
end

end
