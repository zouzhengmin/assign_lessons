class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(Student_params)
    @student.save
    redirect_to students_path
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to students_path
  end

  def destroy
    @student = Student.find(params[:id])
    @student.delete
    redirect_to students_path
  end

  private

  def student_params
    params.require(:student).permit(:name, :age)
  end

end
