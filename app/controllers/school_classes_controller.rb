class SchoolClassesController < ApplicationController

  def new
    @schoolclass = SchoolClass.new

  end

def create
  @schoolclass = SchoolClass.new(schoolclass_params(:title, :number))
  @schoolclass.save
  redirect_to school_class_path(@schoolclass)
end


def schoolclass_params(*args)
  params.require(:school_class).permit(*args)
end

end
