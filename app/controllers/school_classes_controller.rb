class SchoolClassesController < ApplicationController
  def show
    @school_class = SchoolClass.find_by(id: params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def edit
    @school_class = SchoolClass.find_by(id: params[:id])
  end

  def create
    school_class = SchoolClass.new(post_params(:title, :description))
    school_class.save

    redirect_to school_class
  end

  def update
    school_class = SchoolClass.find_by(id: params[:id])

    school_class.update(post_params(:title, :description))

    redirect_to school_class
  end

  private

  def post_params(*argv)
    params.require(:school_class).permit(argv)
  end

end
