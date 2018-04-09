class StudentsController < ApplicationController

  def new
    # dont really understand why this
    @student = Student.new

  end

  def show
    @student = Student.find(params[:id])

  end

  def edit
    @student = Student.find(params[:id])

  end

  def update
  	  # @post = Post.find(params[:id])
      # @schoolclass = SchoolClass.find(params[:id])
      @student = Student.find(params[:id])


  	  # @post.update(title: params[:title], description: params[:description])
      @student.update(student_params(:first_name, :last_name))
      #
  	  # redirect_to post_path(@post)
      redirect_to student_path(@student)

  	end

  def create
    @student = Student.new(student_params(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  def student_params(*args)
    params.require(:student).permit(*args)
  end

end
