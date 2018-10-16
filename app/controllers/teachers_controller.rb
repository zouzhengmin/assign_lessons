class TeachersController < ApplicationController

  def index
    @teachers = Teacher.all
  end

  def show
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)
    @teacher.save
    redirect_to teachers_path
  end

  def edit
    @teacher = Teacher.find(params[:id])
  end

  def update
    @teacher = Teacher.find(params[:id])
    @teacher.update(teacher_params)
    redirect_to teachers_path
  end

  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.delete
    redirect_to teachers_path
  end

  private

  def teacher_params
    params.require(:teacher).permit(:name, :age)
  end

end
