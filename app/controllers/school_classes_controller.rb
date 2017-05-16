class SchoolClassesController < ApplicationController
  def create
    school_class = SchoolClass.new(params_values(:title, :description))
    school_class.save
    redirect_to school_class
  end

  private

  def params_values(*argv)
    params.require(:school_class).permit(argv)
  end

end
