class SchoolClassesController < ApplicationController

  def new

  end

def create
  @schoolclass = SchoolClass.new(schoolclass_params(:title, :number))
  @schoolclass.save
  redirect_to schoolclass_path(@schoolclass)
end


def schoolclass_params(*args)
  params.require(:schoolclass).permit(*args)
end

end
